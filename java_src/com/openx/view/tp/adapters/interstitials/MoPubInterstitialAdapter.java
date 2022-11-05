package com.openx.view.tp.adapters.interstitials;

import android.app.Activity;
import android.content.Context;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubInterstitial;
import com.openx.common.utils.logger.OXLog;
import com.openx.errors.UnknownError;
import com.openx.view.tp.adapters.AdapterBase;
import com.openx.view.tp.chain.SDK;
import com.openx.view.tp.chain.SDKAdEventsListener;
import com.openx.view.tp.chain.parser.ChainItem;
/* loaded from: classes3.dex */
public class MoPubInterstitialAdapter extends AdapterBase implements MoPubInterstitial.InterstitialAdListener {
    private final String TAG;
    private MoPubInterstitial mInterstitial;

    public MoPubInterstitialAdapter(Context context, SDKAdEventsListener sDKAdEventsListener) {
        super(context, sDKAdEventsListener);
        this.TAG = "MoPubInterstitialAdapter";
    }

    @Override // com.openx.view.tp.adapters.AdapterBase
    public void cleanUp() {
        super.cleanUp();
        OXLog.debug("MoPubInterstitialAdapter", "cleanUp: MoPubInterstitialAdapter destroying MoPubInterstitialAdapter on cleanUp");
        if (this.mInterstitial != null) {
            this.mInterstitial.setInterstitialAdListener(null);
            this.mInterstitial.destroy();
        }
    }

    @Override // com.openx.view.tp.adapters.AdapterBase
    public void show() {
        super.show();
        this.mInterstitial.show();
    }

    @Override // com.openx.view.tp.adapters.AdapterBase
    public void loadAd(ChainItem chainItem) {
        try {
            this.mInterstitial = new MoPubInterstitial((Activity) this.context, chainItem.sdkParams.dictionary.get("adUnit"));
            this.mInterstitial.setInterstitialAdListener(this);
            this.mInterstitial.load();
        } catch (Exception e) {
            OXLog.warn("MoPubInterstitialAdapter", "MoPub's internal error " + e + " so calling onAdFailed manually ");
            this.listener.onAdFailedToLoad(SDK.MoPub, new UnknownError(e.toString()));
        }
    }

    @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
    public void onInterstitialClicked(MoPubInterstitial moPubInterstitial) {
        if (this.listener != null) {
            this.listener.onAdClicked(SDK.MoPub);
        }
    }

    @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
    public void onInterstitialDismissed(MoPubInterstitial moPubInterstitial) {
        OXLog.debug("MoPubInterstitialAdapter", " closing the ad in mopub adapter - so chainmanager can ask activity to disable the button");
        if (this.listener != null) {
            this.listener.onAdClosed(SDK.MoPub);
        }
    }

    @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
    public void onInterstitialFailed(MoPubInterstitial moPubInterstitial, MoPubErrorCode moPubErrorCode) {
        cleanUp();
        UnknownError unknownError = new UnknownError(moPubErrorCode.toString());
        OXLog.debug("MoPubInterstitialAdapter", "error loading mopub ad with error: " + unknownError);
        if (this.listener != null) {
            this.listener.onAdFailedToLoad(SDK.MoPub, unknownError);
        }
    }

    @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
    public void onInterstitialLoaded(MoPubInterstitial moPubInterstitial) {
        if (moPubInterstitial.isReady() && this.listener != null) {
            OXLog.debug("MoPubInterstitialAdapter", "loaded mopub ad successfully: ");
            this.listener.onAdDidLoad(SDK.MoPub, moPubInterstitial);
        }
    }

    @Override // com.mopub.mobileads.MoPubInterstitial.InterstitialAdListener
    public void onInterstitialShown(MoPubInterstitial moPubInterstitial) {
        OXLog.debug("MoPubInterstitialAdapter", "onInterstitialShown");
    }
}
