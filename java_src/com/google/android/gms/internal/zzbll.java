package com.google.android.gms.internal;

import android.view.animation.Interpolator;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2.dex */
public class zzbll implements Interpolator {
    private float[] zzbWj;
    private float[] zzbWk;

    public zzbll(float f, float f2, float f3, float f4) {
        zzblm zzblmVar = new zzblm();
        zzblmVar.moveTo(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        zzblmVar.cubicTo(f, f2, f3, f4, 1.0f, 1.0f);
        zza(zzblmVar);
    }

    private void zza(zzblm zzblmVar) {
        int i = 0;
        float[] zzj = zzblmVar.zzj(0.002f);
        int length = zzj.length / 3;
        if (zzj[1] == BitmapDescriptorFactory.HUE_RED && zzj[2] == BitmapDescriptorFactory.HUE_RED && zzj[zzj.length - 2] == 1.0f && zzj[zzj.length - 1] == 1.0f) {
            this.zzbWj = new float[length];
            this.zzbWk = new float[length];
            float f = 0.0f;
            float f2 = 0.0f;
            int i2 = 0;
            while (i < length) {
                int i3 = i2 + 1;
                float f3 = zzj[i2];
                int i4 = i3 + 1;
                float f4 = zzj[i3];
                i2 = i4 + 1;
                float f5 = zzj[i4];
                if (f3 == f && f4 != f2) {
                    throw new IllegalArgumentException("The Path cannot have discontinuity in the X axis.");
                }
                if (f4 < f2) {
                    throw new IllegalArgumentException("The Path cannot loop back on itself.");
                }
                this.zzbWj[i] = f4;
                this.zzbWk[i] = f5;
                i++;
                f = f3;
                f2 = f4;
            }
            return;
        }
        throw new IllegalArgumentException("The Path must start at (0,0) and end at (1,1)");
    }

    @Override // android.animation.TimeInterpolator
    public float getInterpolation(float f) {
        int i;
        if (f <= BitmapDescriptorFactory.HUE_RED) {
            return BitmapDescriptorFactory.HUE_RED;
        }
        if (f >= 1.0f) {
            return 1.0f;
        }
        int i2 = 0;
        int length = this.zzbWj.length - 1;
        while (length - i2 > 1) {
            int i3 = (i2 + length) / 2;
            if (f < this.zzbWj[i3]) {
                i = i2;
            } else {
                int i4 = length;
                i = i3;
                i3 = i4;
            }
            i2 = i;
            length = i3;
        }
        float f2 = this.zzbWj[length] - this.zzbWj[i2];
        if (f2 == BitmapDescriptorFactory.HUE_RED) {
            return this.zzbWk[i2];
        }
        float f3 = (f - this.zzbWj[i2]) / f2;
        float f4 = this.zzbWk[i2];
        return (f3 * (this.zzbWk[length] - f4)) + f4;
    }
}
