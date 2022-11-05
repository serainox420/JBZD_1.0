package com.openx.view.tp.adapters.banners;

import android.app.Activity;
import android.content.Context;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.AdView;
import com.openx.common.utils.logger.OXLog;
import com.openx.errors.UnknownError;
import com.openx.view.tp.adapters.AdapterBase;
import com.openx.view.tp.chain.ChainManager;
import com.openx.view.tp.chain.SDK;
import com.openx.view.tp.chain.SDKAdEventsListener;
import com.openx.view.tp.chain.parser.ChainItem;
/* loaded from: classes3.dex */
public class AdMobBannerAdapter extends AdapterBase {
    private static final String TAG = "AdMobBannerAdapter";
    AdListener adListener;
    private AdView mAdView;

    public AdMobBannerAdapter(Context context, SDKAdEventsListener sDKAdEventsListener) {
        super(context, sDKAdEventsListener);
        this.adListener = new AdListener() { // from class: com.openx.view.tp.adapters.banners.AdMobBannerAdapter.1
            @Override // com.google.android.gms.ads.AdListener
            public void onAdLoaded() {
                super.onAdLoaded();
                if (AdMobBannerAdapter.this.listener != null) {
                    AdMobBannerAdapter.this.listener.onAdDidLoad(SDK.AdMob, AdMobBannerAdapter.this.mAdView);
                }
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdFailedToLoad(int i) {
                AdMobBannerAdapter.this.cleanUp();
                super.onAdFailedToLoad(i);
                if (AdMobBannerAdapter.this.listener != null) {
                    AdMobBannerAdapter.this.listener.onAdFailedToLoad(SDK.AdMob, new UnknownError(Integer.toString(i)));
                }
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdOpened() {
                super.onAdOpened();
            }

            @Override // com.google.android.gms.ads.AdListener
            public void onAdLeftApplication() {
                super.onAdLeftApplication();
                if (AdMobBannerAdapter.this.listener != null) {
                    AdMobBannerAdapter.this.listener.onAdClicked(SDK.AdMob);
                }
            }
        };
    }

    @Override // com.openx.view.tp.adapters.AdapterBase
    public void cleanUp() {
        super.cleanUp();
        OXLog.debug(TAG, " AdMobBannerAdapter's  cleanup to call pause & destroy of AdmobView");
        if (this.mAdView != null) {
            this.mAdView.setAdListener(null);
            this.mAdView.pause();
            this.mAdView.destroy();
        }
    }

    @Override // com.openx.view.tp.adapters.AdapterBase
    public void loadAd(ChainItem chainItem) {
        this.mAdView = new AdView((Activity) this.context);
        this.mAdView.setAdSize(AdSize.BANNER);
        this.mAdView.setAdUnitId(chainItem.sdkParams.dictionary.get("adUnit"));
        this.mAdView.setAdListener(this.adListener);
        AdRequest.Builder builder = new AdRequest.Builder();
        if (ChainManager.testDeviceIds != null) {
            for (int i = 0; i < ChainManager.testDeviceIds.length; i++) {
                builder.addTestDevice(ChainManager.testDeviceIds[i]);
            }
        }
        this.mAdView.loadAd(builder.build());
    }
}
