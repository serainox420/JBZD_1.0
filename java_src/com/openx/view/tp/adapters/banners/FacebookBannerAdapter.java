package com.openx.view.tp.adapters.banners;

import android.content.Context;
import android.util.TypedValue;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdSettings;
import com.facebook.ads.AdSize;
import com.facebook.ads.AdView;
import com.openx.common.utils.logger.OXLog;
import com.openx.errors.UnknownError;
import com.openx.view.tp.adapters.AdapterBase;
import com.openx.view.tp.chain.ChainManager;
import com.openx.view.tp.chain.SDK;
import com.openx.view.tp.chain.SDKAdEventsListener;
import com.openx.view.tp.chain.parser.ChainItem;
/* loaded from: classes3.dex */
public class FacebookBannerAdapter extends AdapterBase implements AdListener {
    private static final int IAB_LEADERBOARD_WIDTH = 728;
    private static final String TAG = "FacebookBannerAdapter";
    private AdView adViewBanner;

    public FacebookBannerAdapter(Context context, SDKAdEventsListener sDKAdEventsListener) {
        super(context, sDKAdEventsListener);
    }

    @Override // com.openx.view.tp.adapters.AdapterBase
    public void cleanUp() {
        super.cleanUp();
        OXLog.debug(TAG, "FacebookBannerView cleanup");
        if (this.adViewBanner != null) {
            this.adViewBanner.destroy();
            this.adViewBanner = null;
        }
    }

    @Override // com.openx.view.tp.adapters.AdapterBase
    public void loadAd(ChainItem chainItem) {
        this.adViewBanner = new AdView(this.context, chainItem.sdkParams.dictionary.get("ex_placement_id"), canFit(IAB_LEADERBOARD_WIDTH) ? AdSize.BANNER_HEIGHT_90 : AdSize.BANNER_HEIGHT_50);
        this.adViewBanner.setAdListener(this);
        if (ChainManager.testDeviceIds != null) {
            for (int i = 0; i < ChainManager.testDeviceIds.length; i++) {
                AdSettings.addTestDevice(ChainManager.testDeviceIds[i]);
            }
        }
        this.adViewBanner.loadAd();
    }

    protected boolean canFit(int i) {
        return this.context.getResources().getDisplayMetrics().widthPixels >= ((int) TypedValue.applyDimension(1, (float) i, this.context.getResources().getDisplayMetrics()));
    }

    @Override // com.facebook.ads.AdListener
    public void onError(Ad ad, AdError adError) {
        OXLog.debug("FB", "error: " + adError);
        cleanUp();
        if (this.adViewBanner == null && this.listener != null) {
            this.listener.onAdFailedToLoad(SDK.Facebook, new UnknownError(adError.getErrorMessage()));
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onAdLoaded(Ad ad) {
        OXLog.debug("FB", "ad loaded");
        if (ad == this.adViewBanner && this.listener != null) {
            this.listener.onAdDidLoad(SDK.Facebook, this.adViewBanner);
        }
    }

    @Override // com.facebook.ads.AdListener
    public void onAdClicked(Ad ad) {
        OXLog.debug("FB", "ad clicked");
        if (this.listener != null) {
            this.listener.onAdClicked(SDK.Facebook);
        }
    }
}
