package com.google.android.gms.internal;

import android.util.Log;
import com.google.firebase.a;
import java.util.Random;
/* loaded from: classes2.dex */
public class zzbtv {
    private volatile boolean zzK;
    private a zzcli;
    private long zzcoH;
    static zzbtx zzcoG = new zzbty();
    static com.google.android.gms.common.util.zze zzajZ = com.google.android.gms.common.util.zzi.zzzc();
    private static Random zzbSW = new Random();

    public zzbtv(a aVar, long j) {
        this.zzcli = aVar;
        this.zzcoH = j;
    }

    public void cancel() {
        this.zzK = true;
    }

    public void reset() {
        this.zzK = false;
    }

    public void zza(zzbue zzbueVar, boolean z) {
        com.google.android.gms.common.internal.zzac.zzw(zzbueVar);
        long elapsedRealtime = zzajZ.elapsedRealtime() + this.zzcoH;
        if (z) {
            zzbueVar.zzd(zzbua.zzi(this.zzcli), this.zzcli.a());
        } else {
            zzbueVar.zzjN(zzbua.zzi(this.zzcli));
        }
        int i = 1000;
        while (zzajZ.elapsedRealtime() + i <= elapsedRealtime && !zzbueVar.zzadc() && zzqR(zzbueVar.getResultCode())) {
            try {
                zzcoG.zzqS(zzbSW.nextInt(250) + i);
                if (i < 30000) {
                    if (zzbueVar.getResultCode() != -2) {
                        i *= 2;
                        Log.w("ExponenentialBackoff", "network error occurred, backing off/sleeping.");
                    } else {
                        Log.w("ExponenentialBackoff", "network unavailable, sleeping.");
                        i = 1000;
                    }
                }
                if (this.zzK) {
                    return;
                }
                zzbueVar.reset();
                if (z) {
                    zzbueVar.zzd(zzbua.zzi(this.zzcli), this.zzcli.a());
                } else {
                    zzbueVar.zzjN(zzbua.zzi(this.zzcli));
                }
            } catch (InterruptedException e) {
                Log.w("ExponenentialBackoff", "thread interrupted during exponential backoff.");
                Thread.currentThread().interrupt();
                return;
            }
        }
    }

    public void zze(zzbue zzbueVar) {
        zza(zzbueVar, true);
    }

    public boolean zzqR(int i) {
        return (i >= 500 && i < 600) || i == -2 || i == 429 || i == 408;
    }
}
