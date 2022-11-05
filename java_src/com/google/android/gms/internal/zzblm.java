package com.google.android.gms.internal;

import android.graphics.PointF;
import com.google.android.gms.internal.zzblk;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzblm {
    private static final zzblk.zzb zzbWl = new zzblk.zzb();
    private static final zzblk.zza zzbWm = new zzblk.zza();
    private ArrayList<zzd> zzaJz = new ArrayList<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zza {
        zza zzbWn;
        float zzbWo;
        PointF zzbWp;

        zza(zza zzaVar, float f, PointF pointF) {
            this.zzbWn = zzaVar;
            this.zzbWo = f;
            this.zzbWp = pointF;
        }
    }

    /* loaded from: classes2.dex */
    public static class zzb implements zzd {
        final float zzbWq;
        final float zzbWr;
        final float zzbWs;
        final float zzbWt;
        final float zzbWu;
        final float zzbWv;
        private final boolean zzbWw;

        public zzb(float f, float f2, float f3, float f4, float f5, float f6, boolean z) {
            this.zzbWq = f;
            this.zzbWr = f2;
            this.zzbWs = f3;
            this.zzbWt = f4;
            this.zzbWu = f5;
            this.zzbWv = f6;
            this.zzbWw = z;
        }

        @Override // com.google.android.gms.internal.zzblm.zzd
        public void zza(ArrayList<PointF> arrayList, ArrayList<Float> arrayList2, float f, PointF pointF) {
            PointF pointF2 = arrayList.isEmpty() ? new PointF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED) : arrayList.get(arrayList.size() - 1);
            zzblm.zza(this.zzbWw ? new PointF[]{pointF2, new PointF(this.zzbWq + pointF2.x, this.zzbWr + pointF2.y), new PointF(this.zzbWs + pointF2.x, this.zzbWt + pointF2.y), new PointF(this.zzbWu + pointF2.x, pointF2.y + this.zzbWv)} : new PointF[]{pointF2, new PointF(this.zzbWq, this.zzbWr), new PointF(this.zzbWs, this.zzbWt), new PointF(this.zzbWu, this.zzbWv)}, zzblm.zzbWm, true, arrayList, arrayList2, f, pointF);
        }
    }

    /* loaded from: classes2.dex */
    public static class zzc implements zzd {
        final float x;
        final float y;
        private final boolean zzbWw;

        public zzc(float f, float f2, boolean z) {
            this.x = f;
            this.y = f2;
            this.zzbWw = z;
        }

        @Override // com.google.android.gms.internal.zzblm.zzd
        public void zza(ArrayList<PointF> arrayList, ArrayList<Float> arrayList2, float f, PointF pointF) {
            PointF pointF2;
            if (!arrayList2.isEmpty()) {
                arrayList2.add(arrayList2.get(arrayList2.size() - 1));
            } else {
                arrayList2.add(Float.valueOf((float) BitmapDescriptorFactory.HUE_RED));
            }
            if (!this.zzbWw || arrayList.isEmpty()) {
                pointF2 = new PointF(this.x, this.y);
            } else {
                PointF pointF3 = arrayList.get(arrayList.size() - 1);
                pointF2 = new PointF(pointF3.x + this.x, pointF3.y + this.y);
            }
            arrayList.add(pointF2);
            pointF.set(pointF2);
        }
    }

    /* loaded from: classes2.dex */
    public interface zzd {
        void zza(ArrayList<PointF> arrayList, ArrayList<Float> arrayList2, float f, PointF pointF);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0112  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void zza(PointF[] pointFArr, zzblk zzblkVar, boolean z, ArrayList<PointF> arrayList, ArrayList<Float> arrayList2, float f, PointF pointF) {
        boolean z2;
        zza zzaVar = new zza(null, 1.0f, zzblkVar.zza(1.0f, pointFArr, new PointF()));
        zza zzaVar2 = new zza(zzaVar, BitmapDescriptorFactory.HUE_RED, zzblkVar.zza(BitmapDescriptorFactory.HUE_RED, pointFArr, new PointF()));
        float[] fArr = new float[1];
        zza zzaVar3 = zzaVar2;
        boolean z3 = z;
        while (zzaVar != null) {
            do {
                zza zzaVar4 = zzaVar;
                boolean z4 = z3;
                PointF pointF2 = new PointF();
                boolean zza2 = zza(pointFArr, zzblkVar, zzaVar3.zzbWo, zzaVar3.zzbWp, zzaVar4.zzbWo, zzaVar4.zzbWp, fArr, pointF2, f);
                if (!zza2 && z4) {
                    zza2 = zza(pointFArr, zzblkVar, zzaVar3.zzbWo, zzaVar3.zzbWp, fArr[0], pointF2, new float[1], new PointF(), f);
                    if (zza2) {
                        z2 = zza2;
                        z3 = false;
                        if (!z2) {
                            zzaVar = new zza(zzaVar4, fArr[0], pointF2);
                            zzaVar3.zzbWn = zzaVar;
                            continue;
                        } else {
                            zzaVar = zzaVar4;
                            continue;
                        }
                    }
                }
                z2 = zza2;
                z3 = z4;
                if (!z2) {
                }
            } while (z2);
            zzaVar3 = zzaVar;
            zzaVar = zzaVar.zzbWn;
        }
        if (arrayList.isEmpty()) {
            arrayList.add(new PointF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
            arrayList2.add(Float.valueOf((float) BitmapDescriptorFactory.HUE_RED));
            pointF.set(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        }
        PointF pointF3 = arrayList.get(arrayList.size() - 1);
        float floatValue = arrayList2.get(arrayList2.size() - 1).floatValue();
        PointF pointF4 = pointF3;
        for (zza zzaVar5 = zzaVar2; zzaVar5 != null; zzaVar5 = zzaVar5.zzbWn) {
            arrayList.add(zzaVar5.zzbWp);
            floatValue += PointF.length(zzaVar5.zzbWp.x - pointF4.x, zzaVar5.zzbWp.y - pointF4.y);
            arrayList2.add(Float.valueOf(floatValue));
            pointF4 = zzaVar5.zzbWp;
        }
    }

    static boolean zza(PointF[] pointFArr, zzblk zzblkVar, float f, PointF pointF, float f2, PointF pointF2, float[] fArr, PointF pointF3, float f3) {
        fArr[0] = (f2 + f) / 2.0f;
        zzblkVar.zza(fArr[0], pointFArr, pointF3);
        float f4 = pointF3.x - ((pointF2.x + pointF.x) / 2.0f);
        float f5 = pointF3.y - ((pointF2.y + pointF.y) / 2.0f);
        return (f4 * f4) + (f5 * f5) > f3;
    }

    public void cubicTo(float f, float f2, float f3, float f4, float f5, float f6) {
        this.zzaJz.add(new zzb(f, f2, f3, f4, f5, f6, false));
    }

    public void moveTo(float f, float f2) {
        this.zzaJz.add(new zzc(f, f2, false));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public float[] zzj(float f) {
        float f2;
        int i = 0;
        int size = this.zzaJz.size();
        ArrayList<PointF> arrayList = new ArrayList<>(size + 1);
        ArrayList<Float> arrayList2 = new ArrayList<>(size + 1);
        float f3 = f * f;
        PointF pointF = new PointF();
        for (int i2 = 0; i2 < size; i2++) {
            this.zzaJz.get(i2).zza(arrayList, arrayList2, f3, pointF);
        }
        if (arrayList.isEmpty()) {
            arrayList.add(new PointF(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED));
            arrayList2.add(Float.valueOf((float) BitmapDescriptorFactory.HUE_RED));
        }
        float floatValue = arrayList2.get(arrayList2.size() - 1).floatValue();
        if (floatValue == BitmapDescriptorFactory.HUE_RED) {
            arrayList.add(arrayList.get(arrayList.size() - 1));
            arrayList2.add(Float.valueOf(1.0f));
            f2 = 1.0f;
        } else {
            f2 = floatValue;
        }
        int size2 = arrayList.size();
        float[] fArr = new float[size2 * 3];
        int i3 = 0;
        while (i < size2) {
            PointF pointF2 = arrayList.get(i);
            int i4 = i3 + 1;
            fArr[i3] = arrayList2.get(i).floatValue() / f2;
            int i5 = i4 + 1;
            fArr[i4] = pointF2.x;
            fArr[i5] = pointF2.y;
            i++;
            i3 = i5 + 1;
        }
        return fArr;
    }
}
