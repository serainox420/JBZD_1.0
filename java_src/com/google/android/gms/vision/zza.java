package com.google.android.gms.vision;

import android.util.SparseArray;
/* loaded from: classes2.dex */
public class zza {
    private SparseArray<Integer> zzbOx = new SparseArray<>();
    private SparseArray<Integer> zzbOy = new SparseArray<>();
    private static final Object zztX = new Object();
    private static int zzbOw = 0;

    public int zznR(int i) {
        int i2;
        synchronized (zztX) {
            Integer num = this.zzbOx.get(i);
            if (num != null) {
                i2 = num.intValue();
            } else {
                i2 = zzbOw;
                zzbOw++;
                this.zzbOx.append(i, Integer.valueOf(i2));
                this.zzbOy.append(i2, Integer.valueOf(i));
            }
        }
        return i2;
    }

    public int zznS(int i) {
        int intValue;
        synchronized (zztX) {
            intValue = this.zzbOy.get(i).intValue();
        }
        return intValue;
    }
}
