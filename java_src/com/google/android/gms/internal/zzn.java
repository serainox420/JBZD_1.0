package com.google.android.gms.internal;

import com.google.android.gms.internal.zzb;
/* loaded from: classes2.dex */
public class zzn<T> {
    public final T result;
    public final zzb.zza zzaf;
    public final zzs zzag;
    public boolean zzah;

    /* loaded from: classes2.dex */
    public interface zza {
        void zze(zzs zzsVar);
    }

    /* loaded from: classes2.dex */
    public interface zzb<T> {
        void zzb(T t);
    }

    private zzn(zzs zzsVar) {
        this.zzah = false;
        this.result = null;
        this.zzaf = null;
        this.zzag = zzsVar;
    }

    private zzn(T t, zzb.zza zzaVar) {
        this.zzah = false;
        this.result = t;
        this.zzaf = zzaVar;
        this.zzag = null;
    }

    public static <T> zzn<T> zza(T t, zzb.zza zzaVar) {
        return new zzn<>(t, zzaVar);
    }

    public static <T> zzn<T> zzd(zzs zzsVar) {
        return new zzn<>(zzsVar);
    }

    public boolean isSuccess() {
        return this.zzag == null;
    }
}
