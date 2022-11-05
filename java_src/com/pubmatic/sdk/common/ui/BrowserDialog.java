package com.pubmatic.sdk.common.ui;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.net.http.SslError;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JavascriptInterface;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.URI;
import java.net.URISyntaxException;
/* loaded from: classes3.dex */
public class BrowserDialog extends Dialog {
    private static final int ActionBarHeightDp = 40;
    private ImageView backButton;
    private Context context;
    private ImageView forwardButton;
    private final Handler handler;
    private boolean isWebViewLaunched;
    private View.OnTouchListener mButtonTouchListener;
    private RelativeLayout mContentView;
    private ProgressBar progressBar;
    private WebView sslWebView;
    private String url;
    private WebView webView;
    private RelativeLayout.LayoutParams webViewLayoutParams;

    /* loaded from: classes3.dex */
    public interface Handler {
        void browserDialogDismissed(BrowserDialog browserDialog);

        void browserDialogOpenUrl(BrowserDialog browserDialog, String str, boolean z);
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public BrowserDialog(Context context, String str, Handler handler) {
        super(context, 16973833);
        this.url = null;
        this.backButton = null;
        this.forwardButton = null;
        this.webView = null;
        this.sslWebView = null;
        this.mButtonTouchListener = new View.OnTouchListener() { // from class: com.pubmatic.sdk.common.ui.BrowserDialog.7
            @Override // android.view.View.OnTouchListener
            public boolean onTouch(View view, MotionEvent motionEvent) {
                switch (motionEvent.getAction()) {
                    case 0:
                        view.setBackgroundColor(BrowserDialog.this.getContext().getResources().getColor(17170447));
                        return false;
                    default:
                        view.setBackgroundColor(BrowserDialog.this.getContext().getResources().getColor(17170446));
                        return false;
                }
            }
        };
        this.url = str;
        this.context = context;
        this.handler = handler;
        Resources resources = getContext().getResources();
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-1, -1);
        this.mContentView = new RelativeLayout(getContext());
        this.mContentView.setBackgroundColor(-1);
        setContentView(this.mContentView, layoutParams);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, dpToPx(40));
        layoutParams2.addRule(12);
        LinearLayout linearLayout = new LinearLayout(getContext());
        linearLayout.setBackgroundColor(-15066598);
        linearLayout.setOrientation(0);
        linearLayout.setVerticalGravity(16);
        this.mContentView.addView(linearLayout, layoutParams2);
        LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -1, 1.0f);
        layoutParams3.setMargins(2, 4, 2, 2);
        ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_CENTER;
        ImageView imageView = new ImageView(getContext());
        imageView.setScaleType(scaleType);
        imageView.setImageDrawable(new BitmapDrawable(resources, BrowserDialog.class.getResourceAsStream("/ic_action_cancel.png")));
        imageView.setBackgroundColor(getContext().getResources().getColor(17170446));
        imageView.setOnTouchListener(this.mButtonTouchListener);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.pubmatic.sdk.common.ui.BrowserDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BrowserDialog.this.webView.loadUrl("about:blank");
                BrowserDialog.this.dismiss();
            }
        });
        linearLayout.addView(imageView, layoutParams3);
        this.backButton = new ImageView(getContext());
        this.backButton.setImageDrawable(new BitmapDrawable(resources, BrowserDialog.class.getResourceAsStream("/ic_action_back.png")));
        this.backButton.setBackgroundColor(getContext().getResources().getColor(17170446));
        this.backButton.setScaleType(scaleType);
        this.backButton.setEnabled(true);
        imageView.setOnTouchListener(this.mButtonTouchListener);
        this.backButton.setOnClickListener(new View.OnClickListener() { // from class: com.pubmatic.sdk.common.ui.BrowserDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (BrowserDialog.this.sslWebView != null) {
                    BrowserDialog.this.dismissSSLWebView();
                    if (!BrowserDialog.this.isWebViewLaunched) {
                        BrowserDialog.this.dismiss();
                    }
                } else if (BrowserDialog.this.webView.canGoBack()) {
                    BrowserDialog.this.webView.goBack();
                } else {
                    BrowserDialog.this.dismiss();
                }
            }
        });
        linearLayout.addView(this.backButton, layoutParams3);
        this.forwardButton = new ImageView(getContext());
        this.forwardButton.setImageDrawable(new BitmapDrawable(resources, BrowserDialog.class.getResourceAsStream("/ic_action_forward.png")));
        this.forwardButton.setBackgroundColor(getContext().getResources().getColor(17170446));
        this.forwardButton.setScaleType(scaleType);
        this.forwardButton.setEnabled(false);
        imageView.setOnTouchListener(this.mButtonTouchListener);
        this.forwardButton.setOnClickListener(new View.OnClickListener() { // from class: com.pubmatic.sdk.common.ui.BrowserDialog.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BrowserDialog.this.webView.goForward();
            }
        });
        linearLayout.addView(this.forwardButton, layoutParams3);
        ImageView imageView2 = new ImageView(getContext());
        imageView2.setScaleType(scaleType);
        imageView2.setImageDrawable(new BitmapDrawable(resources, BrowserDialog.class.getResourceAsStream("/ic_action_refresh.png")));
        imageView2.setBackgroundColor(getContext().getResources().getColor(17170446));
        imageView2.setOnTouchListener(this.mButtonTouchListener);
        imageView2.setOnClickListener(new View.OnClickListener() { // from class: com.pubmatic.sdk.common.ui.BrowserDialog.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BrowserDialog.this.webView.reload();
            }
        });
        linearLayout.addView(imageView2, layoutParams3);
        ImageView imageView3 = new ImageView(getContext());
        imageView3.setScaleType(scaleType);
        imageView3.setImageDrawable(new BitmapDrawable(resources, BrowserDialog.class.getResourceAsStream("/ic_action_web_site.png")));
        imageView3.setBackgroundColor(getContext().getResources().getColor(17170446));
        imageView3.setOnTouchListener(this.mButtonTouchListener);
        imageView3.setOnClickListener(new View.OnClickListener() { // from class: com.pubmatic.sdk.common.ui.BrowserDialog.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                BrowserDialog.this.handler.browserDialogOpenUrl(BrowserDialog.this, BrowserDialog.this.url, true);
            }
        });
        linearLayout.addView(imageView3, layoutParams3);
        this.webViewLayoutParams = new RelativeLayout.LayoutParams(-1, 0);
        this.webViewLayoutParams.addRule(10);
        this.webViewLayoutParams.addRule(2, linearLayout.getId());
        this.webView = new WebView(getContext());
        this.webView.setWebViewClient(new Client());
        this.webView.getSettings().setJavaScriptEnabled(true);
        this.webView.getSettings().setLoadWithOverviewMode(true);
        this.webView.getSettings().setUseWideViewPort(true);
        this.mContentView.addView(this.webView, this.webViewLayoutParams);
        setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: com.pubmatic.sdk.common.ui.BrowserDialog.6
            @Override // android.content.DialogInterface.OnDismissListener
            public void onDismiss(DialogInterface dialogInterface) {
                BrowserDialog.this.webView.loadUrl("about:blank");
                BrowserDialog.this.dismissSSLWebView();
                BrowserDialog.this.dismiss();
                BrowserDialog.this.handler.browserDialogDismissed(BrowserDialog.this);
            }
        });
        this.progressBar = new ProgressBar(getContext(), null, 16842871);
    }

    public int pxToDp(float f) {
        return (int) ((f / Resources.getSystem().getDisplayMetrics().density) + 0.5f);
    }

    public int dpToPx(int i) {
        return (int) ((Resources.getSystem().getDisplayMetrics().density * i) + 0.5f);
    }

    public void loadUrl(String str) {
        this.url = str;
        this.webView.stopLoading();
        this.webView.clearHistory();
        this.webView.loadUrl(str);
    }

    @Override // android.app.Dialog
    protected void onStart() {
        super.onStart();
        this.webView.loadUrl(this.url);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void createSSLWebView() {
        dismissSSLWebView();
        this.sslWebView = new WebView(getContext());
        this.sslWebView.setWebViewClient(new SSLClient());
        this.mContentView.addView(this.sslWebView, this.webViewLayoutParams);
        this.sslWebView.bringToFront();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void dismissSSLWebView() {
        try {
            if (this.sslWebView != null) {
                try {
                    ((Activity) this.context).runOnUiThread(new Runnable() { // from class: com.pubmatic.sdk.common.ui.BrowserDialog.8
                        @Override // java.lang.Runnable
                        public void run() {
                            BrowserDialog.this.mContentView.removeView(BrowserDialog.this.sslWebView);
                            BrowserDialog.this.sslWebView.loadUrl("about:blank");
                            BrowserDialog.this.sslWebView.destroy();
                            BrowserDialog.this.sslWebView = null;
                        }
                    });
                } catch (Exception e) {
                    this.mContentView.removeView(this.sslWebView);
                    this.sslWebView.loadUrl("about:blank");
                    this.sslWebView.destroy();
                    this.sslWebView = null;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    @SuppressLint({"JavascriptInterface"})
    protected void loadSslErrorPage(final SslErrorHandler sslErrorHandler) {
        try {
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(BrowserDialog.class.getResourceAsStream("/html/ssl_error.html"), "UTF-8"), 16384);
            StringBuilder sb = new StringBuilder();
            char[] cArr = new char[4096];
            while (true) {
                int read = bufferedReader.read(cArr);
                if (read != -1) {
                    sb.append(cArr, 0, read);
                } else {
                    this.sslWebView.getSettings().setJavaScriptEnabled(true);
                    this.sslWebView.addJavascriptInterface(new Object() { // from class: com.pubmatic.sdk.common.ui.BrowserDialog.9
                        @JavascriptInterface
                        public void onHostNameSet() {
                            Log.i("BrowserDialog", "Host name is set");
                        }

                        @JavascriptInterface
                        public void onProceedClicked() {
                            try {
                                BrowserDialog.this.dismissSSLWebView();
                                sslErrorHandler.proceed();
                                ((Activity) BrowserDialog.this.context).runOnUiThread(new Runnable() { // from class: com.pubmatic.sdk.common.ui.BrowserDialog.9.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        BrowserDialog.this.progressBar.setVisibility(0);
                                    }
                                });
                            } catch (Exception e) {
                                Log.e("BrowserDialog", "Not able to proceed from ssl warning page.");
                            }
                        }

                        @JavascriptInterface
                        public void onBackClicked() {
                            BrowserDialog.this.dismissSSLWebView();
                            if (!BrowserDialog.this.isWebViewLaunched) {
                                BrowserDialog.this.dismiss();
                            }
                        }
                    }, "JsHandler");
                    this.sslWebView.loadData(sb.toString(), "text/html; charset=UTF-8", null);
                    return;
                }
            }
        } catch (Exception e) {
            Log.e("BrowserDialog", "Error loading ssl_error.html " + e.getMessage());
        }
    }

    /* loaded from: classes3.dex */
    private class Client extends WebViewClient {
        private Client() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            if (BrowserDialog.this.progressBar.getParent() == null) {
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                layoutParams.addRule(13);
                BrowserDialog.this.mContentView.addView(BrowserDialog.this.progressBar, layoutParams);
            }
            BrowserDialog.this.progressBar.setVisibility(0);
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            BrowserDialog.this.createSSLWebView();
            BrowserDialog.this.loadSslErrorPage(sslErrorHandler);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            BrowserDialog.this.progressBar.setVisibility(8);
            super.onReceivedError(webView, i, str, str2);
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            BrowserDialog.this.backButton.setEnabled(true);
            BrowserDialog.this.forwardButton.setEnabled(webView.canGoForward());
            BrowserDialog.this.progressBar.setVisibility(8);
            BrowserDialog.this.isWebViewLaunched = true;
            if ("about:blank".equalsIgnoreCase(str)) {
                BrowserDialog.this.dismiss();
            }
        }

        @Override // android.webkit.WebViewClient
        @SuppressLint({"DefaultLocale"})
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            try {
                if (new URI(str).getScheme().toLowerCase().startsWith("http")) {
                    return false;
                }
            } catch (URISyntaxException e) {
            }
            BrowserDialog.this.handler.browserDialogOpenUrl(BrowserDialog.this, str, false);
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class SSLClient extends WebViewClient {
        private SSLClient() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            BrowserDialog.this.forwardButton.setEnabled(webView.canGoForward());
            BrowserDialog.this.progressBar.setVisibility(8);
            if (BrowserDialog.this.sslWebView != null) {
                BrowserDialog.this.sslWebView.loadUrl("javascript:setHostName('" + BrowserDialog.this.url + "')");
            }
        }
    }
}
