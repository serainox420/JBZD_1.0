package com.openx.view.tp.adapters.interstitials;

import android.content.Context;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdSettings;
import com.facebook.ads.InterstitialAd;
import com.facebook.ads.InterstitialAdListener;
import com.openx.common.utils.logger.OXLog;
import com.openx.errors.UnknownError;
import com.openx.view.tp.adapters.AdapterBase;
import com.openx.view.tp.chain.ChainManager;
import com.openx.view.tp.chain.SDK;
import com.openx.view.tp.chain.SDKAdEventsListener;
import com.openx.view.tp.chain.parser.ChainItem;
/* loaded from: classes3.dex */
public class FacebookInterstitialAdapter extends AdapterBase implements InterstitialAdListener {
    private static final String TAG = "FacebookInterstitialAdapter";
    private InterstitialAd interstitialAd;

    public FacebookInterstitialAdapter(Context context, SDKAdEventsListener sDKAdEventsListener) {
        super(context, sDKAdEventsListener);
    }

    @Override // com.openx.view.tp.adapters.AdapterBase
    public void show() {
        super.show();
        this.interstitialAd.show();
    }

    @Override // com.openx.view.tp.adapters.AdapterBase
    public void cleanUp() {
        super.cleanUp();
        OXLog.debug(TAG, "FacebookInterstitialAdapter destroying FacebookInterstitial on cleanUp");
        if (this.interstitialAd != null) {
            this.interstitialAd.destroy();
            this.interstitialAd = null;
        }
    }

    @Override // com.openx.view.tp.adapters.AdapterBase
    public void loadAd(ChainItem chainItem) {
        this.interstitialAd = new InterstitialAd(this.context, chainItem.sdkParams.dictionary.get("ex_placement_id"));
        this.interstitialAd.setAdListener(this);
        if (ChainManager.testDeviceIds != null) {
            for (int i = 0; i < ChainManager.testDeviceIds.length; i++) {
                AdSettings.addTestDevice(ChainManager.testDeviceIds[i]);
            }
        }
        this.interstitialAd.loadAd();
    }

    @Override // com.facebook.ads.AdListener
    public void onError(Ad ad, AdError adError) {
        OXLog.debug(TAG, "FB Adapter : onError()");
        if (ad == this.interstitialAd) {
            cleanUp();
            UnknownError unknownError = new UnknownError(adError.getErrorMessage());
            if (this.listener != null) {
                this.listener.onAdFailedToLoad(SDK.Facebook, unknownError);
            }
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onAdLoaded(Ad ad) {
        OXLog.debug(TAG, "FB Adapter : onAdLoaded()");
        if (ad == this.interstitialAd && this.listener != null) {
            this.listener.onAdDidLoad(SDK.Facebook, ad);
        }
    }

    @Override // com.facebook.ads.InterstitialAdListener
    public void onInterstitialDisplayed(Ad ad) {
        OXLog.debug(TAG, "FB Adapter : onInterstitialDisplayed()");
    }

    @Override // com.facebook.ads.InterstitialAdListener
    public void onInterstitialDismissed(Ad ad) {
        OXLog.debug(TAG, "FB Adapter : closing the ad in FBInterstitial adapter - so chainmanager can ask activity to disable the button");
        if (this.listener != null) {
            this.listener.onAdClosed(SDK.Facebook);
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onAdClicked(Ad ad) {
        OXLog.debug(TAG, "FB Adapter : onAdClicked()");
        if (this.listener != null) {
            this.listener.onAdClicked(SDK.Facebook);
        }
    }
}
