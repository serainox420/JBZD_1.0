package com.mdotm.android.view;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Base64;
import android.view.GestureDetector;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.GeolocationPermissions;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.facebook.ads.AudienceNetworkActivity;
import com.mdotm.android.listener.MdotMAdActionListener;
import com.mdotm.android.model.MdotMAdResponse;
import com.mdotm.android.mraid.MdotMMraidConstants;
import com.mdotm.android.mraid.MdotMMraidJSInterface;
import com.mdotm.android.utils.MdotMLogger;
import com.mdotm.android.utils.MdotMUtils;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public class MdotMWebView extends WebView implements GestureDetector.OnDoubleTapListener, GestureDetector.OnGestureListener {
    static final FrameLayout.LayoutParams COVER_SCREEN_PARAMS = new FrameLayout.LayoutParams(-1, -1);
    private long elapseTime;
    private long endTime;
    private boolean isWebViewHasFocus;
    private MdotMAdActionListener mActionListener;
    private MdotMAdResponse mAdResponse;
    private FrameLayout mBrowserFrameLayout;
    private FrameLayout mContentView;
    private Context mContext;
    private View mCustomView;
    private WebChromeClient.CustomViewCallback mCustomViewCallback;
    private FrameLayout mCustomViewContainer;
    private GestureDetector mDetector;
    public boolean mIsImpReported;
    private FrameLayout mLayout;
    private MyWebChromeClient mWebChromeClient;
    private long startTime;

    public MdotMWebView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.isWebViewHasFocus = true;
        this.mIsImpReported = false;
        this.startTime = 0L;
        this.elapseTime = 0L;
        this.endTime = 0L;
        init(context);
    }

    public MdotMWebView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.isWebViewHasFocus = true;
        this.mIsImpReported = false;
        this.startTime = 0L;
        this.elapseTime = 0L;
        this.endTime = 0L;
        init(context);
    }

    public MdotMWebView(Context context, AttributeSet attributeSet, int i, boolean z) {
        super(context, attributeSet, i, z);
        this.isWebViewHasFocus = true;
        this.mIsImpReported = false;
        this.startTime = 0L;
        this.elapseTime = 0L;
        this.endTime = 0L;
        init(context);
    }

    public MdotMWebView(Context context, MdotMAdResponse mdotMAdResponse, MdotMAdActionListener mdotMAdActionListener) {
        super(context);
        this.isWebViewHasFocus = true;
        this.mIsImpReported = false;
        this.startTime = 0L;
        this.elapseTime = 0L;
        this.endTime = 0L;
        MdotMLogger.d(this, "html resource MdotMWebView");
        this.mIsImpReported = false;
        this.mActionListener = mdotMAdActionListener;
        this.mAdResponse = mdotMAdResponse;
        init(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.addRule(13);
        setLayoutParams(layoutParams);
        setBackgroundColor(0);
        this.mDetector = new GestureDetector(this);
        this.mDetector.setOnDoubleTapListener(this);
    }

    @Override // android.webkit.WebView, android.view.View
    public void onWindowFocusChanged(boolean z) {
        this.isWebViewHasFocus = z;
        MdotMLogger.d(this, "Webview has focus " + this.isWebViewHasFocus);
    }

    @Override // android.webkit.WebView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
    }

    private void init(Context context) {
        this.mContext = context;
        this.mLayout = new FrameLayout(context);
        this.mBrowserFrameLayout = new FrameLayout(this.mContext);
        this.mContentView = new FrameLayout(this.mContext);
        this.mCustomViewContainer = new FrameLayout(this.mContext);
        this.mBrowserFrameLayout.addView(this.mCustomViewContainer);
        LinearLayout linearLayout = new LinearLayout(this.mContext);
        this.mBrowserFrameLayout.addView(linearLayout);
        linearLayout.addView(this.mContentView);
        this.mLayout.addView(this.mBrowserFrameLayout, COVER_SCREEN_PARAMS);
        WebSettings settings = getSettings();
        settings.setJavaScriptEnabled(true);
        setInitialScale(100);
        setVerticalScrollBarEnabled(false);
        setHorizontalScrollBarEnabled(false);
        addJavascriptInterface(new MdotMMraidJSInterface(this.mActionListener), "mraid");
        setWebViewClient(new WebViewClient() { // from class: com.mdotm.android.view.MdotMWebView.1
            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                MdotMWebView.this.mActionListener.adClicked();
                MdotMLogger.d(this, "Redirecting play store");
                if (MdotMWebView.this.mAdResponse.getCompanion() != null) {
                    int i = 0;
                    while (true) {
                        int i2 = i;
                        if (i2 >= MdotMWebView.this.mAdResponse.getCompanion().vastHtmlClickTrack().size()) {
                            break;
                        }
                        MdotMUtils.getUtilsInstance().reportImpression(MdotMWebView.this.mAdResponse.getCompanion().vastHtmlClickTrack().get(i2), MdotMWebView.this.mContext);
                        MdotMLogger.d(this, "tracking urls" + MdotMWebView.this.mAdResponse.getCompanion().vastHtmlClickTrack().get(i2));
                        i = i2 + 1;
                    }
                }
                MdotMWebView.this.mContext.startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                return true;
            }

            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView, String str) {
                MdotMMraidConstants.mraidState = "default";
                MdotMWebView.this.fireJSEvent(MdotMMraidConstants.EVENT_STATE_CHANGE);
                MdotMMraidConstants.isViewable = true;
                MdotMWebView.this.fireJSEvent(MdotMMraidConstants.EVENT_VIEWABLECHANGE);
                super.onPageFinished(webView, str);
                MdotMWebView.this.fireJSEvent("ready");
            }

            @Override // android.webkit.WebViewClient
            public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
                super.onPageStarted(webView, str, bitmap);
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView, int i, String str, String str2) {
                MdotMWebView.this.fireJSEvent("error");
            }
        });
        setWebChromeClient(new WebChromeClient());
        settings.setAllowFileAccess(true);
        if (Build.VERSION.SDK_INT > 7) {
            settings.setPluginState(WebSettings.PluginState.ON);
        }
        MdotMLogger.d(this, "loading the url " + this.mAdResponse.getImageUrl());
        if (this.mAdResponse.getImageUrl().contains("\"mraid.js\"")) {
            this.mAdResponse.setImageUrl(this.mAdResponse.getImageUrl().replace("<head>", injectExtraJS()));
            MdotMLogger.d(this, "replacing string" + MdotMMraidConstants.mraidJS);
            MdotMMraidConstants.mraidState = "loading";
        }
        if (this.mAdResponse.getImageUrl().contains("\"mraid.js\"")) {
            String str = null;
            if (this.mAdResponse.getImageUrl().contains("<script src=\"mraid.js\"/>")) {
                str = this.mAdResponse.getImageUrl().replace("<script src=\"mraid.js\"/>", "");
            } else if (this.mAdResponse.getImageUrl().contains("<script src\"mraid.js\"></script>")) {
                str = this.mAdResponse.getImageUrl().replace("<script src\"mraid.js\"></script>", "");
            } else if (this.mAdResponse.getImageUrl().contains("<script type=\"application/javascript\" src=\"mraid.js\"></script>")) {
                str = this.mAdResponse.getImageUrl().replace("<script type=\"application/javascript\" src=\"mraid.js\"></script>", "");
            }
            this.mAdResponse.setImageUrl(str);
        }
        loadData(this.mAdResponse.getImageUrl(), "text/html", AudienceNetworkActivity.WEBVIEW_ENCODING);
        if (this.mAdResponse.getImpression() != null) {
            for (int i = 0; i < this.mAdResponse.getImpression().size(); i++) {
                MdotMUtils.getUtilsInstance().reportImpression(this.mAdResponse.getImpression().get(i), this.mContext);
                MdotMLogger.d(this, "tracking urls" + this.mAdResponse.getImpression().get(i));
            }
        }
        setFocusable(true);
        MdotMLogger.d(this, "Normal interstitial" + this.mAdResponse.getImageUrl());
    }

    public FrameLayout getLayout() {
        return this.mLayout;
    }

    public boolean inCustomView() {
        return this.mCustomView != null;
    }

    public void hideCustomView() {
        this.mWebChromeClient.onHideCustomView();
    }

    @Override // android.webkit.WebView, android.view.View, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4 && this.mCustomView == null && canGoBack()) {
            goBack();
            return true;
        }
        return super.onKeyDown(i, keyEvent);
    }

    /* loaded from: classes3.dex */
    private class MyWebChromeClient extends WebChromeClient {
        private ProgressBar mVideoProgressView;

        private MyWebChromeClient() {
        }

        @Override // android.webkit.WebChromeClient
        public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
            MdotMWebView.this.setVisibility(8);
            if (MdotMWebView.this.mCustomView == null) {
                MdotMWebView.this.mCustomViewContainer.addView(view);
                MdotMWebView.this.mCustomView = view;
                MdotMWebView.this.mCustomViewCallback = customViewCallback;
                MdotMWebView.this.mCustomViewContainer.setVisibility(0);
                return;
            }
            customViewCallback.onCustomViewHidden();
        }

        @Override // android.webkit.WebChromeClient
        public void onHideCustomView() {
            if (MdotMWebView.this.mCustomView != null) {
                MdotMWebView.this.mCustomView.setVisibility(8);
                MdotMWebView.this.mCustomViewContainer.removeView(MdotMWebView.this.mCustomView);
                MdotMWebView.this.mCustomView = null;
                MdotMWebView.this.mCustomViewContainer.setVisibility(8);
                MdotMWebView.this.mCustomViewCallback.onCustomViewHidden();
                MdotMWebView.this.setVisibility(0);
                MdotMWebView.this.goBack();
            }
        }

        @Override // android.webkit.WebChromeClient
        public View getVideoLoadingProgressView() {
            if (this.mVideoProgressView == null) {
                this.mVideoProgressView = new ProgressBar(MdotMWebView.this.getContext());
                this.mVideoProgressView.setIndeterminate(false);
                this.mVideoProgressView.setLayoutParams(new RelativeLayout.LayoutParams(40, 40));
                this.mVideoProgressView.setVisibility(4);
                this.mVideoProgressView.setMinimumHeight(10);
                this.mVideoProgressView.setMinimumWidth(10);
                this.mVideoProgressView.setMax(100);
            }
            return this.mVideoProgressView;
        }

        @Override // android.webkit.WebChromeClient
        public void onReceivedTitle(WebView webView, String str) {
            ((Activity) MdotMWebView.this.mContext).setTitle(str);
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i) {
            ((Activity) MdotMWebView.this.mContext).getWindow().setFeatureInt(2, i * 100);
        }

        @Override // android.webkit.WebChromeClient
        public void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
            callback.invoke(str, true, false);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        this.mDetector.onTouchEvent(motionEvent);
        return super.onTouchEvent(motionEvent);
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTap(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onDoubleTapEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.GestureDetector.OnDoubleTapListener
    public boolean onSingleTapConfirmed(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onDown(MotionEvent motionEvent) {
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onFling(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onLongPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        return false;
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public void onShowPress(MotionEvent motionEvent) {
    }

    @Override // android.view.GestureDetector.OnGestureListener
    public boolean onSingleTapUp(MotionEvent motionEvent) {
        return false;
    }

    public void loadblankview() {
        loadUrl("about:blank");
    }

    private String injectExtraJS() {
        if (TextUtils.isEmpty(MdotMMraidConstants.mraidJS)) {
            MdotMMraidConstants.mraidJS = new String(Base64.decode(MdotMMraidConstants.mraidJSEncoded, 0));
        }
        return MdotMMraidConstants.mraidJS;
    }

    public void fireJSEvent(String str) {
        if (Build.VERSION.SDK_INT >= 19) {
            evaluateJavascript("fireEventForReady('" + str + "');", new ValueCallback<String>() { // from class: com.mdotm.android.view.MdotMWebView.2
                @Override // android.webkit.ValueCallback
                public void onReceiveValue(String str2) {
                    MdotMLogger.d(this, "evaluate js complete: " + str2);
                }
            });
            return;
        }
        MdotMLogger.d(this, "loading url: mraid.fireReadyEvent();");
        loadUrl("javascript:fireEventForReady(" + str + ");");
    }
}
