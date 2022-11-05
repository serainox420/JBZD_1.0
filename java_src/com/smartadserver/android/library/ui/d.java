package com.smartadserver.android.library.ui;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.drawable.GradientDrawable;
import android.os.Build;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.smartadserver.android.library.controller.mraid.e;
import com.smartadserver.android.library.controller.mraid.f;
/* compiled from: SASWebView.java */
/* loaded from: classes3.dex */
public class d extends RelativeLayout {

    /* renamed from: a  reason: collision with root package name */
    private static final String f5616a = d.class.getSimpleName();
    private WebView b;
    private boolean c;
    private boolean d;
    private ImageButton e;
    private LinearLayout f;

    @TargetApi(17)
    public d(Context context) {
        super(context);
        this.c = false;
        this.d = false;
        this.b = new WebView(context) { // from class: com.smartadserver.android.library.ui.d.1
            @Override // android.webkit.WebView
            public void loadUrl(String str) {
                synchronized (d.this) {
                    if (!d.this.c) {
                        super.loadUrl(str);
                    }
                }
            }

            @Override // android.webkit.WebView
            public void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
                synchronized (d.this) {
                    if (!d.this.c) {
                        super.loadDataWithBaseURL(str, str2, str3, str4, str5);
                    }
                }
            }

            @Override // android.webkit.WebView
            public void clearView() {
                synchronized (d.this) {
                    if (!d.this.c) {
                        super.clearView();
                    }
                }
            }

            @Override // android.view.View
            public boolean onKeyPreIme(int i, KeyEvent keyEvent) {
                boolean z;
                if (keyEvent.getAction() == 1) {
                    if (i == 25 || i == 24) {
                        z = true;
                    } else if (i == 4) {
                        z = !((InputMethodManager) getContext().getSystemService("input_method")).hideSoftInputFromWindow(getWindowToken(), 0);
                    } else {
                        z = false;
                    }
                    if (z && (d.this.getParent() instanceof SASAdView)) {
                        return ((SASAdView) d.this.getParent()).onKeyPreIme(i, keyEvent);
                    }
                    return false;
                }
                return false;
            }
        };
        WebSettings settings = this.b.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setPluginState(WebSettings.PluginState.ON);
        if (Build.VERSION.SDK_INT >= 17) {
            settings.setMediaPlaybackRequiresUserGesture(false);
        }
        settings.setDomStorageEnabled(true);
        if (Build.VERSION.SDK_INT < 19) {
            settings.setSupportMultipleWindows(true);
        }
        this.b.setScrollBarStyle(33554432);
        this.b.setVerticalScrollBarEnabled(false);
        this.b.setHorizontalScrollBarEnabled(false);
        this.b.setFocusable(true);
        this.b.setFocusableInTouchMode(true);
        addView(this.b, new RelativeLayout.LayoutParams(-1, -1));
        e();
        super.setBackgroundColor(0);
    }

    private void e() {
        Context context = getContext();
        this.f = new LinearLayout(context);
        this.f.setOrientation(0);
        GradientDrawable gradientDrawable = new GradientDrawable(GradientDrawable.Orientation.TOP_BOTTOM, new int[]{-10395039, -15527149});
        gradientDrawable.setCornerRadius(BitmapDescriptorFactory.HUE_RED);
        this.f.setBackgroundDrawable(gradientDrawable);
        ImageButton imageButton = new ImageButton(context);
        imageButton.setBackgroundColor(0);
        imageButton.setImageBitmap(com.smartadserver.android.library.f.a.j);
        imageButton.setOnClickListener(new View.OnClickListener() { // from class: com.smartadserver.android.library.ui.d.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                d.this.b.goBack();
            }
        });
        ImageButton imageButton2 = new ImageButton(context);
        imageButton2.setBackgroundColor(0);
        imageButton2.setImageBitmap(com.smartadserver.android.library.f.a.k);
        imageButton2.setOnClickListener(new View.OnClickListener() { // from class: com.smartadserver.android.library.ui.d.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                d.this.b.goForward();
            }
        });
        ImageButton imageButton3 = new ImageButton(context);
        imageButton3.setBackgroundColor(0);
        imageButton3.setImageBitmap(com.smartadserver.android.library.f.a.l);
        imageButton3.setOnClickListener(new View.OnClickListener() { // from class: com.smartadserver.android.library.ui.d.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                d.this.b.reload();
            }
        });
        this.e = new ImageButton(context);
        this.e.setBackgroundColor(0);
        this.e.setImageBitmap(com.smartadserver.android.library.f.a.m);
        this.f.addView(imageButton);
        this.f.addView(imageButton2);
        this.f.addView(imageButton3);
        ImageView imageView = new ImageView(context);
        this.f.addView(imageView);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) imageView.getLayoutParams();
        layoutParams.width = 0;
        layoutParams.height = -1;
        layoutParams.weight = 1.0f;
        this.f.addView(this.e);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams2.addRule(12, -1);
        this.f.setVisibility(8);
        addView(this.f, layoutParams2);
    }

    public void setCloseButtonOnClickListener(View.OnClickListener onClickListener) {
        this.e.setOnClickListener(onClickListener);
    }

    @Override // android.view.View
    public void setBackgroundColor(int i) {
        this.b.setBackgroundColor(i);
    }

    @Override // android.view.View
    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.b.setOnTouchListener(onTouchListener);
    }

    public WebSettings getSettings() {
        return this.b.getSettings();
    }

    public void a(Object obj, String str) {
        this.b.addJavascriptInterface(obj, str);
    }

    public void a(String str) {
        if (!str.startsWith("javascript:")) {
            this.d = false;
        }
        this.b.loadUrl(str);
    }

    public void a(String str, String str2, String str3, String str4, String str5) {
        this.d = true;
        this.b.loadDataWithBaseURL(str, str2, str3, str4, str5);
    }

    public void a() {
        a("about:blank");
    }

    public void setWebViewClient(WebViewClient webViewClient) {
        this.b.setWebViewClient(webViewClient);
    }

    public void setWebChromeClient(WebChromeClient webChromeClient) {
        this.b.setWebChromeClient(webChromeClient);
    }

    public void a(String str, ValueCallback<String> valueCallback) {
        this.b.evaluateJavascript(str, valueCallback);
    }

    public synchronized void b() {
        com.smartadserver.android.library.g.c.a(f5616a, "onDestroy called on webview: " + this);
        if (!this.c) {
            this.c = true;
            this.b.setWebChromeClient(null);
            this.b.setWebViewClient(null);
            if (Build.VERSION.SDK_INT < 14) {
                post(new Runnable() { // from class: com.smartadserver.android.library.ui.d.5
                    @Override // java.lang.Runnable
                    public void run() {
                        d.this.removeView(d.this.b);
                        Object obj = new Object();
                        d.this.a(obj, com.smartadserver.android.library.controller.mraid.a.c);
                        d.this.a(obj, e.f5418a);
                        d.this.a(obj, f.f5419a);
                        d.this.b.setOnTouchListener(null);
                        d.this.b.destroy();
                    }
                });
            }
        }
    }

    public void setInAppBrowserMode(boolean z) {
        if (z) {
            this.f.setVisibility(0);
        } else {
            this.f.setVisibility(8);
        }
    }

    public boolean c() {
        return this.f.getVisibility() != 8;
    }

    public boolean d() {
        return this.d;
    }
}
