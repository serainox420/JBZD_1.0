package android.support.v4.view;

import android.os.Build;
import android.view.MotionEvent;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* compiled from: MotionEventCompat.java */
/* loaded from: classes.dex */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    static final d f470a;

    /* compiled from: MotionEventCompat.java */
    /* loaded from: classes.dex */
    interface d {
        float a(MotionEvent motionEvent, int i);
    }

    /* compiled from: MotionEventCompat.java */
    /* loaded from: classes.dex */
    static class a implements d {
        a() {
        }

        @Override // android.support.v4.view.t.d
        public float a(MotionEvent motionEvent, int i) {
            return BitmapDescriptorFactory.HUE_RED;
        }
    }

    /* compiled from: MotionEventCompat.java */
    /* loaded from: classes.dex */
    static class b extends a {
        b() {
        }

        @Override // android.support.v4.view.t.a, android.support.v4.view.t.d
        public float a(MotionEvent motionEvent, int i) {
            return u.a(motionEvent, i);
        }
    }

    /* compiled from: MotionEventCompat.java */
    /* loaded from: classes.dex */
    private static class c extends b {
        c() {
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 14) {
            f470a = new c();
        } else if (Build.VERSION.SDK_INT >= 12) {
            f470a = new b();
        } else {
            f470a = new a();
        }
    }

    public static int a(MotionEvent motionEvent) {
        return motionEvent.getAction() & 255;
    }

    public static int b(MotionEvent motionEvent) {
        return (motionEvent.getAction() & 65280) >> 8;
    }

    @Deprecated
    public static int a(MotionEvent motionEvent, int i) {
        return motionEvent.findPointerIndex(i);
    }

    @Deprecated
    public static int b(MotionEvent motionEvent, int i) {
        return motionEvent.getPointerId(i);
    }

    @Deprecated
    public static float c(MotionEvent motionEvent, int i) {
        return motionEvent.getX(i);
    }

    @Deprecated
    public static float d(MotionEvent motionEvent, int i) {
        return motionEvent.getY(i);
    }

    public static float e(MotionEvent motionEvent, int i) {
        return f470a.a(motionEvent, i);
    }
}
