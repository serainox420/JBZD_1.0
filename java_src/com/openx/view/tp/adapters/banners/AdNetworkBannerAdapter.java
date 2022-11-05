package com.openx.view.tp.adapters.banners;

import android.content.Context;
import android.view.ViewGroup;
import com.openx.common.utils.logger.OXLog;
import com.openx.core.network.OXAdRequest;
import com.openx.errors.AdError;
import com.openx.errors.UnknownError;
import com.openx.view.AdBanner;
import com.openx.view.AdEventsListener;
import com.openx.view.tp.adapters.AdapterBase;
import com.openx.view.tp.chain.SDK;
import com.openx.view.tp.chain.SDKAdEventsListener;
import com.openx.view.tp.chain.parser.ChainItem;
/* loaded from: classes3.dex */
public class AdNetworkBannerAdapter extends AdapterBase implements AdEventsListener {
    private static final String TAG = "AdNetworkBannerAdapter";
    private AdBanner adBanner;
    private ViewGroup adContainer;

    public AdNetworkBannerAdapter(Context context, ViewGroup viewGroup, SDKAdEventsListener sDKAdEventsListener) {
        super(context, sDKAdEventsListener);
        this.adContainer = viewGroup;
    }

    @Override // com.openx.view.tp.adapters.AdapterBase
    public void loadAd(ChainItem chainItem) {
        this.adBanner = new AdBanner(this.context, chainItem.mediationUrl, chainItem.type, chainItem);
        this.adBanner.setAdEventsListener(this);
        this.adBanner.setAutoRefreshInterval(0);
        this.adContainer.addView(this.adBanner, 0);
        this.adBanner.load(new OXAdRequest());
    }

    @Override // com.openx.view.AdEventsListener
    public void onAdDidLoad() {
        if (this.listener != null) {
            this.listener.onAdDidLoad(SDK.AdNetwork, this.adBanner);
        }
    }

    @Override // com.openx.view.AdEventsListener
    public void onAdFailedToLoad(AdError adError) {
        if (this.listener != null) {
            this.listener.onAdFailedToLoad(SDK.AdNetwork, new UnknownError(adError.toString()));
        }
    }

    @Override // com.openx.view.AdEventsListener
    public void onAdClosed() {
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
        if (this.adBanner != null) {
            OXLog.debug(TAG, "SSM clean up");
            this.adBanner.setAdEventsListener(null);
            this.adBanner = null;
        }
    }
}
