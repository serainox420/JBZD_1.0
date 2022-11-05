package com.google.android.gms.internal;

import android.os.IInterface;
import android.os.Looper;
import java.util.HashMap;
/* loaded from: classes2.dex */
public class zzcj<L, W extends IInterface> {
    private final Looper zzrs;
    private final zza<L, W> zzrt;
    private final HashMap<L, W> zzru = new HashMap<>();

    /* loaded from: classes2.dex */
    public interface zza<L, W extends IInterface> {
        W zza(L l, Looper looper);
    }

    public zzcj(Looper looper, zza<L, W> zzaVar) {
        this.zzrs = looper;
        this.zzrt = zzaVar;
    }

    public W zzc(L l) {
        W w = this.zzru.get(l);
        if (w == null) {
            W zza2 = this.zzrt.zza(l, this.zzrs);
            this.zzru.put(l, zza2);
            return zza2;
        }
        return w;
    }
}
