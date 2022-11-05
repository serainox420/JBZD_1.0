package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbie {
    private zzbhx zzbMd;

    public String getId() {
        return this.zzbMd == null ? "" : this.zzbMd.getContainerId();
    }

    public zzbhx zzSK() {
        return this.zzbMd;
    }

    public zzbie zza(zzbhx zzbhxVar) throws IllegalArgumentException {
        com.google.android.gms.common.internal.zzac.zzw(zzbhxVar);
        this.zzbMd = zzbhxVar;
        return this;
    }
}
