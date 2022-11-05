package com.mdotm.android.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.view.Display;
import android.view.WindowManager;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.google.android.gms.drive.DriveFile;
import com.mdotm.android.listener.MdotMAdActionListener;
import com.mdotm.android.model.MdotMAdResponse;
import com.mdotm.android.utils.MdotMLogger;
/* loaded from: classes3.dex */
public class MdotMXhtmlView extends RelativeLayout {
    private ProgressBar activityIndicator;
    private boolean adSelectionInProgress;
    private int deviceHeight;
    private int deviceWidth;
    Handler handler;
    private MdotMAdActionListener mActionListener;
    private MdotMAdResponse mAdResponse;
    private WebView webView;
    private MdotMWebView webView1;

    public MdotMXhtmlView(Context context, MdotMAdResponse mdotMAdResponse, MdotMAdActionListener mdotMAdActionListener) {
        super(context);
        this.webView = null;
        MdotMLogger.i(this, "html resource HtmlView");
        this.handler = new Handler();
        this.mActionListener = mdotMAdActionListener;
        this.mAdResponse = mdotMAdResponse;
        getHeightAndWidth();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(getDevWidth(), getDevHeight());
        layoutParams.addRule(2);
        layoutParams.addRule(13);
        setLayoutParams(layoutParams);
        setGravity(17);
        this.activityIndicator = new ProgressBar(getContext());
        this.activityIndicator.setIndeterminate(false);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(40, 40);
        this.activityIndicator.setLayoutParams(layoutParams2);
        this.activityIndicator.setVisibility(4);
        this.activityIndicator.setMinimumHeight(8);
        this.activityIndicator.setMinimumWidth(8);
        this.activityIndicator.setMax(100);
        if (this.activityIndicator != null) {
            this.activityIndicator.setId(3);
            layoutParams2.addRule(13);
        }
        addView(this.activityIndicator);
        this.webView = new WebView(context);
        this.webView.getSettings().setJavaScriptEnabled(true);
        this.webView.setWebViewClient(new AnonymousClass1());
        initView(context);
    }

