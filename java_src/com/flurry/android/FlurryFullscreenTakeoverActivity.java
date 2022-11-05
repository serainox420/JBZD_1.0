package com.flurry.android;

import android.app.Activity;
import android.content.res.Configuration;
import android.os.Bundle;
import android.os.SystemClock;
import android.view.KeyEvent;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.flurry.sdk.bc;
import com.flurry.sdk.ff;
import com.flurry.sdk.fq;
import com.flurry.sdk.gx;
import com.flurry.sdk.gz;
import com.flurry.sdk.hb;
import com.flurry.sdk.hh;
import com.flurry.sdk.i;
import com.flurry.sdk.jy;
import com.flurry.sdk.kh;
import com.flurry.sdk.ki;
import com.flurry.sdk.km;
import com.flurry.sdk.lm;
import com.flurry.sdk.ma;
import com.flurry.sdk.mh;
import com.flurry.sdk.mj;
import com.flurry.sdk.r;
import com.flurry.sdk.t;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes.dex */
public final class FlurryFullscreenTakeoverActivity extends Activity {
    public static final String EXTRA_KEY_AD_OBJECT_ID = "ad_object_id";
    public static final String EXTRA_KEY_AD_OBJECT_LEGACY = "ad_object_legacy";
    public static final String EXTRA_KEY_CLOSE_AD = "close_ad";
    public static final String EXTRA_KEY_URL = "url";

