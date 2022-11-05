package android.support.v4.widget;

import android.content.Context;
import android.os.Build;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* compiled from: ScrollerCompat.java */
/* loaded from: classes.dex */
public final class x {

    /* renamed from: a  reason: collision with root package name */
    OverScroller f525a;
    private final boolean b;

    public static x a(Context context) {
        return a(context, null);
    }

    public static x a(Context context, Interpolator interpolator) {
        return new x(Build.VERSION.SDK_INT >= 14, context, interpolator);
    }

    x(boolean z, Context context, Interpolator interpolator) {
        this.b = z;
        this.f525a = interpolator != null ? new OverScroller(context, interpolator) : new OverScroller(context);
    }

    public boolean a() {
        return this.f525a.isFinished();
    }

    public int b() {
        return this.f525a.getCurrX();
    }

    public int c() {
        return this.f525a.getCurrY();
    }

    public int d() {
        return this.f525a.getFinalX();
    }

    public int e() {
        return this.f525a.getFinalY();
    }

    public float f() {
        return this.b ? y.a(this.f525a) : BitmapDescriptorFactory.HUE_RED;
    }

    public boolean g() {
        return this.f525a.computeScrollOffset();
    }

    public void a(int i, int i2, int i3, int i4) {
        this.f525a.startScroll(i, i2, i3, i4);
    }

    public void a(int i, int i2, int i3, int i4, int i5) {
        this.f525a.startScroll(i, i2, i3, i4, i5);
    }

    public void a(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        this.f525a.fling(i, i2, i3, i4, i5, i6, i7, i8);
    }

    public void a(int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10) {
        this.f525a.fling(i, i2, i3, i4, i5, i6, i7, i8, i9, i10);
    }

    public boolean a(int i, int i2, int i3, int i4, int i5, int i6) {
        return this.f525a.springBack(i, i2, i3, i4, i5, i6);
    }

    public void h() {
        this.f525a.abortAnimation();
    }
}
