package com.google.android.gms.internal;

import android.graphics.Bitmap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
@zzme
/* loaded from: classes.dex */
public class zzpx {
    Map<Integer, Bitmap> zzYB = new ConcurrentHashMap();
    private AtomicInteger zzYC = new AtomicInteger(0);

    public Bitmap zza(Integer num) {
        return this.zzYB.get(num);
    }

    public int zzb(Bitmap bitmap) {
        if (bitmap == null) {
            zzpk.zzbf("Bitmap is null. Skipping putting into the Memory Map.");
            return -1;
        }
        this.zzYB.put(Integer.valueOf(this.zzYC.get()), bitmap);
        return this.zzYC.getAndIncrement();
    }

    public void zzb(Integer num) {
        this.zzYB.remove(num);
    }
}