    /* renamed from: com.mdotm.android.view.MdotMXhtmlView$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    class AnonymousClass1 extends WebViewClient {
        Runnable run = new Runnable() { // from class: com.mdotm.android.view.MdotMXhtmlView.1.1
            @Override // java.lang.Runnable
            public void run() {
                if (AnonymousClass1.this.timeout) {
                    MdotMLogger.e(this, "timeout loading landing url");
                    MdotMXhtmlView.this.webView.stopLoading();
                    MdotMXhtmlView.this.adNetworkCompleted();
                    AnonymousClass1.this.timeout = false;
                }
            }
        };
        boolean timeout;

        AnonymousClass1() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            MdotMLogger.i(this, "started Loading url " + str);
            if (MdotMXhtmlView.this.isAdSelectionInProgress()) {
                this.timeout = true;
                MdotMXhtmlView.this.handler.removeCallbacks(this.run);
                MdotMXhtmlView.this.handler.postDelayed(this.run, 15000L);
            }
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            MdotMLogger.i(this, "returned url " + str);
            if (str != null && str.startsWith("market://")) {
                try {
                    webView.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                    MdotMXhtmlView.this.mActionListener.leaveApplication();
                } catch (Exception e) {
                    MdotMLogger.e(this, "Google Play store app is not installed");
                    e.printStackTrace();
                }
                this.timeout = false;
                MdotMXhtmlView.this.adNetworkCompleted();
                return true;
            }
            MdotMLogger.i(this, "loading other url " + str);
            return super.shouldOverrideUrlLoading(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            this.timeout = false;
            MdotMLogger.i(this, "Click page finished " + str);
            MdotMXhtmlView.this.adNetworkCompleted();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            this.timeout = false;
            if (MdotMXhtmlView.this.isAdSelectionInProgress()) {
                MdotMLogger.e(this, "Unable to load landing url : " + str);
            } else {
                MdotMLogger.e(this, "Unable to report impression : " + str);
            }
            MdotMXhtmlView.this.adNetworkCompleted();
        }
    }

    private void initView(Context context) {
        this.webView1 = new MdotMWebView(context, this.mAdResponse, this.mActionListener);
        addView(this.webView1);
        RelativeLayout relativeLayout = new RelativeLayout(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(this.mAdResponse.getWidth(), this.mAdResponse.getHeight());
        layoutParams.addRule(13);
        relativeLayout.setLayoutParams(layoutParams);
        relativeLayout.setBackgroundColor(0);
        addView(relativeLayout);
    }

    private void setAdSelectionInProgress(boolean z) {
        this.adSelectionInProgress = z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isAdSelectionInProgress() {
        return this.adSelectionInProgress;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void adNetworkCompleted() {
        MdotMLogger.i(this, "On ad network completed");
        setAdSelectionInProgress(false);
        hideActivityIndicator();
    }

    private void showActivityIndicator() {
        post(new Thread() { // from class: com.mdotm.android.view.MdotMXhtmlView.2
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                if (MdotMXhtmlView.this.activityIndicator != null) {
                    MdotMXhtmlView.this.activityIndicator.bringToFront();
                    MdotMXhtmlView.this.activityIndicator.setVisibility(0);
                }
            }
        });
    }

    private void hideActivityIndicator() {
        post(new Thread() { // from class: com.mdotm.android.view.MdotMXhtmlView.3
            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                if (MdotMXhtmlView.this.activityIndicator != null) {
                    MdotMXhtmlView.this.activityIndicator.setVisibility(4);
                }
            }
        });
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [com.mdotm.android.view.MdotMXhtmlView$4] */
    protected void clicked(Context context) {
        MdotMLogger.i(this, "  Selected to clicked  ");
        if (this.mAdResponse.getLandingUrl() != null) {
            if (!isAdSelectionInProgress()) {
                final String landingUrl = this.mAdResponse.getLandingUrl();
                setAdSelectionInProgress(true);
                showActivityIndicator();
                new Thread() { // from class: com.mdotm.android.view.MdotMXhtmlView.4
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        MdotMXhtmlView.this.mActionListener.adClicked();
                        MdotMLogger.i(this, "Launch type is " + MdotMXhtmlView.this.mAdResponse.getLaunchType());
                        if (MdotMXhtmlView.this.mAdResponse.getLaunchType() == 2) {
                            Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(landingUrl));
                            intent.addFlags(DriveFile.MODE_READ_ONLY);
                            try {
                                MdotMXhtmlView.this.getContext().startActivity(intent);
                            } catch (Exception e) {
                                MdotMLogger.i(this, "Could not open browser on ad click to " + e);
                            }
                            MdotMLogger.i(this, "Leaving app");
                            MdotMXhtmlView.this.mActionListener.leaveApplication();
                            MdotMXhtmlView.this.adNetworkCompleted();
                            return;
                        }
                        Handler handler = MdotMXhtmlView.this.handler;
                        final String str = landingUrl;
                        handler.post(new Runnable() { // from class: com.mdotm.android.view.MdotMXhtmlView.4.1
                            @Override // java.lang.Runnable
                            public void run() {
                                MdotMXhtmlView.this.webView.loadUrl(str);
                            }
                        });
                    }
                }.start();
                return;
            }
            MdotMLogger.i(this, "ad selection under progress");
            return;
        }
        MdotMLogger.i(this, "selected ad is null");
    }

    private int getDevHeight() {
        return this.deviceHeight - getInDp(25);
    }

    private int getDevWidth() {
        return this.deviceWidth;
    }

    private int getReducedHeight() {
        return this.deviceHeight - getInDp(25);
    }

    private int getInDp(int i) {
        return (int) ((getContext().getResources().getDisplayMetrics().density * i) + 0.5f);
    }

    @TargetApi(13)
    private void getHeightAndWidth() {
        Display defaultDisplay = ((WindowManager) getContext().getSystemService("window")).getDefaultDisplay();
        if (Build.VERSION.SDK_INT < 13) {
            this.deviceWidth = defaultDisplay.getWidth();
            this.deviceHeight = defaultDisplay.getHeight();
            return;
        }
        Point point = new Point();
        defaultDisplay.getSize(point);
        this.deviceWidth = point.x;
        this.deviceHeight = point.y;
    }

    public void loadblankview() {
        this.webView1.loadblankview();
    }

    public void fireMraidEvent(String str) {
        this.webView1.fireJSEvent(str);
    }
}
