package com.apprupt.sdk;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.apprupt.sdk.Logger;
import com.mopub.mobileads.resource.DrawableConstants;
@SuppressLint({"SetJavaScriptEnabled"})
/* loaded from: classes.dex */
public class CvOverlayActivity extends Activity {

    /* renamed from: a  reason: collision with root package name */
    CvLauncher f1877a;
    WebView b;
    private boolean c = false;
    private boolean d = false;
    private long e = 0;

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (Build.VERSION.SDK_INT >= 11) {
            getWindow().setFlags(16777216, 16777216);
        }
        this.f1877a = new CvLauncher(this);
        final RelativeLayout relativeLayout = new RelativeLayout(this);
        relativeLayout.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
        try {
            this.b = CvOverlayLoader.f1880a.remove(0);
            this.b.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            this.b.getSettings().setJavaScriptEnabled(true);
            final LinearLayout linearLayout = new LinearLayout(this);
            linearLayout.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
            linearLayout.setGravity(17);
            linearLayout.setBackgroundColor(Color.argb((int) DrawableConstants.CtaButton.WIDTH_DIPS, 0, 0, 0));
            linearLayout.setClickable(true);
            ProgressBar progressBar = new ProgressBar(this, null, 16843400);
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2);
            layoutParams.gravity = 17;
            progressBar.setLayoutParams(layoutParams);
            linearLayout.addView(progressBar);
            this.b.setWebViewClient(new WebViewClient() { // from class: com.apprupt.sdk.CvOverlayActivity.1
                @Override // android.webkit.WebViewClient
                public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                    if (CvOverlayActivity.this.f1877a.a(str, CvAdType.IN_PLACE)) {
                        webView.loadUrl(str);
                        return true;
                    }
                    return true;
                }

                @Override // android.webkit.WebViewClient
                public void onPageFinished(WebView webView, String str) {
                    CvViewHelper.a(new Runnable() { // from class: com.apprupt.sdk.CvOverlayActivity.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (linearLayout.getParent() != null) {
                                relativeLayout.removeView(linearLayout);
                            }
                        }
                    });
                    Logger.a("OVERLAY_PAGE").d("Page", str, "loaded successfully");
                    CvOverlayActivity.this.d = true;
                }

                @Override // android.webkit.WebViewClient
                public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                    Logger.a("OVERLAY_PAGE").d("Hiding overlay after error" + webResourceError.getErrorCode() + ":", webResourceError.getDescription(), " (URL:", webResourceRequest.getUrl().toString() + ")");
                    CvOverlayActivity.this.finish();
                }

                @Override // android.webkit.WebViewClient
                public void onReceivedError(WebView webView, int i, String str, String str2) {
                    Logger.a("OVERLAY_PAGE").d("Hiding overlay after error" + i + ":", str, " (URL:", str2 + ")");
                    CvOverlayActivity.this.finish();
                }
            });
            ViewParent parent = this.b.getParent();
            if (parent != null && (parent instanceof ViewGroup)) {
                ((ViewGroup) parent).removeView(this.b);
            }
            relativeLayout.addView(this.b);
            relativeLayout.addView(linearLayout);
            setContentView(relativeLayout, new ViewGroup.LayoutParams(-1, -1));
        } catch (IndexOutOfBoundsException e) {
            a();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        long currentTimeMillis = System.currentTimeMillis();
        if (this.d || (this.e > 0 && System.currentTimeMillis() - this.e > 5000)) {
            super.onBackPressed();
            return;
        }
        Logger.log a2 = Logger.a("OVERLAY_PAGE");
        Object[] objArr = new Object[2];
        objArr[0] = "Back button blocked";
        objArr[1] = this.e > 0 ? " (time left: " + (5000 - (currentTimeMillis - this.e)) + "ms)" : "";
        a2.d(objArr);
    }

    @Override // android.app.Activity
    public void onPause() {
        super.onPause();
        this.c = true;
        CvAdColony.a();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        CvAdColony.a(this);
        if (this.c) {
            finish();
        } else if (this.e == 0) {
            this.e = System.currentTimeMillis();
        }
    }

    public void a() {
        finish();
    }
}
