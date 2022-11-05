package com.applovin.adview;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.graphics.Color;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.util.Log;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.applovin.impl.adview.AdViewControllerImpl;
import com.applovin.impl.adview.AppLovinVideoView;
import com.applovin.impl.adview.ah;
import com.applovin.impl.adview.w;
import com.applovin.impl.sdk.AppLovinAdImpl;
import com.applovin.impl.sdk.AppLovinSdkImpl;
import com.applovin.impl.sdk.cb;
import com.applovin.impl.sdk.di;
import com.applovin.sdk.AppLovinAd;
import com.applovin.sdk.AppLovinAdDisplayListener;
import com.applovin.sdk.AppLovinAdSize;
import com.applovin.sdk.AppLovinAdVideoPlaybackListener;
import com.applovin.sdk.AppLovinLogger;
import com.applovin.sdk.AppLovinSdkUtils;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.mopub.mobileads.resource.DrawableConstants;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.UUID;
/* loaded from: classes.dex */
public class AppLovinInterstitialActivity extends Activity implements w {
    public static final String KEY_WRAPPER_ID = "com.applovin.interstitial.wrapper_id";
    public static volatile ah lastKnownWrapper = null;
    private View A;
    private com.applovin.impl.adview.s B;
    private volatile UUID C;
    private ImageView D;

    /* renamed from: a  reason: collision with root package name */
    private AppLovinAdView f1509a;
    private ah b;
    private AppLovinLogger d;
    private cb e;
    private AppLovinSdkImpl f;
    private Handler u;
    private FrameLayout v;
    private AppLovinVideoView w;
    private com.applovin.impl.adview.u x;
    private View y;
    private com.applovin.impl.adview.u z;
    private volatile boolean c = false;
    private volatile AppLovinAdImpl g = di.a();
    private volatile boolean h = false;
    private volatile boolean i = false;
    private volatile boolean j = false;
    private volatile boolean k = false;
    private volatile boolean l = false;
    private volatile boolean m = false;
    private volatile boolean n = false;
    private volatile boolean o = false;
    private volatile boolean p = false;
    private boolean q = false;
    private volatile boolean r = false;
    private boolean s = false;
    private int t = 0;
    private WeakReference E = new WeakReference(null);

    private static int a(Display display) {
        if (display.getWidth() == display.getHeight()) {
            return 3;
        }
        return display.getWidth() < display.getHeight() ? 1 : 2;
    }

