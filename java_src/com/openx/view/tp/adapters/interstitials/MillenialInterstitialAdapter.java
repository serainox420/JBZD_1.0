package com.openx.view.tp.adapters.interstitials;

import android.app.Activity;
import android.content.Context;
import android.util.Log;
import com.millennialmedia.android.MMAd;
import com.millennialmedia.android.MMException;
import com.millennialmedia.android.MMInterstitial;
import com.millennialmedia.android.RequestListener;
import com.openx.common.utils.logger.OXLog;
import com.openx.errors.UnknownError;
import com.openx.view.tp.adapters.AdapterBase;
import com.openx.view.tp.chain.SDK;
import com.openx.view.tp.chain.SDKAdEventsListener;
import com.openx.view.tp.chain.parser.ChainItem;
/* loaded from: classes3.dex */
public class MillenialInterstitialAdapter extends AdapterBase implements RequestListener {
    private final String TAG;
    private MMInterstitial interstitial;

    public MillenialInterstitialAdapter(Context context, SDKAdEventsListener sDKAdEventsListener) {
        super(context, sDKAdEventsListener);
        this.TAG = "MillenialInterstitialAdapter";
    }

    @Override // com.openx.view.tp.adapters.AdapterBase
    public void show() {
        super.show();
        this.interstitial.display();
    }

    @Override // com.openx.view.tp.adapters.AdapterBase
    public void loadAd(ChainItem chainItem) {
        this.interstitial = new MMInterstitial((Activity) this.context);
        this.interstitial.setApid(chainItem.sdkParams.dictionary.get("apid"));
        this.interstitial.setListener(this);
        this.interstitial.fetch();
    }

    public void MMAdOverlayLaunched(MMAd mMAd) {
        OXLog.debug("MillenialInterstitialAdapter", "Millennial Media Ad (" + mMAd.getApid() + ") Overlay Launched");
    }

    public void MMAdRequestIsCaching(MMAd mMAd) {
        OXLog.debug("MillenialInterstitialAdapter", "Millennial Media Ad (" + mMAd.getApid() + ") caching started");
    }

    public void requestCompleted(MMAd mMAd) {
        OXLog.debug("MillenialInterstitialAdapter", "Millennial Media Ad (" + mMAd.getApid() + ") caching completed successfully.");
        if (this.interstitial.isAdAvailable()) {
            Log.i("MillennialMediaSDK", "Millennial Media Ad (" + mMAd.getApid() + ") displaying.");
            if (this.listener != null) {
                this.listener.onAdDidLoad(SDK.Millenial, this.interstitial);
            }
        }
    }

    public void requestFailed(MMAd mMAd, MMException mMException) {
        OXLog.debug("MillenialInterstitialAdapter", String.format("Millennial Media Ad (" + mMAd.getApid() + ") fetch request failed with error: %d %s.", Integer.valueOf(mMException.getCode()), mMException.getMessage()));
        if (this.listener != null) {
            if (mMException.getCode() == 17) {
                this.listener.onAdDidLoad(SDK.Millenial, this.interstitial);
            } else {
                this.listener.onAdFailedToLoad(SDK.Millenial, new UnknownError(Integer.toString(mMException.getCode()) + " : " + mMException.getMessage()));
            }
        }
    }

    public void MMAdOverlayClosed(MMAd mMAd) {
        OXLog.debug("MillenialInterstitialAdapter", "Millennial Media Ad (" + mMAd.getApid() + ") Overlay closed");
        if (this.listener != null) {
            this.listener.onAdClosed(SDK.Millenial);
        }
    }

    public void onSingleTap(MMAd mMAd) {
        OXLog.debug("MillenialInterstitialAdapter", "Millennial Media Ad (" + mMAd.getApid() + ") single tap");
        if (this.listener != null) {
            this.listener.onAdClicked(SDK.Millenial);
        }
    }

    @Override // com.openx.view.tp.adapters.AdapterBase
    public void cleanUp() {
        super.cleanUp();
        OXLog.debug("MillenialInterstitialAdapter", "cleanUp: MillenialInterstitialAdapter ");
        if (this.interstitial != null) {
            this.interstitial.setListener((RequestListener) null);
        }
    }
}
