package com.openx.view.tp.adapters.banners;

import android.content.Context;
import android.util.TypedValue;
import android.widget.RelativeLayout;
import com.millennialmedia.android.MMAd;
import com.millennialmedia.android.MMAdView;
import com.millennialmedia.android.MMException;
import com.millennialmedia.android.MMRequest;
import com.millennialmedia.android.MMSDK;
import com.millennialmedia.android.RequestListener;
import com.openx.common.utils.logger.OXLog;
import com.openx.errors.UnknownError;
import com.openx.view.tp.adapters.AdapterBase;
import com.openx.view.tp.chain.SDK;
import com.openx.view.tp.chain.SDKAdEventsListener;
import com.openx.view.tp.chain.parser.ChainItem;
/* loaded from: classes3.dex */
public class MillenialBannerAdapter extends AdapterBase implements RequestListener {
    private static final int BANNER_AD_HEIGHT = 50;
    private static final int BANNER_AD_WIDTH = 320;
    private static final int IAB_LEADERBOARD_HEIGHT = 90;
    private static final int IAB_LEADERBOARD_WIDTH = 728;
    private static final int MED_BANNER_HEIGHT = 60;
    private static final int MED_BANNER_WIDTH = 480;
    private static final String TAG = "MillenialBannerAdapter";
    private MMAdView mBannerView;
    private int placementHeight;
    private int placementWidth;

    public MillenialBannerAdapter(Context context, SDKAdEventsListener sDKAdEventsListener) {
        super(context, sDKAdEventsListener);
        MMSDK.initialize(context);
        this.placementWidth = BANNER_AD_WIDTH;
        this.placementHeight = 50;
        if (canFit(IAB_LEADERBOARD_WIDTH)) {
            this.placementWidth = IAB_LEADERBOARD_WIDTH;
            this.placementHeight = 90;
        } else if (canFit(MED_BANNER_WIDTH)) {
            this.placementWidth = MED_BANNER_WIDTH;
            this.placementHeight = 60;
        }
    }

    protected boolean canFit(int i) {
        return this.context.getResources().getDisplayMetrics().widthPixels >= ((int) TypedValue.applyDimension(1, (float) i, this.context.getResources().getDisplayMetrics()));
    }

    @Override // com.openx.view.tp.adapters.AdapterBase
    public void loadAd(ChainItem chainItem) {
        this.mBannerView = new MMAdView(this.context);
        this.mBannerView.setApid(chainItem.sdkParams.dictionary.get("apid"));
        this.mBannerView.setMMRequest(new MMRequest());
        this.mBannerView.setWidth(this.placementWidth);
        this.mBannerView.setHeight(this.placementHeight);
        this.mBannerView.setId(MMSDK.getDefaultAdId());
        this.mBannerView.setListener(this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, this.placementWidth, this.context.getResources().getDisplayMetrics()), (int) TypedValue.applyDimension(1, this.placementHeight, this.context.getResources().getDisplayMetrics()));
        layoutParams.addRule(10);
        layoutParams.addRule(14);
        this.mBannerView.setLayoutParams(layoutParams);
        this.mBannerView.getAd();
    }

    public void MMAdOverlayClosed(MMAd mMAd) {
        if (this.listener != null) {
            this.listener.onAdClosed(SDK.Millenial);
        }
    }

    public void MMAdOverlayLaunched(MMAd mMAd) {
    }

    public void MMAdRequestIsCaching(MMAd mMAd) {
    }

    public void onSingleTap(MMAd mMAd) {
        OXLog.debug(TAG, "Millenial Single Click called");
        if (this.listener != null) {
            this.listener.onAdClicked(SDK.Millenial);
        }
    }

    public void requestCompleted(MMAd mMAd) {
        if (this.listener != null) {
            this.listener.onAdDidLoad(SDK.Millenial, this.mBannerView);
        }
    }

    public void requestFailed(MMAd mMAd, MMException mMException) {
        if (this.listener != null) {
            this.listener.onAdFailedToLoad(SDK.Millenial, new UnknownError(Integer.toString(mMException.getCode()) + " : " + mMException.getMessage()));
        }
    }

    @Override // com.openx.view.tp.adapters.AdapterBase
    public void cleanUp() {
        super.cleanUp();
        OXLog.debug(TAG, "cleanUp: MillenialBannerAdapter ");
        if (this.mBannerView != null) {
            this.mBannerView.setListener((RequestListener) null);
        }
    }
}
