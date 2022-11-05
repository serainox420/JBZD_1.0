package com.openx.sdk.browser;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.graphics.drawable.ColorDrawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.MediaController;
import android.widget.RelativeLayout;
import android.widget.VideoView;
import com.openx.common.utils.helpers.Utils;
import com.openx.core.sdk.OXMManagersResolver;
import com.openx.sdk.event.OXMEvent;
import com.openx.sdk.event.OXMEventsHandler;
import com.openx.sdk.event.OXMEventsListener;
import com.openx.view.WebViewBase;
@SuppressLint({"NewApi"})
/* loaded from: classes3.dex */
public final class AdBrowserActivity extends Activity {
    private static final int BROWSER_CONTROLS_ID = 235799;
    public static final String EXTRA_AD = "EXTRA_AD";
    public static final String EXTRA_AD_EVENTS_LISTENER = "AD_EVENTS_LISTENER";
    public static final String EXTRA_AD_MODEL = "EXTRA_AD_MODEL";
    public static final String EXTRA_ALLOW_ORIENTATION_CHANGES = "EXTRA_ALLOW_ORIENTATION_CHANGES";
    public static final String EXTRA_CONTROLLER_ID = "EXTRA_CONTROLLER_ID";
    public static final String EXTRA_DIM_COLOR = "EXTRA_DIM_COLOR";
    public static final String EXTRA_FORCE_ORIENTATION = "EXTRA_FORCE_ORIENTATION";
    public static final String EXTRA_HAS_CLOSE_BUTTON = "EXTRA_HAS_CLOSE_BUTTON";
    public static final String EXTRA_HEIGHT = "EXTRA_HEIGHT";
    public static final String EXTRA_IS_EXPANDED = "EXTRA_IS_EXPANDED";
    public static final String EXTRA_IS_INTERSTITIAL = "EXTRA_IS_INTERSTITIAL";
    public static final String EXTRA_IS_VIDEO = "EXTRA_IS_VIDEO";
    public static final String EXTRA_LONG_CLOSING_CYCLE = "EXTRA_LONG_CLOSING_CYCLE";
    public static final String EXTRA_URL = "EXTRA_URL";
    public static final String EXTRA_WIDTH = "EXTRA_WIDTH";
    private static final int WEB_VIEW_ID = 235678;
    private OXMEventsListener eventsManager;
    private BrowserControls mBrowserControls;
    private int mDefinedHeightForExpand;
    private int mDefinedWidthForExpand;
    private boolean mIsExpanded;
    private boolean mIsVideo;
    private OXMEventsHandler mOrientationPropertiesEventListener;
    private VideoView mVideoView;
    private WebView mWebView;
    WebViewBase webViewBase;

    private OXMEventsHandler getOrientationPropertiesEventListener() {
        return this.mOrientationPropertiesEventListener;
    }

