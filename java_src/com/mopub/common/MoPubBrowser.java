package com.mopub.common;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.CookieSyncManager;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ImageButton;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.mopub.common.event.BaseEvent;
import com.mopub.common.event.Event;
import com.mopub.common.event.MoPubEvents;
import com.mopub.common.util.Drawables;
import com.mopub.mobileads.BaseWebView;
import com.mopub.mobileads.util.WebViews;
/* loaded from: classes3.dex */
public class MoPubBrowser extends Activity {
    public static final String DESTINATION_URL_KEY = "URL";
    public static final String DSP_CREATIVE_ID = "mopub-dsp-creative-id";
    public static final int MOPUB_BROWSER_REQUEST_CODE = 1;

    /* renamed from: a  reason: collision with root package name */
    private WebView f4345a;
    private ImageButton b;
    private ImageButton c;
    private ImageButton d;
    private ImageButton e;
    private DoubleTimeTracker f;
    private String g;

    public ImageButton getBackButton() {
        return this.b;
    }

    public ImageButton getCloseButton() {
        return this.e;
    }

    public ImageButton getForwardButton() {
        return this.c;
    }

    public ImageButton getRefreshButton() {
        return this.d;
    }

    public WebView getWebView() {
        return this.f4345a;
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setResult(-1);
        getWindow().requestFeature(2);
        getWindow().setFeatureInt(2, -1);
        setContentView(d());
        this.f = new DoubleTimeTracker();
        a();
        b();
        c();
    }

    private void a() {
        WebSettings settings = this.f4345a.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setSupportZoom(true);
        settings.setBuiltInZoomControls(true);
        settings.setUseWideViewPort(true);
        this.g = getIntent().getStringExtra(DSP_CREATIVE_ID);
        this.f4345a.loadUrl(getIntent().getStringExtra(DESTINATION_URL_KEY));
        this.f4345a.setWebViewClient(new a(this));
        this.f4345a.setWebChromeClient(new WebChromeClient() { // from class: com.mopub.common.MoPubBrowser.1
            @Override // android.webkit.WebChromeClient
            public void onProgressChanged(WebView webView, int i) {
                MoPubBrowser.this.setTitle("Loading...");
                MoPubBrowser.this.setProgress(i * 100);
                if (i == 100) {
                    MoPubBrowser.this.setTitle(webView.getUrl());
                }
            }
        });
    }

    private void b() {
        this.b.setBackgroundColor(0);
        this.b.setOnClickListener(new View.OnClickListener() { // from class: com.mopub.common.MoPubBrowser.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MoPubBrowser.this.f4345a.canGoBack()) {
                    MoPubBrowser.this.f4345a.goBack();
                }
            }
        });
        this.c.setBackgroundColor(0);
        this.c.setOnClickListener(new View.OnClickListener() { // from class: com.mopub.common.MoPubBrowser.3
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (MoPubBrowser.this.f4345a.canGoForward()) {
                    MoPubBrowser.this.f4345a.goForward();
                }
            }
        });
        this.d.setBackgroundColor(0);
        this.d.setOnClickListener(new View.OnClickListener() { // from class: com.mopub.common.MoPubBrowser.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MoPubBrowser.this.f4345a.reload();
            }
        });
        this.e.setBackgroundColor(0);
        this.e.setOnClickListener(new View.OnClickListener() { // from class: com.mopub.common.MoPubBrowser.5
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MoPubBrowser.this.finish();
            }
        });
    }

    private void c() {
        CookieSyncManager.createInstance(this);
        CookieSyncManager.getInstance().startSync();
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        CookieSyncManager.getInstance().stopSync();
        WebViews.onPause(this.f4345a, isFinishing());
        this.f.pause();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        CookieSyncManager.getInstance().startSync();
        WebViews.onResume(this.f4345a);
        this.f.start();
    }

    @Override // android.app.Activity
    public void finish() {
        ((ViewGroup) getWindow().getDecorView()).removeAllViews();
        super.finish();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        this.f4345a.destroy();
        this.f4345a = null;
        MoPubEvents.log(new Event.Builder(BaseEvent.Name.AD_DWELL_TIME, BaseEvent.Category.AD_INTERACTIONS, BaseEvent.SamplingRate.AD_INTERACTIONS.getSamplingRate()).withDspCreativeId(this.g).withPerformanceDurationMs(Double.valueOf(this.f.getInterval())).mo552build());
    }

    private View d() {
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -1));
        linearLayout.setOrientation(1);
        RelativeLayout relativeLayout = new RelativeLayout(this);
        relativeLayout.setLayoutParams(new LinearLayout.LayoutParams(-1, -2));
        linearLayout.addView(relativeLayout);
        LinearLayout linearLayout2 = new LinearLayout(this);
        linearLayout2.setId(1);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams.addRule(12);
        linearLayout2.setLayoutParams(layoutParams);
        linearLayout2.setBackgroundDrawable(Drawables.BACKGROUND.createDrawable(this));
        relativeLayout.addView(linearLayout2);
        this.b = a(Drawables.LEFT_ARROW.createDrawable(this));
        this.c = a(Drawables.RIGHT_ARROW.createDrawable(this));
        this.d = a(Drawables.REFRESH.createDrawable(this));
        this.e = a(Drawables.CLOSE.createDrawable(this));
        linearLayout2.addView(this.b);
        linearLayout2.addView(this.c);
        linearLayout2.addView(this.d);
        linearLayout2.addView(this.e);
        this.f4345a = new BaseWebView(this);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams2.addRule(2, 1);
        this.f4345a.setLayoutParams(layoutParams2);
        relativeLayout.addView(this.f4345a);
        return linearLayout;
    }

    private ImageButton a(Drawable drawable) {
        ImageButton imageButton = new ImageButton(this);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-2, -2, 1.0f);
        layoutParams.gravity = 16;
        imageButton.setLayoutParams(layoutParams);
        imageButton.setImageDrawable(drawable);
        return imageButton;
    }
}
