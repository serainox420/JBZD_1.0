package com.google.android.gms.ads.internal.overlay;

import android.annotation.TargetApi;
import android.graphics.SurfaceTexture;
import com.google.android.gms.internal.zzgd;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzpo;
import java.util.concurrent.TimeUnit;
@zzme
@TargetApi(14)
/* loaded from: classes.dex */
public class zzw {
    private long zzOl;
    private final long zzOk = TimeUnit.MILLISECONDS.toNanos(zzgd.zzBH.get().longValue());
    private boolean zzOm = true;

    public void zza(SurfaceTexture surfaceTexture, final zzi zziVar) {
        if (zziVar == null) {
            return;
        }
        long timestamp = surfaceTexture.getTimestamp();
        if (!this.zzOm && Math.abs(timestamp - this.zzOl) < this.zzOk) {
            return;
        }
        this.zzOm = false;
        this.zzOl = timestamp;
        zzpo.zzXC.post(new Runnable(this) { // from class: com.google.android.gms.ads.internal.overlay.zzw.1
            @Override // java.lang.Runnable
            public void run() {
                zziVar.zzhY();
            }
        });
    }

    public void zzhV() {
        this.zzOm = true;
    }
}