    /* renamed from: a  reason: collision with root package name */
    private static final String f2373a = FlurryFullscreenTakeoverActivity.class.getSimpleName();
    private ViewGroup b;
    private gz c;
    private boolean d;
    private r e;
    private hh f;
    private boolean g = false;
    private long h = 0;
    private kh<gx> i = new kh<gx>() { // from class: com.flurry.android.FlurryFullscreenTakeoverActivity.1
        @Override // com.flurry.sdk.kh
        public final /* synthetic */ void a(gx gxVar) {
            final gx gxVar2 = gxVar;
            jy.a().a(new ma() { // from class: com.flurry.android.FlurryFullscreenTakeoverActivity.1.1
                @Override // com.flurry.sdk.ma
                public final void a() {
                    switch (AnonymousClass3.f2377a[gxVar2.d - 1]) {
                        case 1:
                            km.a(3, FlurryFullscreenTakeoverActivity.f2373a, "RELOAD_ACTIVITY Event was fired for adObject:" + gxVar2.f2759a.e() + " for url:" + gxVar2.b + " and should Close Ad:" + gxVar2.c);
                            FlurryFullscreenTakeoverActivity.this.f = new hh(gxVar2.f2759a, gxVar2.b, gxVar2.c);
                            FlurryFullscreenTakeoverActivity.this.e = FlurryFullscreenTakeoverActivity.this.f.f2800a;
                            if (FlurryFullscreenTakeoverActivity.this.e == null) {
                                km.b(FlurryFullscreenTakeoverActivity.f2373a, "Cannot launch Activity. No Ad Controller");
                                FlurryFullscreenTakeoverActivity.this.finish();
                                return;
                            }
                            FlurryFullscreenTakeoverActivity.this.d();
                            FlurryFullscreenTakeoverActivity.this.c();
                            FlurryFullscreenTakeoverActivity.this.g = true;
                            FlurryFullscreenTakeoverActivity.this.b();
                            return;
                        case 2:
                            FlurryFullscreenTakeoverActivity.g(FlurryFullscreenTakeoverActivity.this);
                            km.a(FlurryFullscreenTakeoverActivity.f2373a, "CLOSE_ACTIVITY Event was fired :");
                            FlurryFullscreenTakeoverActivity.this.finish();
                            return;
                        default:
                            return;
                    }
                }
            });
        }
    };
    private gz.a j = new gz.a() { // from class: com.flurry.android.FlurryFullscreenTakeoverActivity.2
        @Override // com.flurry.sdk.gz.a
        public final void a() {
            km.a(FlurryFullscreenTakeoverActivity.f2373a, "onViewBack");
            if (FlurryFullscreenTakeoverActivity.this.f != null && FlurryFullscreenTakeoverActivity.this.f.c) {
                FlurryFullscreenTakeoverActivity.g(FlurryFullscreenTakeoverActivity.this);
                FlurryFullscreenTakeoverActivity.this.c();
                FlurryFullscreenTakeoverActivity.this.finish();
                FlurryFullscreenTakeoverActivity.this.c = null;
                return;
            }
            FlurryFullscreenTakeoverActivity.this.removeViewState();
            FlurryFullscreenTakeoverActivity.this.loadViewState();
            FlurryFullscreenTakeoverActivity.this.g = true;
            FlurryFullscreenTakeoverActivity.this.b();
        }

        @Override // com.flurry.sdk.gz.a
        public final void b() {
            km.a(FlurryFullscreenTakeoverActivity.f2373a, "onViewClose");
            FlurryFullscreenTakeoverActivity.g(FlurryFullscreenTakeoverActivity.this);
            FlurryFullscreenTakeoverActivity.this.c();
            FlurryFullscreenTakeoverActivity.this.finish();
            FlurryFullscreenTakeoverActivity.this.c = null;
        }

        @Override // com.flurry.sdk.gz.a
        public final void c() {
            km.a(FlurryFullscreenTakeoverActivity.f2373a, "onViewError");
            FlurryFullscreenTakeoverActivity.this.c();
            FlurryFullscreenTakeoverActivity.this.finish();
            FlurryFullscreenTakeoverActivity.this.c = null;
        }
    };

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        setTheme(16973831);
        super.onCreate(bundle);
        km.a(3, f2373a, "onCreate");
        if (jy.a() == null) {
            km.a(3, f2373a, "Flurry core not initialized.");
            finish();
            return;
        }
        fq.a(getWindow());
        setVolumeControlStream(3);
        this.b = new RelativeLayout(this);
        boolean booleanExtra = getIntent().getBooleanExtra("ad_object_legacy", false);
        int intExtra = getIntent().getIntExtra("ad_object_id", 0);
        String stringExtra = getIntent().getStringExtra("url");
        boolean booleanExtra2 = getIntent().getBooleanExtra("close_ad", true);
        i a2 = i.a();
        this.e = booleanExtra ? a2.c.a(intExtra) : a2.b.a(intExtra);
        if (this.e == null) {
            km.b(f2373a, "Cannot launch Activity. No ad object.");
            finish();
        } else {
            this.f = new hh(this.e, stringExtra, booleanExtra2);
            this.e.l().a(true);
        }
        d();
        this.g = true;
        if (this.e != null) {
            fireEvent(bc.INTERNAL_EV_AD_OPENED, Collections.emptyMap(), 0);
            this.h = SystemClock.elapsedRealtime();
            return;
        }
        km.b(f2373a, "FlurryFullscreenTakeoverActivity cannot be launched as the internal ad object could not be found. Please ensure that the ad object is displayed in the same Context in which it was created, and that the ad object was not deleted.");
    }

    @Override // android.app.Activity
    public final void onStart() {
        super.onStart();
        km.a(3, f2373a, "onStart");
        lm.a().b(this);
        registerActivityEvent();
        b();
        if (this.c != null) {
            this.c.onActivityStart();
        }
    }

    @Override // android.app.Activity
    protected final void onRestart() {
        km.a(3, f2373a, "onRestart");
        super.onRestart();
        loadViewState();
    }

    @Override // android.app.Activity
    protected final void onResume() {
        km.a(3, f2373a, "onActivityResume");
        super.onResume();
        if (this.c != null) {
            this.c.onActivityResume();
        }
    }

    @Override // android.app.Activity
    protected final void onPause() {
        km.a(3, f2373a, "onPause");
        super.onPause();
        if (this.c != null) {
            this.c.onActivityPause();
        }
    }

    @Override // android.app.Activity
    public final void onStop() {
        super.onStop();
        km.a(3, f2373a, "onStop");
        if (this.c != null) {
            this.c.onActivityStop();
        }
        this.g = false;
        unregisterActivityEvent();
        lm.a().c(this);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        km.a(3, f2373a, "onConfigurationChanged");
        if (this.c != null) {
            this.c.onConfigurationChanged();
        }
    }

    @Override // android.app.Activity
    protected final void onDestroy() {
        super.onDestroy();
        km.a(3, f2373a, "onDestroy");
        if (this.c != null) {
            this.c.onActivityDestroy();
        }
        if (this.e != null && this.e.l() != null) {
            this.e.l().m();
            this.e.l().a(false);
        }
        if (this.e != null && this.e.l().b.h) {
            km.a(f2373a, "AdClose: Firing ad close.");
            fireEvent(bc.EV_AD_CLOSED, Collections.emptyMap(), 0);
        } else {
            km.b(f2373a, "FlurryFullscreenTakeoverActivity cannot destroy internal ad object as the object could not be found. Please ensure that the ad object is displayed in the same Context in which it was created, and that the ad object was not deleted.");
        }
        this.c = null;
    }

    @Override // android.app.Activity
    public final void finish() {
        synchronized (this) {
            if (!this.d) {
                this.d = true;
                super.finish();
            }
        }
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public final boolean onKeyUp(int i, KeyEvent keyEvent) {
        km.a(3, f2373a, "onKeyUp");
        if (i != 4 || this.c == null) {
            return super.onKeyUp(i, keyEvent);
        }
        this.c.onBackKey();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void b() {
        if (this.f == null) {
            finish();
        } else {
            km.a(3, f2373a, "Load View in Activity: " + this.f.toString());
            gz a2 = hb.a(this, this.f.f2800a, this.f.b, this.j, this.g);
            if (a2 != null) {
                c();
                a(a2);
            }
            this.g = false;
        }
    }

    private synchronized void a(gz gzVar) {
        c();
        this.c = gzVar;
        if (this.c != null) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(13);
            this.b.addView(gzVar, layoutParams);
            setContentView(this.b);
            this.c.initLayout();
        }
    }

    public final void registerActivityEvent() {
        ki.a().a("com.flurry.android.impl.ads.views.ActivityEvent", this.i);
    }

    public final void unregisterActivityEvent() {
        ki.a().a(this.i);
    }

    /* renamed from: com.flurry.android.FlurryFullscreenTakeoverActivity$3  reason: invalid class name */
    /* loaded from: classes.dex */
    static /* synthetic */ class AnonymousClass3 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2377a = new int[gx.a.a().length];

        static {
            try {
                f2377a[gx.a.f2760a - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2377a[gx.a.b - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        if (this.c != null) {
            this.c.cleanupLayout();
            this.b.removeAllViews();
            this.c = null;
        }
    }

    public final void fireEvent(bc bcVar, Map<String, String> map, int i) {
        km.a(f2373a, "fireEvent(event=" + bcVar + ",params=" + map + ")");
        ff.a(bcVar, map, this, this.e, this.e.l(), i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d() {
        if (this.f != null) {
            km.a(f2373a, "Save view state: " + this.f.toString());
            this.e.l().a(this.f);
        }
    }

    public final void loadViewState() {
        this.f = this.e.l().l();
        if (this.f == null) {
            finish();
        } else {
            km.a(f2373a, "Load view state: " + this.f.toString());
        }
    }

    public final void removeViewState() {
        if (this.e.l() != null) {
            km.a(f2373a, "Remove view state: " + this.e.l().k().toString());
        }
    }

    static /* synthetic */ void g(FlurryFullscreenTakeoverActivity flurryFullscreenTakeoverActivity) {
        if (!(flurryFullscreenTakeoverActivity.e instanceof t)) {
            return;
        }
        HashMap<String, Object> hashMap = flurryFullscreenTakeoverActivity.e.l().b.j;
        if (hashMap != null && !hashMap.isEmpty()) {
            hashMap.put(mj.b.DELTA_ON_CLICK.e, String.valueOf(SystemClock.elapsedRealtime() - flurryFullscreenTakeoverActivity.h));
        }
        if (mh.b().f3060a == null) {
            return;
        }
        mj mjVar = mh.b().f3060a;
        int i = mh.n;
    }
}
