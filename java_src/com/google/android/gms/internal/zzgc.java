package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.ConditionVariable;
import java.util.concurrent.Callable;
@zzme
/* loaded from: classes.dex */
public class zzgc {
    private final Object zzrJ = new Object();
    private final ConditionVariable zzBc = new ConditionVariable();
    private volatile boolean zztZ = false;
    private SharedPreferences zzBd = null;

    public void initialize(Context context) {
        if (this.zztZ) {
            return;
        }
        synchronized (this.zzrJ) {
            if (!this.zztZ) {
                Context remoteContext = com.google.android.gms.common.zzg.getRemoteContext(context);
                if (remoteContext == null) {
                    this.zzBc.open();
                } else {
                    this.zzBd = com.google.android.gms.ads.internal.zzw.zzcW().zzn(remoteContext);
                    this.zztZ = true;
                    this.zzBc.open();
                }
            }
        }
    }

    public <T> T zzd(final zzfz<T> zzfzVar) {
        if (!this.zzBc.block(5000L)) {
            throw new IllegalStateException("Flags.initialize() was not called!");
        }
        if (!this.zztZ) {
            synchronized (this.zzrJ) {
                if (!this.zztZ) {
                    return zzfzVar.zzfr();
                }
            }
        }
        return (T) zzqb.zzb(new Callable<T>() { // from class: com.google.android.gms.internal.zzgc.1
            /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
            @Override // java.util.concurrent.Callable
            public T call() {
                return zzfzVar.zza(zzgc.this.zzBd);
            }
        });
    }
}
