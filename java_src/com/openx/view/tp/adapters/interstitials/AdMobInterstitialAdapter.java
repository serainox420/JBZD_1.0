package com.openx.view.tp.adapters.interstitials;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.InterstitialAd;
import com.openx.common.utils.logger.OXLog;
import com.openx.errors.UnknownError;
import com.openx.view.tp.adapters.AdapterBase;
import com.openx.view.tp.chain.ChainManager;
import com.openx.view.tp.chain.SDK;
import com.openx.view.tp.chain.SDKAdEventsListener;
import com.openx.view.tp.chain.parser.ChainItem;
/* loaded from: classes3.dex */
public class AdMobInterstitialAdapter extends AdapterBase {
    private static final String TAG = "AdMobInterstitialAdapter";
    AdListener adListener;
    private InterstitialAd interstitialAd;

    public AdMobInterstitialAdapter(Context context, SDKAdEventsListener sDKAdEventsListener) {
        super(context, sDKAdEventsListener);
        this.adListener = new AdListener() { // from class: com.openx.view.tp.adapters.interstitials.AdMobInterstitialAdapter.2
            @Override // com.google.android.gms.ads.AdListener
            public void onAdLoaded() {
                super.onAdLoaded();
                if (AdMobInterstitialAdapter.this.interstitialAd.isLoaded() && AdMobInterstitialAdapter.this.listener != null) {
                    AdMobInterstitialAdapter.this.listener.onAdDidLoad(SDK.AdMob, AdMobInterstitialAdapter.this.interstitialAd);
                }
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdFailedToLoad(int i) {
                super.onAdFailedToLoad(i);
                if (AdMobInterstitialAdapter.this.listener != null) {
                    AdMobInterstitialAdapter.this.listener.onAdFailedToLoad(SDK.AdMob, new UnknownError(Integer.toString(i)));
                }
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdClosed() {
                super.onAdClosed();
                if (AdMobInterstitialAdapter.this.listener != null) {
                    AdMobInterstitialAdapter.this.listener.onAdClosed(SDK.AdMob);
                }
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdOpened() {
                super.onAdOpened();
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdLeftApplication() {
                super.onAdLeftApplication();
                if (AdMobInterstitialAdapter.this.listener != null) {
                    AdMobInterstitialAdapter.this.listener.onAdClicked(SDK.AdMob);
                }
            }
        };
    }

    @Override // com.openx.view.tp.adapters.AdapterBase
    public void show() {
        super.show();
        this.interstitialAd.show();
    }

    @Override // com.openx.view.tp.adapters.AdapterBase
    public void loadAd(final ChainItem chainItem) {
        this.interstitialAd = new InterstitialAd((Activity) this.context);
        ((Activity) this.context).runOnUiThread(new Runnable() { // from class: com.openx.view.tp.adapters.interstitials.AdMobInterstitialAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                AdMobInterstitialAdapter.this.interstitialAd.setAdUnitId(chainItem.sdkParams.dictionary.get("adUnit"));
                AdMobInterstitialAdapter.this.interstitialAd.setAdListener(AdMobInterstitialAdapter.this.adListener);
                AdRequest.Builder builder = new AdRequest.Builder();
                if (ChainManager.testDeviceIds != null) {
                    for (int i = 0; i < ChainManager.testDeviceIds.length; i++) {
                        builder.addTestDevice(ChainManager.testDeviceIds[i]);
                    }
                }
                AdMobInterstitialAdapter.this.interstitialAd.loadAd(builder.build());
            }
        });
    }

    @Override // com.openx.view.tp.adapters.AdapterBase
    public void cleanUp() {
        super.cleanUp();
        OXLog.debug(TAG, "cleanUp: AdMobInterstitialAdapter");
        if (this.interstitialAd != null) {
            this.interstitialAd.setAdListener(null);
            this.interstitialAd = null;
        }
    }
}
