package com.google.android.gms.internal;

import com.google.android.gms.internal.zzag;
import java.util.concurrent.Callable;
/* loaded from: classes2.dex */
public class zzbp implements Callable {
    private final zzbd zzpz;
    private final zzag.zza zzqV;

    public zzbp(zzbd zzbdVar, zzag.zza zzaVar) {
        this.zzpz = zzbdVar;
        this.zzqV = zzaVar;
    }

    @Override // java.util.concurrent.Callable
    /* renamed from: zzbk */
    public Void call() throws Exception {
        if (this.zzpz.zzaS() != null) {
            this.zzpz.zzaS().get();
        }
        zzag.zza zzaR = this.zzpz.zzaR();
        if (zzaR != null) {
            try {
                synchronized (this.zzqV) {
                    zzbxt.zza(this.zzqV, zzbxt.zzf(zzaR));
                }
                return null;
            } catch (zzbxs e) {
                return null;
            }
        }
        return null;
    }
}