    private boolean getIsExpanded() {
        return this.mIsExpanded;
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        if (this.mVideoView != null) {
            this.mVideoView.suspend();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        if (this.mVideoView != null) {
            this.mVideoView.resume();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Bundle extras = getIntent().getExtras();
        if (extras.getBoolean(EXTRA_IS_VIDEO) || extras.containsKey(EXTRA_URL)) {
            init();
        }
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    private void init() {
        WebView webView;
        RelativeLayout.LayoutParams layoutParams = null;
        Bundle extras = getIntent().getExtras();
        getWindow().setBackgroundDrawable(new ColorDrawable(-1));
        if (Utils.atLeastHoneycomb()) {
            getWindow().setFlags(16777216, 16777216);
        }
        getWindow().setSoftInputMode(6);
        String string = getIntent().hasExtra(EXTRA_URL) ? extras.getString(EXTRA_URL) : null;
        this.mIsVideo = getIntent().hasExtra(EXTRA_IS_VIDEO) ? extras.getBoolean(EXTRA_IS_VIDEO) : false;
        if (this.mIsVideo) {
            this.mVideoView = new VideoView(this);
            RelativeLayout relativeLayout = new RelativeLayout(this);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams2.addRule(13);
            relativeLayout.addView(this.mVideoView, layoutParams2);
            setContentView(relativeLayout);
            this.mVideoView.setMediaController(new MediaController(this));
            this.mVideoView.setVideoURI(Uri.parse(string));
            this.mVideoView.start();
            return;
        }
        initBrowserControls();
        RelativeLayout relativeLayout2 = new RelativeLayout(this);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(this.mDefinedWidthForExpand == 0 ? -1 : this.mDefinedWidthForExpand, this.mDefinedHeightForExpand == 0 ? -1 : this.mDefinedHeightForExpand);
        if (!TextUtils.isEmpty(string)) {
            this.mWebView = new WebView(this);
            setWebViewSettings();
            this.mWebView.loadUrl(string);
            this.mWebView.setWebViewClient(new WebViewClient() { // from class: com.openx.sdk.browser.AdBrowserActivity.1
                @Override // android.webkit.WebViewClient
                public void onPageFinished(WebView webView2, String str) {
                    if (AdBrowserActivity.this.mBrowserControls != null) {
                        AdBrowserActivity.this.mBrowserControls.updateNavigationButtonsState();
                    }
                    super.onPageFinished(webView2, str);
                }

                @Override // android.webkit.WebViewClient
                public boolean shouldOverrideUrlLoading(WebView webView2, String str) {
                    if (!str.startsWith("http")) {
                        if (AdBrowserActivity.this.mBrowserControls != null) {
                            AdBrowserActivity.this.mBrowserControls.openURLInExternalBrowser(str);
                            return true;
                        }
                        return super.shouldOverrideUrlLoading(webView2, str);
                    }
                    return super.shouldOverrideUrlLoading(webView2, str);
                }
            });
            if (!getIsExpanded()) {
                layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                if (this.mBrowserControls != null) {
                    this.mBrowserControls.showNavigationControls();
                }
                layoutParams3.addRule(3, BROWSER_CONTROLS_ID);
            }
            webView = this.mWebView;
        } else {
            webView = null;
        }
        if (webView != null) {
            webView.setId(WEB_VIEW_ID);
            relativeLayout2.addView(webView, layoutParams3);
        }
        if (this.mBrowserControls != null) {
            relativeLayout2.addView(this.mBrowserControls, layoutParams);
        }
        setContentView(relativeLayout2);
        this.eventsManager = OXMManagersResolver.getInstance().getEventsManager();
        this.eventsManager.registerEventListener(OXMEvent.OXMEventType.ORIENTATION_PROPERTIES_CHANGED, getOrientationPropertiesEventListener());
    }

    private void setWebViewSettings() {
        this.mWebView.getSettings().setJavaScriptEnabled(true);
        this.mWebView.getSettings().setJavaScriptCanOpenWindowsAutomatically(false);
        this.mWebView.getSettings().setPluginState(WebSettings.PluginState.OFF);
        this.mWebView.setHorizontalScrollBarEnabled(false);
        this.mWebView.setVerticalScrollBarEnabled(false);
        this.mWebView.getSettings().setCacheMode(2);
        this.mWebView.getSettings().setBuiltInZoomControls(true);
        if (Utils.atLeastHoneycomb()) {
            this.mWebView.getSettings().setDisplayZoomControls(false);
        }
        this.mWebView.getSettings().setLoadWithOverviewMode(true);
        this.mWebView.getSettings().setUseWideViewPort(true);
    }

    private void initBrowserControls() {
        BrowserControls browserControls = new BrowserControls(this, new BrowserControlsEventsListener() { // from class: com.openx.sdk.browser.AdBrowserActivity.2
            @Override // com.openx.sdk.browser.BrowserControlsEventsListener
            public void setCreatorOfView(Object obj) {
            }

            @Override // com.openx.sdk.browser.BrowserControlsEventsListener
            public void onRelaod() {
                if (AdBrowserActivity.this.mWebView != null) {
                    AdBrowserActivity.this.mWebView.reload();
                }
            }

            @Override // com.openx.sdk.browser.BrowserControlsEventsListener
            public void onGoForward() {
                if (AdBrowserActivity.this.mWebView != null) {
                    AdBrowserActivity.this.mWebView.goForward();
                }
            }

            @Override // com.openx.sdk.browser.BrowserControlsEventsListener
            public void onGoBack() {
                if (AdBrowserActivity.this.mWebView != null) {
                    AdBrowserActivity.this.mWebView.goBack();
                }
            }

            @Override // com.openx.sdk.browser.BrowserControlsEventsListener
            public String getCurrentURL() {
                if (AdBrowserActivity.this.mWebView != null) {
                    return AdBrowserActivity.this.mWebView.getUrl();
                }
                return null;
            }

            @Override // com.openx.sdk.browser.BrowserControlsEventsListener
            public void closeBrowser() {
                AdBrowserActivity.this.eventsManager.fireEvent(new OXMEvent(OXMEvent.OXMEventType.CLOSE_ACTIVE_INTERNAL_WINDOW, this, null));
                AdBrowserActivity.this.finish();
            }

            @Override // com.openx.sdk.browser.BrowserControlsEventsListener
            public boolean canGoForward() {
                return AdBrowserActivity.this.mWebView.canGoForward();
            }

            @Override // com.openx.sdk.browser.BrowserControlsEventsListener
            public boolean canGoBack() {
                return AdBrowserActivity.this.mWebView.canGoBack();
            }
        });
        browserControls.setId(BROWSER_CONTROLS_ID);
        this.mBrowserControls = browserControls;
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (this.mIsVideo) {
            if (this.mVideoView != null) {
                this.mVideoView.stopPlayback();
                return;
            }
            return;
        }
        OXMEventsListener eventsManager = OXMManagersResolver.getInstance().getEventsManager();
        if (this.mBrowserControls != null) {
            this.mBrowserControls.dispose();
        }
        eventsManager.unregisterEventListener(OXMEvent.OXMEventType.ORIENTATION_PROPERTIES_CHANGED, getOrientationPropertiesEventListener());
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (this.mIsVideo) {
            super.onBackPressed();
        }
    }
}
