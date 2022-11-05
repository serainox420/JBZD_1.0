package com.flurry.sdk;

import android.app.KeyguardManager;
import android.content.Context;
import android.graphics.Rect;
import android.os.Handler;
import android.text.TextUtils;
import android.util.Log;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import com.flurry.sdk.d;
import com.flurry.sdk.gj;
import com.flurry.sdk.gz;
import com.flurry.sdk.n;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class x extends o {
    private static final String r = x.class.getSimpleName();
    private Handler A;
    private GestureDetector B;
    private KeyguardManager C;
    private long D;
    private gz.a E;
    public a k;
    public List<Integer> l;
    public List<String> m;
    public WeakReference<View> n;
    public WeakReference<View> o;
    public gj p;
    public gu q;
    private GestureDetector s;
    private kh<n> t;
    private boolean u;
    private WeakReference<View> v;
    private Rect w;
    private int x;
    private WeakReference<Button> y;
    private final int z;

    /* loaded from: classes2.dex */
    public enum a {
        INIT,
        READY
    }

    public x(Context context, String str) {
        super(context, null, str);
        this.l = null;
        this.m = null;
        this.u = false;
        this.v = new WeakReference<>(null);
        this.n = new WeakReference<>(null);
        this.o = new WeakReference<>(null);
        this.w = new Rect();
        this.x = 0;
        this.y = new WeakReference<>(null);
        this.z = 50;
        this.A = new Handler();
        this.p = null;
        this.q = null;
        this.D = 0L;
        this.E = new gz.a() { // from class: com.flurry.sdk.x.7
            @Override // com.flurry.sdk.gz.a
            public final void a() {
            }

            @Override // com.flurry.sdk.gz.a
            public final void b() {
            }

            @Override // com.flurry.sdk.gz.a
            public final void c() {
            }
        };
        this.s = new GestureDetector(context, new GestureDetector.SimpleOnGestureListener() { // from class: com.flurry.sdk.x.1
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                View view = (View) x.this.v.get();
                if (view != null) {
                    Log.i(x.r, "On item clicked" + view.getClass());
                    View view2 = (View) x.this.n.get();
                    if (view2 == null || a(motionEvent, view, view2)) {
                        View view3 = (View) x.this.o.get();
                        if (view3 == null || !a(motionEvent, view, view3)) {
                            x.this.B();
                            x.this.C();
                        } else {
                            x.this.F();
                        }
                    } else {
                        x.this.E();
                    }
                }
                return false;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public final boolean onDown(MotionEvent motionEvent) {
                return true;
            }

            private static boolean a(MotionEvent motionEvent, View view, View view2) {
                int[] iArr = new int[2];
                int[] iArr2 = new int[2];
                view.getLocationInWindow(iArr);
                view2.getLocationInWindow(iArr2);
                int i = iArr2[0] - iArr[0];
                int x = (int) motionEvent.getX();
                if (x < i || x > i + view2.getWidth()) {
                    return false;
                }
                int i2 = iArr2[1] - iArr[1];
                int y = (int) motionEvent.getY();
                return y >= i2 && y <= i2 + view2.getHeight();
            }
        });
        this.t = new kh<n>() { // from class: com.flurry.sdk.x.2
            @Override // com.flurry.sdk.kh
            public final /* synthetic */ void a(n nVar) {
                n nVar2 = nVar;
                if (nVar2.b != x.this.b || nVar2.f3064a == null) {
                    return;
                }
                if (nVar2.c.c == n.a.CLICK_TO_CALL.c) {
                    nVar2.f3064a.setTag(Integer.valueOf(n.a.CLICK_TO_CALL.c));
                } else {
                    nVar2.f3064a.setTag(Integer.valueOf(n.a.CALL_TO_ACTION.c));
                }
                x.this.y = new WeakReference(nVar2.f3064a);
                x.this.a(x.this.y);
            }
        };
        this.B = new GestureDetector(context, new GestureDetector.SimpleOnGestureListener() { // from class: com.flurry.sdk.x.3
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
            public final boolean onSingleTapConfirmed(MotionEvent motionEvent) {
                if (x.this.p != null) {
                    x.this.p.g();
                }
                if (x.this.p != null && !x.this.p.i() && !x.this.p.r()) {
                    x.this.p.a(gj.a.FULLSCREEN);
                    return false;
                }
                return false;
            }

            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public final boolean onDown(MotionEvent motionEvent) {
                return true;
            }
        });
        this.k = a.INIT;
        ki.a().a("com.flurry.android.impl.ads.RegisterCTAViewEvent", this.t);
    }

    @Override // com.flurry.sdk.o, com.flurry.sdk.r
    public final void a() {
        super.a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.o
    public final void q() {
        View view;
        super.q();
        if (a.READY.equals(this.k) && (view = this.v.get()) != null) {
            if (this.y.get() != null) {
                a(this.y);
            }
            if (view != null) {
                view.setOnTouchListener(new View.OnTouchListener() { // from class: com.flurry.sdk.x.5
                    @Override // android.view.View.OnTouchListener
                    public final boolean onTouch(View view2, MotionEvent motionEvent) {
                        x.this.s.onTouchEvent(motionEvent);
                        return true;
                    }
                });
                if (this.p != null && this.q != null) {
                    this.p.setClickable(false);
                    this.p.setOnTouchListener(new View.OnTouchListener() { // from class: com.flurry.sdk.x.6
                        @Override // android.view.View.OnTouchListener
                        public final boolean onTouch(View view2, MotionEvent motionEvent) {
                            x.this.B.onTouchEvent(motionEvent);
                            return true;
                        }
                    });
                }
            }
            if (!this.u) {
                long width = (!view.isShown() || !view.getGlobalVisibleRect(this.w)) ? 0L : this.w.width() * this.w.height();
                if (width > 0) {
                    if (((float) width) >= ((float) (50 * (view.getWidth() * view.getHeight()))) / 100.0f) {
                        int i = this.x + 1;
                        this.x = i;
                        if (i >= 10) {
                            B();
                        }
                    } else {
                        this.x = 0;
                    }
                } else {
                    this.x = 0;
                }
            }
            if (this.p != null) {
                this.p.c = b(view);
                if (this.p.c >= 50) {
                    this.p.b = true;
                }
            }
            if (this.p != null && !this.p.f() && this.p.h()) {
                if (this.D == 0) {
                    this.D = System.currentTimeMillis();
                }
                if (b(view) < 50 && this.q.b != null && this.q.b.isPlaying()) {
                    int b = this.q.b();
                    if (b != Integer.MIN_VALUE) {
                        km.a(3, r, "PlayPause: view-ability Ready to pause video position: " + b + " adObject: " + this.b);
                        this.q.c(b);
                    }
                } else if (b(view) >= 50 && this.g - this.D >= 250) {
                    if (this.q.b != null && !this.q.b.isPlaying() && !this.p.getVideoCompletedFromStateOrVideo() && !this.p.q()) {
                        km.a(3, r, "PlayPause: view-ability Ready to play video adObject: " + this.b);
                        gu guVar = this.q;
                        if (guVar.f2749a != null) {
                            guVar.f2749a.z();
                        }
                    }
                    this.D = 0L;
                }
            } else if (this.p != null && !this.p.f() && !this.p.h()) {
                if (b(view) < 50 && this.q.b != null && this.q.b.isPlaying()) {
                    int b2 = this.q.b();
                    if (b2 != Integer.MIN_VALUE) {
                        km.a(3, r, "PlayPause: view-ability Ready to pause video position: " + b2 + " adObject: " + this.b);
                        this.q.c(b2);
                        this.p.j();
                        return;
                    }
                    return;
                }
                this.p.c = b(view);
                if (this.p.c >= 50 && !this.q.b.isPlaying() && this.q.b != null && !this.q.b.c()) {
                    this.p.b = true;
                }
            }
        }
    }

    private int b(View view) {
        boolean inKeyguardRestrictedInputMode;
        if (view.isShown()) {
            if (f() == null) {
                inKeyguardRestrictedInputMode = false;
            } else {
                if (this.C == null) {
                    this.C = (KeyguardManager) f().getSystemService("keyguard");
                }
                inKeyguardRestrictedInputMode = this.C.inKeyguardRestrictedInputMode();
            }
            if (!inKeyguardRestrictedInputMode) {
                Rect rect = new Rect();
                view.getGlobalVisibleRect(rect);
                return (int) (((rect.height() * rect.width()) * 100.0d) / (view.getWidth() * view.getHeight()));
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.o
    public final void a(d dVar) {
        super.a(dVar);
        if (!d.a.kOnFetched.equals(dVar.b)) {
            return;
        }
        au auVar = this.h;
        if (auVar == null) {
            fh.a(this, bb.kMissingAdController);
            return;
        }
        cs csVar = auVar.b.b;
        if (csVar == null) {
            fh.a(this, bb.kInvalidAdUnit);
        } else if (!cu.NATIVE.equals(csVar.f2516a)) {
            fh.a(this, bb.kIncorrectClassForAdSpace);
        } else {
            p();
            synchronized (this) {
                this.k = a.READY;
            }
        }
    }

    public final boolean u() {
        boolean equals;
        synchronized (this) {
            equals = a.READY.equals(this.k);
        }
        return equals;
    }

    @Override // com.flurry.sdk.r
    public final boolean t() {
        if (!a.READY.equals(this.k)) {
            return false;
        }
        return this.i.n();
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean v() {
        if (!a.READY.equals(this.k)) {
            return false;
        }
        for (de deVar : this.i.b.b()) {
            if (deVar.f2530a.equals("videoUrl") || deVar.f2530a.equals("vastAd")) {
                return true;
            }
            while (r2.hasNext()) {
            }
        }
        return false;
    }

    public final void w() {
        synchronized (this) {
            if (a.INIT.equals(this.k)) {
                r();
            } else if (a.READY.equals(this.k)) {
                km.a(r, "NativeAdObject fetched: " + this);
                fh.a(this);
            }
        }
    }

    public final void a(View view) {
        x();
        this.v = new WeakReference<>(view);
        if (view instanceof ViewGroup) {
            a((ViewGroup) view);
        }
    }

    public final void a(WeakReference<Button> weakReference) {
        if (weakReference.get() != null) {
            final Button button = weakReference.get();
            button.setClickable(true);
            button.setOnClickListener(new View.OnClickListener() { // from class: com.flurry.sdk.x.4
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    View view2 = (View) x.this.v.get();
                    if (view2 != null) {
                        Log.i(x.r, "On item clicked" + view2.getClass());
                        x.this.B();
                        if (((Integer) button.getTag()).intValue() == n.a.CLICK_TO_CALL.c) {
                            x.this.D();
                        } else {
                            x.this.C();
                        }
                    }
                }
            });
        }
    }

    public final void x() {
        b(this.v);
        b(this.n);
        b(this.o);
    }

    private static void b(WeakReference<View> weakReference) {
        View view = weakReference.get();
        if (view != null) {
            view.setOnTouchListener(null);
            weakReference.clear();
        }
    }

    private de b(String str) {
        if (!TextUtils.isEmpty(str) && a.READY.equals(this.k)) {
            for (de deVar : this.i.b.b()) {
                if (deVar.f2530a.equals(str)) {
                    return deVar;
                }
            }
            return null;
        }
        return null;
    }

    public final List<de> y() {
        if (!a.READY.equals(this.k)) {
            return Collections.emptyList();
        }
        return new ArrayList(this.i.b.b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void B() {
        if (!this.u) {
            km.c(r, "Impression logged");
            ff.a(bc.EV_NATIVE_IMPRESSION, Collections.emptyMap(), f(), this, this.i, 0);
            this.u = true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void C() {
        km.c(r, "Click logged");
        ff.a(bc.EV_CLICKED, Collections.emptyMap(), f(), this, this.i, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void D() {
        km.c(r, "Call Click logged");
        bc bcVar = bc.EV_CALL_CLICK_BEACON;
        Map emptyMap = Collections.emptyMap();
        km.a(4, r, "Sending EventType:" + bcVar + " for AdUnitId:" + this.b);
        ff.a(bcVar, emptyMap, f(), this, this.i, 0);
        de b = b("clickToCall");
        if (b != null) {
            ff.a(bc.INTERNAL_EV_CALL_CLICKED, b.f, f(), this, this.i, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void E() {
        km.c(r, "Expand logged");
        ff.a(bc.EV_AD_EXPANDED, Collections.emptyMap(), f(), this, this.i, 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public synchronized void F() {
        km.c(r, "Collapse logged");
        ff.a(bc.EV_AD_COLLAPSED, Collections.emptyMap(), f(), this, this.i, 0);
    }

    private void a(ViewGroup viewGroup) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof ViewGroup) {
                a((ViewGroup) childAt);
            }
            childAt.setFocusable(false);
            childAt.setClickable(false);
        }
    }

    public final void z() {
        this.p.a(gj.a.INSTREAM);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.flurry.sdk.o
    public final void b() {
        if (!v()) {
            super.b();
        }
    }
}
