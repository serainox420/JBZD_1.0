package com.openx.view.tp.adapters.interstitials;

import android.content.Context;
import com.openx.common.utils.logger.OXLog;
import com.openx.core.network.OXAdRequest;
import com.openx.errors.AdError;
import com.openx.errors.UnknownError;
import com.openx.view.AdEventsListener;
import com.openx.view.AdInterstitial;
import com.openx.view.tp.adapters.AdapterBase;
import com.openx.view.tp.chain.SDK;
import com.openx.view.tp.chain.SDKAdEventsListener;
import com.openx.view.tp.chain.parser.ChainItem;
/* loaded from: classes3.dex */
public class AdNetworkInterstitialAdapter extends AdapterBase implements AdEventsListener {
    private static final String TAG = "AdNetworkInterstitialAdapter";
    private AdInterstitial adInterstitial;

    public AdNetworkInterstitialAdapter(Context context, SDKAdEventsListener sDKAdEventsListener) {
        super(context, sDKAdEventsListener);
    }

    @Override // com.openx.view.tp.adapters.AdapterBase
    public void show() {
        super.show();
        this.adInterstitial.show();
    }

    @Override // com.openx.view.tp.adapters.AdapterBase
    public void loadAd(ChainItem chainItem) {
        this.adInterstitial = new AdInterstitial(this.context, chainItem.mediationUrl, chainItem.type, chainItem);
        this.adInterstitial.setClosePosition(AdInterstitial.ClosePosition.SCREEN_TOP_LEFT);
        this.adInterstitial.setAdEventsListener(this);
        this.adInterstitial.setAutoRefreshInterval(0);
        this.adInterstitial.setBackgroundOpacity(1.0f);
        this.adInterstitial.load(new OXAdRequest());
    }

    @Override // com.openx.view.AdEventsListener
    public void onAdDidLoad() {
        if (this.listener != null) {
            this.listener.onAdDidLoad(SDK.AdNetwork, this.adInterstitial);
        }
        this.adInterstitial.stoppedLoading();
    }

    @Override // com.openx.view.AdEventsListener
    public void onAdFailedToLoad(AdError adError) {
        if (this.listener != null) {
            this.listener.onAdFailedToLoad(SDK.AdNetwork, new UnknownError(adError.toString()));
        }
    }

    @Override // com.openx.view.AdEventsListener
    public void onAdClosed() {
        OXLog.debug(TAG, "closing the ad in Adnetwork adapter - so chainmanager can ask activity to disable the button");
        if (this.listener != null) {
            this.listener.onAdClosed(SDK.AdNetwork);
        }
    }

    @Override // com.openx.view.AdEventsListener
    public void onAdClicked() {
        if (this.listener != null) {
            this.listener.onAdClicked(SDK.AdNetwork);
        }
    }

    @Override // com.openx.view.tp.adapters.AdapterBase
    public void cleanUp() {
        super.cleanUp();
        if (this.adInterstitial != null) {
            OXLog.debug(TAG, "cleanUp: AdNetworkInterstitialAdapter");
            this.adInterstitial.setAdEventsListener(null);
            this.adInterstitial = null;
        }
    }
}
