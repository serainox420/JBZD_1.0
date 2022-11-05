package com.openx.view.tp.adapters.banners;

import android.content.Context;
import android.widget.FrameLayout;
import com.openx.common.utils.logger.OXLog;
import com.openx.errors.AdError;
import com.openx.errors.UnknownError;
import com.openx.view.AdBanner;
import com.openx.view.AdEventsListener;
import com.openx.view.tp.adapters.AdapterBase;
import com.openx.view.tp.chain.SDK;
import com.openx.view.tp.chain.SDKAdEventsListener;
import com.openx.view.tp.chain.parser.ChainItem;
/* loaded from: classes3.dex */
public class FallbackBannerAdapter extends AdapterBase implements AdEventsListener {
    private static final String TAG = "FallbackBannerAdapter";
    private AdBanner adBanner;

    public FallbackBannerAdapter(Context context, SDKAdEventsListener sDKAdEventsListener) {
        super(context, sDKAdEventsListener);
    }

    @Override // com.openx.view.tp.adapters.AdapterBase
    public void loadAd(ChainItem chainItem) {
        this.adBanner = new AdBanner(this.context, chainItem);
        this.adBanner.setAdEventsListener(this);
        this.adBanner.setAutoRefreshInterval(0);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, -2);
        layoutParams.gravity = 1;
        this.adBanner.setLayoutParams(layoutParams);
        this.adBanner.loadFallback();
    }

    @Override // com.openx.view.AdEventsListener
    public void onAdDidLoad() {
        if (this.listener != null) {
            this.listener.onAdDidLoad(SDK.Fallback, this.adBanner);
        }
        if (this.adBanner != null) {
            this.adBanner.stoppedLoading();
        }
    }

    @Override // com.openx.view.AdEventsListener
    public void onAdFailedToLoad(AdError adError) {
        if (this.listener != null) {
            this.listener.onAdFailedToLoad(SDK.Fallback, new UnknownError(adError.toString()));
        }
    }

    @Override // com.openx.view.AdEventsListener
    public void onAdClosed() {
        OXLog.debug(TAG, " closing the ad in fallback banner adapter - so chainmanager can ask activity to disable the button");
        if (this.listener != null) {
            this.listener.onAdClosed(SDK.Fallback);
        }
    }

    @Override // com.openx.view.AdEventsListener
    public void onAdClicked() {
        if (this.listener != null) {
            this.listener.onAdClicked(SDK.Fallback);
        }
    }

    @Override // com.openx.view.tp.adapters.AdapterBase
    public void cleanUp() {
        super.cleanUp();
        if (this.adBanner != null) {
            OXLog.debug(TAG, "cleanUp: FallbackBannerAdapter ");
            this.adBanner.setAdEventsListener(null);
            this.adBanner = null;
        }
    }
}
