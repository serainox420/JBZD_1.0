package com.google.android.gms.internal;

import android.graphics.PointF;
/* loaded from: classes2.dex */
public interface zzblk {

    /* loaded from: classes2.dex */
    public static class zza implements zzblk {
        @Override // com.google.android.gms.internal.zzblk
        public PointF zza(float f, PointF[] pointFArr, PointF pointF) {
            float f2 = 1.0f - f;
            float f3 = f2 * f2;
            float f4 = f3 * f2;
            float f5 = f * f;
            float f6 = f5 * f;
            pointF.set((pointFArr[0].x * f4) + (3.0f * f3 * f * pointFArr[1].x) + (3.0f * f2 * f5 * pointFArr[2].x) + (pointFArr[3].x * f6), (f2 * 3.0f * f5 * pointFArr[2].y) + (f3 * 3.0f * f * pointFArr[1].y) + (f4 * pointFArr[0].y) + (pointFArr[3].y * f6));
            return pointF;
        }
    }

    /* loaded from: classes2.dex */
    public static class zzb implements zzblk {
        @Override // com.google.android.gms.internal.zzblk
        public PointF zza(float f, PointF[] pointFArr, PointF pointF) {
            float f2 = 1.0f - f;
            pointF.set((((pointFArr[0].x * f2) + (pointFArr[1].x * f)) * f2) + (((pointFArr[1].x * f2) + (pointFArr[2].x * f)) * f), (((f2 * pointFArr[1].y) + (pointFArr[2].y * f)) * f) + (((pointFArr[0].y * f2) + (pointFArr[1].y * f)) * f2));
            return pointF;
        }
    }

    PointF zza(float f, PointF[] pointFArr, PointF pointF);
}
