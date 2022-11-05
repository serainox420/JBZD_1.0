package android.support.v4.view.b;

import android.view.animation.Interpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* compiled from: LookupTableInterpolator.java */
/* loaded from: classes.dex */
abstract class d implements Interpolator {

    /* renamed from: a  reason: collision with root package name */
    private final float[] f452a;
    private final float b;

    public d(float[] fArr) {
        this.f452a = fArr;
        this.b = 1.0f / (this.f452a.length - 1);
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        if (f >= 1.0f) {
            return 1.0f;
        }
        if (f <= BitmapDescriptorFactory.HUE_RED) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        int min = Math.min((int) ((this.f452a.length - 1) * f), this.f452a.length - 2);
        float f2 = (f - (min * this.b)) / this.b;
        return ((this.f452a[min + 1] - this.f452a[min]) * f2) + this.f452a[min];
    }
}
