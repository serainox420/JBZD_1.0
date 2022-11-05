package com.openx.view.tp.adapters.banners;

import android.content.Context;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubView;
import com.openx.common.utils.logger.OXLog;
import com.openx.errors.UnknownError;
import com.openx.view.tp.adapters.AdapterBase;
import com.openx.view.tp.chain.SDK;
import com.openx.view.tp.chain.SDKAdEventsListener;
import com.openx.view.tp.chain.parser.ChainItem;
/* loaded from: classes3.dex */
public class MoPubBannerAdapter extends AdapterBase implements MoPubView.BannerAdListener {
    private static final String TAG = "MoPubBannerAdapter";
    private MoPubView mBannerView;

    public MoPubBannerAdapter(Context context, SDKAdEventsListener sDKAdEventsListener) {
        super(context, sDKAdEventsListener);
    }

    @Override // com.openx.view.tp.adapters.AdapterBase
    public void cleanUp() {
        super.cleanUp();
        OXLog.debug(TAG, "mopubView is getting destroyed on cleanup");
        if (this.mBannerView != null) {
            this.mBannerView.destroy();
            this.mBannerView.setBannerAdListener(null);
        }
    }

    @Override // com.openx.view.tp.adapters.AdapterBase
    public void loadAd(ChainItem chainItem) {
        this.mBannerView = new MoPubView(this.context);
        this.mBannerView.setBannerAdListener(this);
        this.mBannerView.setAdUnitId(chainItem.sdkParams.dictionary.get("adUnit"));
        this.mBannerView.setAutorefreshEnabled(false);
        this.mBannerView.loadAd();
    }

    @Override // com.mopub.mobileads.MoPubView.BannerAdListener
    public void onBannerClicked(MoPubView moPubView) {
        if (this.listener != null) {
            this.listener.onAdClicked(SDK.MoPub);
        }
    }

    @Override // com.mopub.mobileads.MoPubView.BannerAdListener
    public void onBannerCollapsed(MoPubView moPubView) {
    }

    @Override // com.mopub.mobileads.MoPubView.BannerAdListener
    public void onBannerExpanded(MoPubView moPubView) {
    }

    @Override // com.mopub.mobileads.MoPubView.BannerAdListener
    public void onBannerFailed(MoPubView moPubView, MoPubErrorCode moPubErrorCode) {
        OXLog.debug(TAG, "Mopub banner failed:");
        cleanUp();
        if (this.listener != null) {
            this.listener.onAdFailedToLoad(SDK.MoPub, new UnknownError(moPubErrorCode.toString()));
        }
    }

    @Override // com.mopub.mobileads.MoPubView.BannerAdListener
    public void onBannerLoaded(MoPubView moPubView) {
        if (this.listener != null) {
            this.listener.onAdDidLoad(SDK.MoPub, moPubView);
        }
    }
}
