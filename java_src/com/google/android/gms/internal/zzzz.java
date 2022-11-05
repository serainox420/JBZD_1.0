package com.google.android.gms.internal;

import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions;
/* loaded from: classes2.dex */
public final class zzzz<O extends Api.ApiOptions> {
    private final Api<O> zzaxf;
    private final O zzayT;
    private final boolean zzazL;
    private final int zzazM;

    private zzzz(Api<O> api) {
        this.zzazL = true;
        this.zzaxf = api;
        this.zzayT = null;
        this.zzazM = System.identityHashCode(this);
    }

    private zzzz(Api<O> api, O o) {
        this.zzazL = false;
        this.zzaxf = api;
        this.zzayT = o;
        this.zzazM = com.google.android.gms.common.internal.zzaa.hashCode(this.zzaxf, this.zzayT);
    }

    public static <O extends Api.ApiOptions> zzzz<O> zza(Api<O> api, O o) {
        return new zzzz<>(api, o);
    }

    public static <O extends Api.ApiOptions> zzzz<O> zzb(Api<O> api) {
        return new zzzz<>(api);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzzz)) {
            return false;
        }
        zzzz zzzzVar = (zzzz) obj;
        return !this.zzazL && !zzzzVar.zzazL && com.google.android.gms.common.internal.zzaa.equal(this.zzaxf, zzzzVar.zzaxf) && com.google.android.gms.common.internal.zzaa.equal(this.zzayT, zzzzVar.zzayT);
    }

    public int hashCode() {
        return this.zzazM;
    }

    public String zzvw() {
        return this.zzaxf.getName();
    }
}
