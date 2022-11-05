package com.openx.view.tp.adapters.banners;

import android.app.Activity;
import android.content.Context;
import com.inmobi.commons.InMobi;
import com.inmobi.commons.ads.cache.AdDatabaseHelper;
import com.inmobi.monetization.IMBanner;
import com.inmobi.monetization.IMBannerListener;
import com.inmobi.monetization.IMErrorCode;
import com.openx.common.utils.logger.OXLog;
import com.openx.errors.UnknownError;
import com.openx.view.tp.adapters.AdapterBase;
import com.openx.view.tp.chain.SDK;
import com.openx.view.tp.chain.SDKAdEventsListener;
import com.openx.view.tp.chain.parser.ChainItem;
import java.util.Map;
/* loaded from: classes3.dex */
public class InMobiBannerAdapter extends AdapterBase {
    private static final String TAG = "InMobiBannerAdapter";
    private AdBannerListener adBannerListener;
    private IMBanner bannerAd;

    public InMobiBannerAdapter(Context context, SDKAdEventsListener sDKAdEventsListener) {
        super(context, sDKAdEventsListener);
    }

    @Override // com.openx.view.tp.adapters.AdapterBase
    public void cleanUp() {
        super.cleanUp();
        OXLog.debug(TAG, "cleanUp: InMobiBannerAdapter destroying InMobiBanner on cleanUp");
        if (this.bannerAd != null) {
            this.bannerAd.setIMBannerListener(null);
            this.bannerAd.destroy();
            this.bannerAd = null;
        }
    }

    @Override // com.openx.view.tp.adapters.AdapterBase
    public void loadAd(ChainItem chainItem) {
        InMobi.initialize(this.context, chainItem.sdkParams.dictionary.get(AdDatabaseHelper.COLUMN_APPID));
        this.bannerAd = new IMBanner((Activity) this.context, chainItem.sdkParams.dictionary.get(AdDatabaseHelper.COLUMN_APPID), 15);
        this.bannerAd.setRefreshInterval(-1);
        this.adBannerListener = new AdBannerListener();
        this.bannerAd.setIMBannerListener(this.adBannerListener);
        this.bannerAd.loadBanner();
    }

    /* loaded from: classes3.dex */
    class AdBannerListener implements IMBannerListener {
        AdBannerListener() {
        }

        @Override // com.inmobi.monetization.IMBannerListener
        public void onBannerInteraction(IMBanner iMBanner, Map<String, String> map) {
            if (InMobiBannerAdapter.this.listener != null) {
                InMobiBannerAdapter.this.listener.onAdClicked(SDK.InMobi);
            }
        }

        @Override // com.inmobi.monetization.IMBannerListener
        public void onBannerRequestFailed(IMBanner iMBanner, IMErrorCode iMErrorCode) {
            InMobiBannerAdapter.this.cleanUp();
            if (InMobiBannerAdapter.this.listener != null) {
                InMobiBannerAdapter.this.listener.onAdFailedToLoad(SDK.InMobi, new UnknownError(iMErrorCode.toString()));
            }
        }

        @Override // com.inmobi.monetization.IMBannerListener
        public void onBannerRequestSucceeded(IMBanner iMBanner) {
            if (InMobiBannerAdapter.this.listener != null) {
                InMobiBannerAdapter.this.listener.onAdDidLoad(SDK.InMobi, iMBanner);
            }
        }

        @Override // com.inmobi.monetization.IMBannerListener
        public void onDismissBannerScreen(IMBanner iMBanner) {
        }

        @Override // com.inmobi.monetization.IMBannerListener
        public void onLeaveApplication(IMBanner iMBanner) {
            if (InMobiBannerAdapter.this.listener != null) {
                InMobiBannerAdapter.this.listener.onAdClosed(SDK.InMobi);
            }
        }

        @Override // com.inmobi.monetization.IMBannerListener
        public void onShowBannerScreen(IMBanner iMBanner) {
        }
    }
}
