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
/* loaded from: classes2.dex */
public final class FlurryInternalTakeoverActivity extends Activity {
    public static final String EXTRA_KEY_AD_OBJECT_ID = "ad_object_id";
    public static final String EXTRA_KEY_AD_OBJECT_LEGACY = "ad_object_legacy";
    public static final String EXTRA_KEY_CLOSE_AD = "close_ad";
    public static final String EXTRA_KEY_URL = "url";

    /* renamed from: a  reason: collision with root package name */
    private static final String f2379a = FlurryFullscreenTakeoverActivity.class.getSimpleName();
    private ViewGroup b;
    private gz c;
    private boolean d;
    private r e;
    private hh f;
    private boolean g = false;
    private long h = 0;
    private kh<gx> i = new kh<gx>() { // from class: com.flurry.android.FlurryInternalTakeoverActivity.1
        @Override // com.flurry.sdk.kh
        public final /* synthetic */ void a(gx gxVar) {
            final gx gxVar2 = gxVar;
            jy.a().a(new ma() { // from class: com.flurry.android.FlurryInternalTakeoverActivity.1.1
                @Override // com.flurry.sdk.ma
                public final void a() {
                    switch (AnonymousClass3.f2383a[gxVar2.d - 1]) {
                        case 1:
                            km.a(3, FlurryInternalTakeoverActivity.f2379a, "RELOAD_ACTIVITY Event was fired for adObject:" + gxVar2.f2759a.e() + " for url:" + gxVar2.b + " and should Close Ad:" + gxVar2.c);
                            FlurryInternalTakeoverActivity.this.f = new hh(gxVar2.f2759a, gxVar2.b, gxVar2.c);
                            FlurryInternalTakeoverActivity.this.e = FlurryInternalTakeoverActivity.this.f.f2800a;
                            if (FlurryInternalTakeoverActivity.this.e == null) {
                                km.a(3, FlurryInternalTakeoverActivity.f2379a, "Cannot launch Activity. No Ad Controller");
                                FlurryInternalTakeoverActivity.this.finish();
                                return;
                            }
                            FlurryInternalTakeoverActivity.this.f();
                            FlurryInternalTakeoverActivity.this.e();
                            FlurryInternalTakeoverActivity.this.g = true;
                            FlurryInternalTakeoverActivity.this.d();
                            return;
                        case 2:
                            FlurryInternalTakeoverActivity.g(FlurryInternalTakeoverActivity.this);
                            km.a(3, FlurryInternalTakeoverActivity.f2379a, "CLOSE_ACTIVITY Event was fired :");
                            FlurryInternalTakeoverActivity.this.finish();
                            return;
                        default:
                            return;
                    }
                }
            });
        }
    };
    private gz.a j = new gz.a() { // from class: com.flurry.android.FlurryInternalTakeoverActivity.2
        @Override // com.flurry.sdk.gz.a
        public final void a() {
            km.a(3, FlurryInternalTakeoverActivity.f2379a, "onViewBack");
            if (FlurryInternalTakeoverActivity.this.f != null && FlurryInternalTakeoverActivity.this.f.c) {
                FlurryInternalTakeoverActivity.g(FlurryInternalTakeoverActivity.this);
                FlurryInternalTakeoverActivity.this.e();
                FlurryInternalTakeoverActivity.this.finish();
                FlurryInternalTakeoverActivity.this.c = null;
                return;
            }
            FlurryInternalTakeoverActivity.this.removeViewState();
            FlurryInternalTakeoverActivity.this.loadViewState();
            FlurryInternalTakeoverActivity.this.g = true;
            FlurryInternalTakeoverActivity.this.d();
        }

        @Override // com.flurry.sdk.gz.a
        public final void b() {
            km.a(FlurryInternalTakeoverActivity.f2379a, "onViewClose");
            FlurryInternalTakeoverActivity.g(FlurryInternalTakeoverActivity.this);
            FlurryInternalTakeoverActivity.this.e();
            FlurryInternalTakeoverActivity.this.finish();
            FlurryInternalTakeoverActivity.this.c = null;
        }

        @Override // com.flurry.sdk.gz.a
        public final void c() {
            km.a(FlurryInternalTakeoverActivity.f2379a, "onViewError");
            FlurryInternalTakeoverActivity.this.e();
            FlurryInternalTakeoverActivity.this.finish();
            FlurryInternalTakeoverActivity.this.c = null;
        }
    };

    @Override // android.app.Activity
    public final void onCreate(Bundle bundle) {
        setTheme(16973831);
        super.onCreate(bundle);
        km.a(3, f2379a, "onCreate" + this);
        if (jy.a() == null) {
            km.a(3, f2379a, "Flurry core not initialized.");
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
            km.a(3, f2379a, "Cannot launch Activity. No ad object.");
            finish();
        } else {
            this.f = new hh(this.e, stringExtra, booleanExtra2);
            this.e.l().a(true);
        }
        f();
        this.g = true;
        if (this.e != null) {
            fireEvent(bc.INTERNAL_EV_AD_OPENED, Collections.emptyMap(), 0);
            this.h = SystemClock.elapsedRealtime();
            return;
        }
        km.b(f2379a, "FlurryFullscreenTakeoverActivity cannot be launched as the internal ad object could not be found. Please ensure that the ad object is displayed in the same Context in which it was created, and that the ad object was not deleted.");
    }