    private void a(int i) {
        b((int) (i - di.a(1.0f)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, UUID uuid) {
        if (this.B == null || !uuid.equals(this.C)) {
            return;
        }
        if (i <= 0) {
            this.B.setVisibility(8);
            this.s = true;
        } else if (this.s) {
        } else {
            int i2 = i - 1;
            this.B.a(i2);
            this.u.postDelayed(new h(this, i2, uuid), 1000L);
        }
    }

    private void a(long j, com.applovin.impl.adview.u uVar) {
        this.u.postDelayed(new g(this, uVar), j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(AppLovinAd appLovinAd) {
        AppLovinAdDisplayListener d = this.b.d();
        if (d != null) {
            d.adDisplayed(appLovinAd);
        }
        this.i = true;
    }

    private void a(AppLovinAd appLovinAd, double d, boolean z) {
        this.l = true;
        AppLovinAdVideoPlaybackListener c = this.b.c();
        if (c != null) {
            c.videoPlaybackEnded(appLovinAd, d, z);
        }
    }

    private void a(File file) {
        Uri fromFile = Uri.fromFile(file);
        this.w = new AppLovinVideoView(this);
        this.w.setOnPreparedListener(new b(this));
        this.w.setOnCompletionListener(new k(this));
        this.w.setOnErrorListener(new l(this));
        this.w.setVideoURI(fromFile);
        this.w.setLayoutParams(new FrameLayout.LayoutParams(-1, -1, 17));
        this.w.setOnTouchListener(new AppLovinTouchToClickListener(this, new n(this)));
        this.v.addView(this.w);
        setContentView(this.v);
        l();
    }

    private void a(boolean z) {
        this.r = z;
        MediaPlayer mediaPlayer = (MediaPlayer) this.E.get();
        if (mediaPlayer != null) {
            int i = z ? 0 : 1;
            mediaPlayer.setVolume(i, i);
        }
    }

    private boolean a() {
        if (this.b == null || this.e == null || this.e.a()) {
            return true;
        }
        if (this.e.c() && this.n) {
            return true;
        }
        return this.e.b() && this.p;
    }

    private void b() {
        SharedPreferences.Editor edit = w().edit();
        edit.putBoolean("com.applovin.interstitial.should_resume_video", false);
        edit.putInt("com.applovin.interstitial.last_video_position", 0);
        edit.commit();
    }

    private void b(int i) {
        a(i, this.C);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(AppLovinAd appLovinAd) {
        c(appLovinAd);
        dismiss();
    }

    private int c(int i) {
        return AppLovinSdkUtils.dpToPx(this, i);
    }

    private void c(AppLovinAd appLovinAd) {
        AppLovinAdDisplayListener d;
        if (!this.j) {
            this.j = true;
            if (this.b == null || (d = this.b.d()) == null) {
                return;
            }
            d.adHidden(appLovinAd);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean c() {
        return this.e.G();
    }

    private void d() {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        this.v = new FrameLayout(this);
        this.v.setLayoutParams(layoutParams);
        this.v.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        this.u = new Handler();
    }

    private void d(AppLovinAd appLovinAd) {
        if (!this.k) {
            this.k = true;
            AppLovinAdVideoPlaybackListener c = this.b.c();
            if (c == null) {
                return;
            }
            c.videoPlaybackBegan(appLovinAd);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (this.e.k()) {
            finish();
        } else {
            i();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        d(this.g);
        this.w.start();
        b(n());
    }

    private void g() {
        int i = 3;
        this.x = com.applovin.impl.adview.u.a(this.f, this, this.g.getCloseStyle());
        this.x.setVisibility(8);
        this.x.setOnClickListener(new p(this));
        int c = c(this.e.m());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(c, c, (this.e.x() ? 3 : 5) | 48);
        this.x.a(c);
        int c2 = c(this.e.o());
        int c3 = c(this.e.q());
        layoutParams.setMargins(c3, c2, c3, c2);
        this.v.addView(this.x, layoutParams);
        this.z = com.applovin.impl.adview.u.a(this.f, this, this.g.getCloseStyle());
        this.z.setVisibility(8);
        this.z.setOnClickListener(new q(this));
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(c, c, (this.e.w() ? 3 : 5) | 48);
        layoutParams2.setMargins(c3, c2, c3, c2);
        this.z.a(c);
        this.v.addView(this.z, layoutParams2);
        this.z.bringToFront();
        if (j()) {
            int c4 = c(new cb(this.f).r());
            this.y = new View(this);
            this.y.setBackgroundColor(0);
            this.y.setVisibility(8);
            this.A = new View(this);
            this.A.setBackgroundColor(0);
            this.A.setVisibility(8);
            int i2 = c + c4;
            int c5 = c2 - c(5);
            FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(i2, i2, (this.e.x() ? 3 : 5) | 48);
            layoutParams3.setMargins(c5, c5, c5, c5);
            if (!this.e.w()) {
                i = 5;
            }
            FrameLayout.LayoutParams layoutParams4 = new FrameLayout.LayoutParams(i2, i2, i | 48);
            layoutParams4.setMargins(c5, c5, c5, c5);
            this.y.setOnClickListener(new r(this));
            this.A.setOnClickListener(new s(this));
            this.v.addView(this.y, layoutParams3);
            this.y.bringToFront();
            this.v.addView(this.A, layoutParams4);
            this.A.bringToFront();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        try {
            this.D = new ImageView(this);
            if (!this.e.A()) {
                return;
            }
            if (!c() && !this.e.B()) {
                return;
            }
            int c = c(this.e.C());
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(c, c, this.e.D());
            this.D.setScaleType(ImageView.ScaleType.FIT_CENTER);
            int c2 = c(this.e.E());
            layoutParams.setMargins(c2, c2, c2, c2);
            this.r = c();
            String muteImageFilename = c() ? this.g.getMuteImageFilename() : this.g.getUnmuteImageFilename();
            File a2 = this.f.getFileManager().a(muteImageFilename, (Context) this, true);
            if (a2 == null) {
                this.f.getLogger().e("AppLovinInterstitialActivity", "Attempting to add mute button but could not find cached file with intialFilename = " + muteImageFilename);
                return;
            }
            this.f.getLogger().d("AppLovinInterstitialActivity", "Added mute button with params: " + layoutParams);
            AppLovinSdkUtils.safePopulateImageView(this.D, Uri.fromFile(a2), c);
            this.D.setClickable(true);
            this.D.setOnClickListener(new t(this));
            this.v.addView(this.D, layoutParams);
            this.D.bringToFront();
        } catch (Exception e) {
            this.f.getLogger().w("AppLovinInterstitialActivity", "Failed to attach mute button", e);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        runOnUiThread(new e(this));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean j() {
        return this.e.r() > 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        runOnUiThread(new f(this));
    }

    private void l() {
        if (this.g.getVideoCloseDelay() >= BitmapDescriptorFactory.HUE_RED) {
            a(di.c(this.g.getVideoCloseDelay()), (!this.q || this.z == null) ? this.x : this.z);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m() {
        if (this.B == null) {
            this.B = new com.applovin.impl.adview.s(this);
            int p = p();
            this.B.c(p);
            this.B.b(this.e.h());
            this.B.d(p);
            this.B.a(this.e.g());
            this.B.b(n());
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(c(this.e.f()), c(this.e.f()), this.e.v());
            int c = c(this.e.u());
            layoutParams.setMargins(c, c, c, c);
            this.v.addView(this.B, layoutParams);
            this.B.bringToFront();
            this.B.setVisibility((!this.e.i() || n() <= 0) ? 4 : 0);
        }
    }

    private int n() {
        int countdownLength = this.g.getCountdownLength();
        return (countdownLength <= 0 && this.e.t()) ? this.t + 1 : countdownLength;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        this.C = UUID.randomUUID();
    }

    private int p() {
        return Color.parseColor(this.e.d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        s();
    }

    private void r() {
        if (!this.c) {
            if (this.f1509a == null) {
                exitWithError("AdView was null");
                return;
            }
            this.f1509a.setAdDisplayListener(new i(this));
            this.f1509a.setAdClickListener(new j(this));
            this.g = (AppLovinAdImpl) this.b.b();
            d();
            g();
            File a2 = this.f.getFileManager().a(this.g.getVideoFilename(), (Context) this, false);
            if (a2 != null) {
                a(a2);
            } else {
                this.h = true;
                this.f.getLogger().e("AppLovinInterstitialActivity", "Video file was missing or null - please make sure your app has the WRITE_EXTERNAL_STORAGE permission!");
                s();
            }
            this.x.bringToFront();
            if (j() && this.y != null) {
                this.y.bringToFront();
            }
            if (this.z != null) {
                this.z.bringToFront();
            }
            this.f1509a.renderAd(this.g, this.b.g());
            this.b.a(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        v();
        if (this.w != null) {
            this.w.stopPlayback();
        }
        FrameLayout frameLayout = new FrameLayout(this);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        frameLayout.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
        frameLayout.addView(this.f1509a);
        if (this.v != null && this.z != null) {
            this.v.removeView(this.z);
            if (this.A != null) {
                this.v.removeView(this.A);
            }
        }
        if (j() && this.y != null) {
            if (this.v != null) {
                this.v.removeView(this.y);
            }
            frameLayout.addView(this.y);
            this.y.bringToFront();
        }
        if (this.v != null) {
            this.v.removeView(this.x);
        }
        frameLayout.addView(this.x);
        setContentView(frameLayout);
        this.x.bringToFront();
        if (this.g.getCloseDelay() > BitmapDescriptorFactory.HUE_RED) {
            a(di.c(this.g.getCloseDelay()), this.x);
        } else {
            this.x.setVisibility(0);
        }
        this.p = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t() {
        boolean z = !u();
        a(z);
        String muteImageFilename = z ? this.g.getMuteImageFilename() : this.g.getUnmuteImageFilename();
        int c = c(this.e.C());
        File a2 = this.f.getFileManager().a(muteImageFilename, (Context) this, true);
        if (a2 != null) {
            AppLovinSdkUtils.safePopulateImageView(this.D, Uri.fromFile(a2), c);
        } else {
            this.f.getLogger().w("AppLovinInterstitialActivity", "Attempt to toggle mute but no cached mute image file found.");
        }
    }

    private boolean u() {
        return this.r;
    }

    private void v() {
        double d = 100.0d;
        if (this.l) {
            return;
        }
        if (!this.m) {
            if (this.w != null) {
                d = 100.0d * (this.w.getCurrentPosition() / this.w.getDuration());
            } else {
                this.d.e("AppLovinInterstitialActivity", "No video view detected on video end");
                d = 0.0d;
            }
        }
        String parametrizedCompletionUrl = this.g.getParametrizedCompletionUrl((int) d, this.b != null ? this.b.g() : null);
        if (di.isValidString(parametrizedCompletionUrl)) {
            this.f.mo34getPostbackService().dispatchPostbackAsync(parametrizedCompletionUrl, null);
        } else {
            this.d.e("AppLovinInterstitialActivity", "Received invalid placement aware parameterized video completion url. No postback dispatched.");
        }
        a(this.g, d, d > 95.0d);
    }

    private SharedPreferences w() {
        return getSharedPreferences("com.applovin.interstitial.sharedpreferences", 0);
    }

    @Override // com.applovin.impl.adview.w
    public void dismiss() {
        ((AdViewControllerImpl) this.f1509a.getAdViewController()).setIsForegroundClickInvalidated(true);
        b();
        v();
        if (this.b != null) {
            if (this.g != null) {
                c(this.g);
            }
            this.b.a(false);
            this.b.h();
        }
        finish();
    }

    public void exitWithError(String str) {
        try {
            Log.e("AppLovinInterstitialActivity", "Failed to properly render an Interstitial Activity, due to error: " + str, new Throwable("Initialized = " + ah.f1544a + "; CleanedUp = " + ah.b));
            c(di.a());
        } catch (Exception e) {
            Log.e("AppLovinInterstitialActivity", "Failed to show a video ad due to error:", e);
        }
        finish();
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        if (a()) {
            this.d.d("AppLovinInterstitialActivity", "Back button was pressed; forwarding to Android for handling...");
            super.onBackPressed();
            return;
        }
        try {
            if (this.q && this.z != null && this.z.getVisibility() == 0 && this.z.getAlpha() > BitmapDescriptorFactory.HUE_RED && !this.n) {
                this.d.d("AppLovinInterstitialActivity", "Back button was pressed; forwarding as a click to skip button.");
                this.z.performClick();
            } else if (this.x == null || this.x.getVisibility() != 0 || this.x.getAlpha() <= BitmapDescriptorFactory.HUE_RED) {
                this.d.d("AppLovinInterstitialActivity", "Back button was pressed, but was not eligible for dismissal.");
            } else {
                this.d.d("AppLovinInterstitialActivity", "Back button was pressed; forwarding as a click to close button.");
                this.x.performClick();
            }
        } catch (Exception e) {
            super.onBackPressed();
        }
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        requestWindowFeature(1);
        try {
            getWindow().setFlags(1024, 1024);
        } catch (Throwable th) {
        }
        requestWindowFeature(1);
        String stringExtra = getIntent().getStringExtra(KEY_WRAPPER_ID);
        if (stringExtra == null || stringExtra.isEmpty()) {
            exitWithError("Wrapper ID is null");
        } else {
            this.b = ah.a(stringExtra);
            if (this.b == null && lastKnownWrapper != null) {
                this.b = lastKnownWrapper;
            }
            if (this.b != null) {
                AppLovinAd b = this.b.b();
                this.f = (AppLovinSdkImpl) this.b.a();
                this.d = this.b.a().getLogger();
                this.e = new cb(this.b.a());
                if (b != null) {
                    Display defaultDisplay = ((WindowManager) getSystemService("window")).getDefaultDisplay();
                    int a2 = a(defaultDisplay);
                    int rotation = defaultDisplay.getRotation();
                    boolean z = (a2 == 2 && rotation == 0) || (a2 == 2 && rotation == 2) || ((a2 == 1 && rotation == 1) || (a2 == 1 && rotation == 3));
                    if (this.b.f() == AppLovinAdImpl.AdTarget.ACTIVITY_PORTRAIT) {
                        if (z) {
                            if (rotation != 1 && rotation != 3) {
                                this.c = true;
                                setRequestedOrientation(1);
                            }
                        } else if (rotation != 0 && rotation != 2) {
                            this.c = true;
                            setRequestedOrientation(1);
                        }
                    } else if (z) {
                        if (rotation != 0 && rotation != 2) {
                            this.c = true;
                            setRequestedOrientation(0);
                        }
                    } else if (rotation != 1 && rotation != 3) {
                        this.c = true;
                        setRequestedOrientation(0);
                    }
                    this.f1509a = new AppLovinAdView(this.f, AppLovinAdSize.INTERSTITIAL, this);
                    this.f1509a.setAutoDestroy(false);
                    this.b.a((w) this);
                    this.q = this.e.s();
                } else {
                    exitWithError("No current ad found.");
                }
            } else {
                exitWithError("Wrapper is null; initialized state: " + Boolean.toString(ah.f1544a));
            }
        }
        SharedPreferences.Editor edit = w().edit();
        edit.putBoolean("com.applovin.interstitial.should_resume_video", false);
        edit.commit();
        b();
        r();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        try {
            if (this.f1509a != null) {
                ViewParent parent = this.f1509a.getParent();
                if (parent != null && (parent instanceof ViewGroup)) {
                    ((ViewGroup) parent).removeView(this.f1509a);
                }
                this.f1509a.destroy();
                this.f1509a = null;
            }
            if (this.w != null) {
                this.w.pause();
                this.w.stopPlayback();
            }
        } catch (Throwable th) {
            this.d.w("AppLovinInterstitialActivity", "Unable to destroy video view", th);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    protected void onPause() {
        if (!this.c && !this.h) {
            SharedPreferences.Editor edit = w().edit();
            edit.putInt("com.applovin.interstitial.last_video_position", this.w.getCurrentPosition());
            edit.putBoolean("com.applovin.interstitial.should_resume_video", true);
            edit.commit();
            this.w.pause();
        }
        this.b.a(false);
        super.onPause();
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.b.a(true);
        SharedPreferences w = w();
        if (w.getBoolean("com.applovin.interstitial.should_resume_video", false)) {
            if (this.w != null) {
                int duration = this.w.getDuration();
                int i = w.getInt("com.applovin.interstitial.last_video_position", duration);
                o();
                this.w.seekTo(i);
                this.w.start();
                a(duration - i);
            }
            if (this.x == null || !this.e.j()) {
                dismiss();
                return;
            }
            this.d.d("AppLovinInterstitialActivity", "Fading in close button due to app resume.");
            a(0L, (!this.q || this.z == null) ? this.x : this.z);
        }
    }
}
