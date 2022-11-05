package com.openx.view;

import android.app.Activity;
import android.content.Context;
import android.webkit.WebSettings;
import android.webkit.WebView;
import com.openx.common.utils.helpers.Utils;
import com.openx.common.utils.logger.OXLog;
import com.openx.core.sdk.OXMManagersResolver;
import com.openx.model.Ad;
import com.openx.model.AdCreative;
import com.openx.view.AdWebViewClient;
import com.openx.view.tp.chain.parser.ChainItem;
/* loaded from: classes3.dex */
public class AdWebView extends WebView {
    private static final String TAG = "AdWebView";
    protected Ad ad;
    private AdWebViewClient.AdAssetsLoadedListener adAssetsLoadedListener;
    private AdWebViewClient adWebViewClient;
    private boolean isPortrait;
    private Integer mScale;

    public AdWebView(Context context, Ad ad, boolean z) {
        super(context);
        this.isPortrait = z;
        this.ad = ad;
        init();
    }

    @Override // android.webkit.WebView
    public void setInitialScale(int i) {
        this.mScale = Integer.valueOf(i);
    }

    public String getInitialScaleValue() {
        if (this.mScale != null) {
            return String.valueOf(this.mScale.intValue() / 100.0f);
        }
        return null;
    }

    public void setAdAssetsLoadListener(AdWebViewClient.AdAssetsLoadedListener adAssetsLoadedListener) {
        this.adAssetsLoadedListener = adAssetsLoadedListener;
        if (this.adWebViewClient == null) {
            this.adWebViewClient = new AdWebViewClient(this.adAssetsLoadedListener);
        }
        setWebViewClient(this.adWebViewClient);
    }

    protected void init() {
        initializeWebView();
        initializeWebSettings();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void initializeWebView() {
        setScrollBarStyle(0);
        setFocusable(true);
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void initializeWebSettings() {
        WebSettings settings = getSettings();
        int width = ((Activity) getContext()).getWindowManager().getDefaultDisplay().getWidth();
        int height = ((Activity) getContext()).getWindowManager().getDefaultDisplay().getHeight();
        int i = width < height ? width : height;
        if (width <= height) {
            width = height;
        }
        AdCreative creative = this.ad.getCreative();
        if (creative != null) {
            setInitialScale(Math.round(calculateFactor(i, width, creative.getWidth(), creative.getHeight())));
            if (Utils.atLeastKitKat()) {
                OXLog.debug(TAG, " AdWebView: initializeWebSettings: (regular creative) width: " + creative.getWidth() + "regular height: " + creative.getHeight());
                settings.setJavaScriptEnabled(true);
                settings.setJavaScriptCanOpenWindowsAutomatically(false);
                settings.setPluginState(WebSettings.PluginState.OFF);
                settings.setCacheMode(2);
                getSettings().setSupportZoom(false);
                settings.setLoadWithOverviewMode(true);
                settings.setUseWideViewPort(true);
                settings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.SINGLE_COLUMN);
                return;
            }
            settings.setJavaScriptEnabled(true);
            settings.setJavaScriptCanOpenWindowsAutomatically(false);
            settings.setPluginState(WebSettings.PluginState.OFF);
            settings.setCacheMode(2);
            settings.setSupportZoom(true);
            settings.setLoadWithOverviewMode(true);
            settings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.SINGLE_COLUMN);
        } else if (this.ad instanceof ChainItem) {
            OXLog.debug(TAG, " AdWebView: initializeWebSettings: chainItem width: " + ((ChainItem) this.ad).width + "chain height: " + ((ChainItem) this.ad).height);
            setInitialScale(Math.round(calculateFactor(i, width, ((ChainItem) this.ad).width, ((ChainItem) this.ad).height)));
            if (Utils.atLeastKitKat()) {
                settings.setJavaScriptEnabled(true);
                settings.setJavaScriptCanOpenWindowsAutomatically(false);
                settings.setPluginState(WebSettings.PluginState.OFF);
                settings.setCacheMode(2);
                getSettings().setSupportZoom(false);
                settings.setLoadWithOverviewMode(true);
                settings.setUseWideViewPort(true);
                settings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.SINGLE_COLUMN);
                return;
            }
            settings.setJavaScriptEnabled(true);
            settings.setJavaScriptCanOpenWindowsAutomatically(false);
            settings.setPluginState(WebSettings.PluginState.OFF);
            settings.setCacheMode(2);
            settings.setSupportZoom(true);
            settings.setLoadWithOverviewMode(true);
            settings.setLayoutAlgorithm(WebSettings.LayoutAlgorithm.SINGLE_COLUMN);
        } else {
            OXLog.debug(TAG, "AdWebView: initializeWebSettings:(How did you come here?!): No value for ad's width & height!! ");
        }
    }

    private float calculateFactor(int i, int i2, int i3, int i4) {
        float f;
        if (OXMManagersResolver.getInstance().getDeviceManager().getDeviceOrientation() == 2) {
            if (this.isPortrait && i3 < i2) {
                f = (i * 100.0f) / i3;
            } else if (this.isPortrait && i3 > i2) {
                f = ((i2 * 100.0f) / i3) + 1.0f;
            } else if (i3 < i2) {
                f = (i2 * 100.0f) / i3;
            } else {
                f = ((i2 * 100.0f) / i3) + 1.0f;
            }
        } else if (i3 < i) {
            f = (i * 100.0f) / i3;
        } else {
            f = ((i * 100.0f) / i3) + 1.0f;
        }
        if (f > densityScalingFactor() * 100.0d) {
            return (float) (densityScalingFactor() * 100.0d);
        }
        return f;
    }

    public double densityScalingFactor() {
        return getContext().getResources().getDisplayMetrics().density;
    }
}