    @Override // android.app.Activity
    public final void onStart() {
        super.onStart();
        km.a(3, f2379a, "onStart " + this);
        registerActivityEvent();
        lm.a().b(this);
        d();
        if (this.c != null) {
            this.c.onActivityStart();
        }
    }

    @Override // android.app.Activity
    protected final void onRestart() {
        km.a(3, f2379a, "onRestart " + this);
        super.onRestart();
        loadViewState();
    }

    @Override // android.app.Activity
    protected final void onResume() {
        km.a(3, f2379a, "onActivityResume " + this);
        super.onResume();
        if (this.c != null) {
            this.c.onActivityResume();
        }
    }

    @Override // android.app.Activity
    protected final void onPause() {
        super.onPause();
        km.a(3, f2379a, "onPause " + this);
        if (this.c != null) {
            this.c.onActivityPause();
        }
        if (isFinishing()) {
            b();
            c();
        }
    }

    private void b() {
        km.a(3, f2379a, "onStopActivity " + this);
        if (this.c != null) {
            this.c.onActivityStop();
        }
        this.g = false;
    }

    @Override // android.app.Activity
    public final void onStop() {
        super.onStop();
        km.a(3, f2379a, "onStop " + this);
        b();
        unregisterActivityEvent();
        lm.a().c(this);
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        km.a(3, f2379a, "onConfigurationChanged");
        if (this.c != null) {
            this.c.onConfigurationChanged();
        }
    }

    @Override // android.app.Activity
    protected final void onDestroy() {
        super.onDestroy();
        km.a(3, f2379a, "onDestroy " + this);
        if (this.c != null) {
            c();
        }
    }

    private void c() {
        km.a(3, f2379a, "onDestroyActivity " + this);
        if (this.c != null) {
            this.c.onActivityDestroy();
        }
        if (this.e != null && this.e.l() != null) {
            km.a(3, f2379a, "AdClose: Reset full screen flag." + this.e.l().b.f2466a);
            this.e.l().m();
            this.e.l().a(false);
        }
        if (this.e != null && this.e.l().b.h) {
            km.a(3, f2379a, "AdClose: Firing ad close.");
            fireEvent(bc.EV_AD_CLOSED, Collections.emptyMap(), 0);
        } else {
            km.a(3, f2379a, "FlurryFullscreenTakeoverActivity cannot destroy internal ad object as the object could not be found. Please ensure that the ad object is displayed in the same Context in which it was created, and that the ad object was not deleted.");
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
        km.a(3, f2379a, "onKeyUp");
        if (i != 4 || this.c == null) {
            return super.onKeyUp(i, keyEvent);
        }
        this.c.onBackKey();
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void d() {
        if (this.f == null) {
            finish();
        } else {
            km.a(3, f2379a, "Load View in Activity: " + this.f.toString());
            gz a2 = hb.a(this, this.f.f2800a, this.f.b, this.j, this.g);
            if (a2 != null) {
                e();
                a(a2);
            }
            this.g = false;
        }
    }

    private synchronized void a(gz gzVar) {
        e();
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

    /* renamed from: com.flurry.android.FlurryInternalTakeoverActivity$3  reason: invalid class name */
    /* loaded from: classes2.dex */
    static /* synthetic */ class AnonymousClass3 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f2383a = new int[gx.a.a().length];

        static {
            try {
                f2383a[gx.a.f2760a - 1] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f2383a[gx.a.b - 1] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        if (this.c != null) {
            this.c.cleanupLayout();
            this.b.removeAllViews();
            this.c = null;
        }
    }

    public final void fireEvent(bc bcVar, Map<String, String> map, int i) {
        km.a(3, f2379a, "fireEvent(event=" + bcVar + ",params=" + map + ")");
        ff.a(bcVar, map, this, this.e, this.e.l(), i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        if (this.f != null) {
            km.a(3, f2379a, "Save view state: " + this.f.toString());
            this.e.l().a(this.f);
        }
    }

    public final void loadViewState() {
        this.f = this.e.l().l();
        if (this.f == null) {
            finish();
        } else {
            km.a(3, f2379a, "Load view state: " + this.f.toString());
        }
    }

    public final void removeViewState() {
        if (this.e.l() != null) {
            km.a(3, f2379a, "Remove view state: " + this.e.l().k().toString());
        }
    }

    static /* synthetic */ void g(FlurryInternalTakeoverActivity flurryInternalTakeoverActivity) {
        if (!(flurryInternalTakeoverActivity.e instanceof t)) {
            return;
        }
        HashMap<String, Object> hashMap = flurryInternalTakeoverActivity.e.l().b.j;
        if (hashMap != null && !hashMap.isEmpty()) {
            hashMap.put(mj.b.DELTA_ON_CLICK.e, String.valueOf(SystemClock.elapsedRealtime() - flurryInternalTakeoverActivity.h));
        }
        if (mh.b().f3060a == null) {
            return;
        }
        mj mjVar = mh.b().f3060a;
        int i = mh.n;
    }
}
