package com.smaato.soma.video;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.facebook.ads.AudienceNetworkActivity;
import com.google.android.gms.drive.DriveFile;
import com.mopub.mobileads.resource.DrawableConstants;
import com.smaato.soma.debug.DebugCategory;
import com.smaato.soma.exception.AddingCloseButtonToInterstitialFailed;
import com.smaato.soma.exception.ClosingLandingPageFailed;
import com.smaato.soma.g;
import com.smaato.soma.internal.c.d;
import com.smaato.soma.interstitial.BaseActivity;
import com.smaato.soma.j;
import com.smaato.soma.l;
import com.smaato.soma.video.c;
/* loaded from: classes3.dex */
public class VASTAdActivity extends BaseActivity implements g, c.a {
    public static String e = "VASTAdActivity";

    /* renamed from: a  reason: collision with root package name */
    c f5258a;
    RelativeLayout b;
    Handler c = new Handler();
    Handler d = new Handler();
    boolean f = true;
    private com.smaato.soma.internal.d.b g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.smaato.soma.video.VASTAdActivity$1  reason: invalid class name */
    /* loaded from: classes3.dex */
    public class AnonymousClass1 extends l<Void> {
        AnonymousClass1() {
        }

        @Override // com.smaato.soma.l
        /* renamed from: a */
        public Void b() throws Exception {
            VASTAdActivity.this.setRequestedOrientation(VASTAdActivity.this.getResources().getConfiguration().orientation);
            VASTAdActivity.this.b = new RelativeLayout(VASTAdActivity.this);
            VASTAdActivity.this.setContentView(VASTAdActivity.this.b);
            VASTAdActivity.this.f5258a = Video.d();
            try {
                VASTAdActivity.this.getWindow().getDecorView().setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams.addRule(13, -1);
                VASTAdActivity.this.f5258a.setLayoutParams(layoutParams);
                VASTAdActivity.this.f5258a.setOnVideoFinishedPlaying(VASTAdActivity.this);
                VASTAdActivity.this.f5258a.start();
                VASTAdActivity.this.b.addView(VASTAdActivity.this.f5258a, layoutParams);
            } catch (Throwable th) {
                RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
                layoutParams2.addRule(13, -1);
                VASTAdActivity.this.f5258a.setLayoutParams(layoutParams2);
                VASTAdActivity.this.b.addView(VASTAdActivity.this.f5258a, layoutParams2);
            }
            try {
                if (VASTAdActivity.this.f5258a != null && !VASTAdActivity.this.f5258a.c() && VASTAdActivity.this.f5258a.getVastAd().d() > VASTAdActivity.this.f5258a.getVideoSkipInterval()) {
                    VASTAdActivity.this.c.postDelayed(new RunnableC05681(), VASTAdActivity.this.f5258a.getVideoSkipInterval() * 1000);
                    return null;
                }
                return null;
            } catch (Exception e) {
                return null;
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: com.smaato.soma.video.VASTAdActivity$1$1  reason: invalid class name and collision with other inner class name */
        /* loaded from: classes3.dex */
        public class RunnableC05681 implements Runnable {
            RunnableC05681() {
            }

            @Override // java.lang.Runnable
            public void run() {
                VASTAdActivity.this.runOnUiThread(new Runnable() { // from class: com.smaato.soma.video.VASTAdActivity.1.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        new l<Void>() { // from class: com.smaato.soma.video.VASTAdActivity.1.1.1.1
                            @Override // com.smaato.soma.l
                            /* renamed from: a */
                            public Void b() throws Exception {
                                VASTAdActivity.this.b();
                                return null;
                            }
                        }.c();
                    }
                });
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.smaato.soma.interstitial.BaseActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        new AnonymousClass1().c();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean h() {
        com.smaato.soma.internal.d.a a2 = this.f5258a.getVastAd().a();
        if (a2 == null) {
            return false;
        }
        return (a2.c() == null && a2.f() == null) ? false : true;
    }

    protected void c() {
        new l<Void>() { // from class: com.smaato.soma.video.VASTAdActivity.2
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                ImageView imageView;
                final com.smaato.soma.internal.d.a a2 = VASTAdActivity.this.f5258a.getVastAd().a();
                if (a2 != null) {
                    VASTAdActivity.this.f = true;
                    if (a2.c() != null) {
                        imageView = new ImageView(VASTAdActivity.this);
                        imageView.setImageBitmap(com.smaato.soma.b.a.a().a(a2.c(), a2.a(), a2.b()));
                        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.smaato.soma.video.VASTAdActivity.2.1
                            @Override // android.view.View.OnClickListener
                            public void onClick(View view) {
                                if (a2.e() != null) {
                                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(a2.e()));
                                    intent.addFlags(DriveFile.MODE_READ_ONLY);
                                    VASTAdActivity.this.startActivity(intent);
                                    VASTAdActivity.this.i();
                                }
                            }
                        });
                    } else if (a2.f() != null) {
                        WebView webView = new WebView(VASTAdActivity.this);
                        StringBuffer stringBuffer = new StringBuffer();
                        stringBuffer.append("<html>\n");
                        stringBuffer.append("    <head>\n");
                        stringBuffer.append("        <META name=\"viewport\" content=\"user-scalable=no\" />\n");
                        stringBuffer.append("        <style type=\"text/css\"> * {   margin: 0px;   padding: 0px;}</style>");
                        stringBuffer.append("    </head>\n");
                        stringBuffer.append("<body align=\"center\" onClick=\"smaato_bridge.legacyExpand();\">\n");
                        stringBuffer.append("    <div id=\"ad-container\">");
                        stringBuffer.append(a2.f());
                        stringBuffer.append("    </div>");
                        stringBuffer.append("</body>");
                        stringBuffer.append("</html>\n");
                        webView.setVerticalScrollBarEnabled(false);
                        webView.setHorizontalScrollBarEnabled(false);
                        webView.loadDataWithBaseURL(null, stringBuffer.toString(), "text/html", AudienceNetworkActivity.WEBVIEW_ENCODING, null);
                        webView.setOnTouchListener(new View.OnTouchListener() { // from class: com.smaato.soma.video.VASTAdActivity.2.2
                            @Override // android.view.View.OnTouchListener
                            public boolean onTouch(View view, MotionEvent motionEvent) {
                                try {
                                    if (a2.e() == null || !VASTAdActivity.this.f) {
                                        return false;
                                    }
                                    VASTAdActivity.this.f = false;
                                    Intent intent = new Intent("android.intent.action.VIEW", Uri.parse(a2.e()));
                                    intent.addFlags(DriveFile.MODE_READ_ONLY);
                                    VASTAdActivity.this.startActivity(intent);
                                    VASTAdActivity.this.i();
                                    return true;
                                } catch (Exception e2) {
                                    return false;
                                }
                            }
                        });
                        imageView = webView;
                    } else {
                        imageView = null;
                    }
                    RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(d.a().a(VASTAdActivity.this.getApplicationContext(), a2.a()), d.a().a(VASTAdActivity.this.getApplicationContext(), a2.b()));
                    layoutParams.addRule(13, -1);
                    imageView.setLayoutParams(layoutParams);
                    VASTAdActivity.this.b.addView(imageView, layoutParams);
                }
                return null;
            }
        }.c();
    }

    @Override // com.smaato.soma.g
    public void onWillOpenLandingPage(j jVar) {
    }

    @Override // com.smaato.soma.g
    public void onWillCloseLandingPage(j jVar) throws ClosingLandingPageFailed {
    }

    @Override // com.smaato.soma.video.c.a
    public void d() {
        new l<Void>() { // from class: com.smaato.soma.video.VASTAdActivity.3
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                if (VASTAdActivity.this.h()) {
                    VASTAdActivity.this.c();
                    if (VASTAdActivity.this.f5258a != null) {
                        VASTAdActivity.this.f5258a.setVisibility(4);
                    }
                }
                if (VASTAdActivity.this.g == null) {
                    VASTAdActivity.this.f();
                }
                if (VASTAdActivity.this.f5258a == null || !VASTAdActivity.this.f5258a.a()) {
                    if (VASTAdActivity.this.d != null && VASTAdActivity.this.f5258a != null && !VASTAdActivity.this.f5258a.a() && VASTAdActivity.this.f5258a.getAutoCloseDuration() > 0) {
                        VASTAdActivity.this.d.postDelayed(new Runnable() { // from class: com.smaato.soma.video.VASTAdActivity.3.1
                            @Override // java.lang.Runnable
                            public void run() {
                                com.smaato.soma.debug.a.a(new com.smaato.soma.debug.b(VASTAdActivity.e, VASTAdActivity.e + "timed out to fill Ad.", 1, DebugCategory.DEBUG));
                                VASTAdActivity.this.e();
                            }
                        }, VASTAdActivity.this.f5258a.getAutoCloseDuration() * 1000);
                        return null;
                    }
                    VASTAdActivity.this.e();
                    return null;
                }
                return null;
            }
        }.c();
    }

    public void e() {
        try {
            if (this.f5258a != null) {
                if (this.f5258a.b() && this.f5258a.getRewardedVideoListener() != null) {
                    this.f5258a.getRewardedVideoListener().onWillClose();
                } else if (this.f5258a.getVastAdListener() != null) {
                    this.f5258a.getVastAdListener().onWillClose();
                }
            }
            finish();
        } catch (Exception e2) {
        }
    }

    protected void f() throws AddingCloseButtonToInterstitialFailed {
        try {
            if (this.f5258a != null) {
                this.g = new com.smaato.soma.internal.d.b(getBaseContext(), true);
                this.g.setOnClickListener(new View.OnClickListener() { // from class: com.smaato.soma.video.VASTAdActivity.4
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view) {
                        new l<Void>() { // from class: com.smaato.soma.video.VASTAdActivity.4.1
                            @Override // com.smaato.soma.l
                            /* renamed from: a */
                            public Void b() throws Exception {
                                VASTAdActivity.this.e();
                                return null;
                            }
                        }.c();
                    }
                });
                this.b.addView(this.g, this.g.getLayoutParams());
            }
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new AddingCloseButtonToInterstitialFailed(e3);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.smaato.soma.interstitial.BaseActivity
    public void b() throws AddingCloseButtonToInterstitialFailed {
        try {
            this.g = new com.smaato.soma.internal.d.b(getBaseContext(), false);
            this.g.setOnClickListener(new View.OnClickListener() { // from class: com.smaato.soma.video.VASTAdActivity.5
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    new l<Void>() { // from class: com.smaato.soma.video.VASTAdActivity.5.1
                        @Override // com.smaato.soma.l
                        /* renamed from: a */
                        public Void b() throws Exception {
                            VASTAdActivity.this.finish();
                            return null;
                        }
                    }.c();
                }
            });
            this.b.addView(this.g, this.g.getLayoutParams());
        } catch (RuntimeException e2) {
            throw e2;
        } catch (Exception e3) {
            throw new AddingCloseButtonToInterstitialFailed(e3);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        new l<Void>() { // from class: com.smaato.soma.video.VASTAdActivity.6
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                VASTAdActivity.this.g();
                return null;
            }
        }.c();
    }

    public void g() {
        if (this.f5258a != null && !this.f5258a.b()) {
            e();
        }
    }

    @Override // android.app.Activity
    protected void onResume() {
        new l<Void>() { // from class: com.smaato.soma.video.VASTAdActivity.7
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() throws Exception {
                VASTAdActivity.this.f5258a.resume();
                return null;
            }
        }.c();
        super.onResume();
    }

    @Override // android.app.Activity
    protected void onPause() {
        new l<Void>() { // from class: com.smaato.soma.video.VASTAdActivity.8
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() {
                try {
                    VASTAdActivity.this.f5258a.pause();
                    VASTAdActivity.this.c.removeCallbacksAndMessages(null);
                    VASTAdActivity.this.d.removeCallbacksAndMessages(null);
                    VASTAdActivity.this.f5258a.setRewardedVideo(false);
                    VASTAdActivity.this.f5258a.destroyDrawingCache();
                    VASTAdActivity.this.f5258a.e();
                    VASTAdActivity.this.g = null;
                    VASTAdActivity.this.finish();
                } catch (Exception e2) {
                }
                return null;
            }
        }.c();
        super.onPause();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        try {
            if (this.f5258a != null) {
                if (this.f5258a.getVastAdListener() != null) {
                    this.f5258a.getVastAdListener().onWillOpenLandingPage();
                } else if (this.f5258a.getRewardedVideoListener() != null) {
                    this.f5258a.getRewardedVideoListener().onWillOpenLandingPage();
                }
            }
        } catch (Exception e2) {
        }
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        new l<Void>() { // from class: com.smaato.soma.video.VASTAdActivity.9
            @Override // com.smaato.soma.l
            /* renamed from: a */
            public Void b() {
                try {
                    VASTAdActivity.this.c.removeCallbacksAndMessages(null);
                    VASTAdActivity.this.d.removeCallbacksAndMessages(null);
                    VASTAdActivity.this.f5258a.setRewardedVideo(false);
                    VASTAdActivity.this.f5258a.e();
                    VASTAdActivity.this.f5258a.destroyDrawingCache();
                    VASTAdActivity.this.g = null;
                } catch (Exception e2) {
                }
                return null;
            }
        };
        super.onDestroy();
    }
}
