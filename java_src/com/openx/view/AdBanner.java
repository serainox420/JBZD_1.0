package com.openx.view;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import com.openx.common.utils.helpers.Utils;
import com.openx.common.utils.logger.OXLog;
import com.openx.core.sdk.OXMManagersResolver;
import com.openx.model.Ad;
import com.openx.model.AdGroup;
import com.openx.view.tp.chain.parser.ChainItem;
import java.util.UUID;
/* loaded from: classes3.dex */
public class AdBanner extends AdBase {
    private static final String TAG = "AdBanner";
    private WebViewBanner fallbackAdWebView;
    private boolean flip;

    public AdBanner(Context context, String str, String str2, ChainItem chainItem) {
        super(context, str, str2, chainItem);
    }

    public AdBanner(Context context, String str, String str2) {
        super(context, str, str2);
    }

    public AdBanner(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AdBanner(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.isPaused = false;
    }

    public AdBanner(Context context, ChainItem chainItem) {
        super(context, null, null, chainItem);
        initWebViewBanner(chainItem);
    }

    private void initWebViewBanner(Ad ad) {
        UUID randomUUID = UUID.randomUUID();
        this.fallbackAdWebView = new WebViewBanner(getContext(), ad, randomUUID, true, this);
        this.fallbackAdWebView.setAd(ad);
        this.fallbackAdWebView.setParentId(randomUUID);
        if (this.interval == Integer.MAX_VALUE) {
            this.fallbackAdWebView.setManuallyRefreshed(true);
        }
        incrementNumRequests();
    }

    public void loadFallback() {
        if (this.fallbackAdWebView != null) {
            this.fallbackAdWebView.setAdEventsListener(getAdEventsListener());
            this.fallbackAdWebView.loadAd();
        }
    }

    @Override // com.openx.view.AdBase, com.openx.model.network.AdModelLoadedListener
    public void adModelLoadAdSuccess(AdGroup adGroup) {
        super.adModelLoadAdSuccess(adGroup);
        OXLog.debug(TAG, "Banner's adModelLoadSuccess");
        if (adGroup != null && adGroup.getAds() != null && adGroup.getAds().size() > 0) {
            int refreshInterval = adGroup.getAds().get(0).getRefreshInterval();
            if (refreshInterval > 0 && this.interval != Integer.MAX_VALUE) {
                OXLog.debug(TAG, "adModelLoadAdSuccess setAdChangeInterval");
                setAutoRefreshInterval(refreshInterval);
            }
            UUID uuid = null;
            if (adGroup.getAds().size() == 2) {
                uuid = UUID.randomUUID();
            }
            if (!this.flip) {
                OXLog.debug(TAG, "Loading Ad 1 or SSM Ad");
                loadAd1(adGroup, uuid);
                this.flip = true;
                return;
            }
            OXLog.debug(TAG, "Loading Ad 2");
            loadAd2(adGroup, uuid);
            this.flip = false;
            return;
        }
        Utils.log(this, "No Ads in AdGroup");
    }

    public void setAutoStartLoading(boolean z) {
        this.autoStartLoading = z;
    }

    private void loadAd(AdGroup adGroup, UUID uuid) {
        WebViewBanner webViewBanner;
        if (this.chainItem != null && this.chainItem.mediationUrl != null) {
            webViewBanner = new WebViewBanner(getContext(), this.chainItem, uuid, true, this);
            webViewBanner.setAd(adGroup.getAds().get(0));
        } else {
            WebViewBanner webViewBanner2 = new WebViewBanner(getContext(), true, this);
            webViewBanner2.setAd(adGroup.getAds().get(0));
            webViewBanner = webViewBanner2;
        }
        webViewBanner.setParentId(uuid);
        if (this.interval == Integer.MAX_VALUE) {
            webViewBanner.setManuallyRefreshed(true);
        }
        webViewBanner.setAdModel(getAdModel());
        webViewBanner.setAdEventsListener(getAdEventsListener());
        webViewBanner.loadAd();
        incrementNumRequests();
    }

    private void loadAd1(AdGroup adGroup, UUID uuid) {
        if (this.ad1 == null) {
            if (this.chainItem != null && this.chainItem.mediationUrl != null) {
                this.ad1 = new WebViewBanner(getContext(), this.chainItem, uuid, true, this);
                this.ad1.setAd(adGroup.getAds().get(0));
            } else {
                this.ad1 = new WebViewBanner(getContext(), true, this);
            }
        }
        this.ad1.setAd(adGroup.getAds().get(0));
        this.ad1.setParentId(uuid);
        if (this.interval == Integer.MAX_VALUE) {
            this.ad1.setManuallyRefreshed(true);
        }
        this.ad1.setAdModel(getAdModel());
        this.ad1.setAdEventsListener(getAdEventsListener());
        this.ad1.loadAd();
        incrementNumRequests();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.openx.view.AdBase, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
    }

    private void loadAd2(AdGroup adGroup, UUID uuid) {
        if (this.ad2 == null) {
            this.ad2 = new WebViewBanner(getContext(), true, this);
        }
        this.ad2.setAd(adGroup.getAds().get(0));
        this.ad2.setParentId(uuid);
        if (this.interval == Integer.MAX_VALUE) {
            this.ad2.setManuallyRefreshed(true);
        }
        this.ad2.setAdModel(getAdModel());
        this.ad2.setAdEventsListener(getAdEventsListener());
        this.ad2.loadAd();
        incrementNumRequests();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.openx.view.AdBase, android.view.View
    public void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        if (this.interval == Integer.MAX_VALUE && i == 0 && (getChildAt(0) instanceof WebViewBase)) {
            trackImpressionEvent((WebViewBase) getChildAt(0));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.openx.view.AdBase
    public void renderAdView(WebViewBase webViewBase) {
        super.renderAdView(webViewBase);
        OXMManagersResolver.getInstance().setCurrentAd(webViewBase);
        if (this.adEventsListener != null) {
            this.adEventsListener.onAdDidLoad();
        }
    }

    @Override // com.openx.view.AdBase, android.view.View
    public void onWindowFocusChanged(boolean z) {
        if (this.loadCalled) {
            this.loadCalled = true;
        } else {
            this.loadCalled = false;
        }
        super.onWindowFocusChanged(z);
        if (z) {
            this.isPaused = false;
            this.screenOn = true;
            if (getChildCount() <= 0 && this.autoStartLoading && !this.loadCalled) {
                OXLog.debug(TAG, "(load&scheduleTimer logs) initloading from onWindowFocusedChanged");
                initStartLoading(null);
            }
        }
    }

    @Override // com.openx.view.AdBase
    @SuppressLint({"NewApi"})
    public void displayAdViewPlacement(WebViewBase webViewBase) {
        super.displayAdViewPlacement(webViewBase);
        if (webViewBase.getAdWidth() != 0) {
            getLayoutParams().width = webViewBase.getAdWidth();
            getLayoutParams().height = webViewBase.getAdHeight();
        }
        invalidate();
    }

    @Override // com.openx.view.AdBase, com.openx.view.video.PreloadManager.PreloadedListener
    public void preloaded(WebViewBase webViewBase) {
        this.adPreloads++;
        this.numRequests--;
        OXLog.debug(TAG, "getAdEventsListener(): " + getAdEventsListener());
        if (webViewBase.getParent() == null) {
            if (getChildCount() >= 1) {
                OXLog.debug(TAG, "adding second banner");
                addView(webViewBase, 1);
                webViewBase.bringToFront();
                swapWebViews();
            } else {
                OXLog.debug(TAG, "adding first banner");
                addView(webViewBase, 0);
                renderAdView(webViewBase);
            }
        } else {
            webViewBase.bringToFront();
            swapWebViews();
        }
        if (this.context != null) {
            ((Activity) this.context).getWindow().getDecorView().findViewById(16908290).postInvalidate();
            ((Activity) this.context).getWindow().getDecorView().findViewById(16908290).postInvalidateDelayed(100L);
        }
        OXLog.debug(TAG, "adBase count: " + getChildCount());
    }
}
