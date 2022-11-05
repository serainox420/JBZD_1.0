package com.google.android.gms.internal;

import java.util.Map;
/* loaded from: classes2.dex */
public class zzbrc {
    private final zzbph zzcag;
    private final zzbrb zzcak;

    public zzbrc(zzbph zzbphVar, zzbrb zzbrbVar) {
        this.zzcag = zzbphVar;
        this.zzcak = zzbrbVar;
    }

    public static zzbrc zzN(zzbph zzbphVar) {
        return new zzbrc(zzbphVar, zzbrb.zzcie);
    }

    public static zzbrc zzb(zzbph zzbphVar, Map<String, Object> map) {
        return new zzbrc(zzbphVar, zzbrb.zzaE(map));
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zzbrc zzbrcVar = (zzbrc) obj;
        return this.zzcag.equals(zzbrcVar.zzcag) && this.zzcak.equals(zzbrcVar.zzcak);
    }

    public int hashCode() {
        return (this.zzcag.hashCode() * 31) + this.zzcak.hashCode();
    }

    public boolean isDefault() {
        return this.zzcak.isDefault();
    }

    public String toString() {
        String valueOf = String.valueOf(this.zzcag);
        String valueOf2 = String.valueOf(this.zzcak);
        return new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(valueOf2).length()).append(valueOf).append(":").append(valueOf2).toString();
    }

    public zzbph zzWM() {
        return this.zzcag;
    }

    public zzbrw zzaaj() {
        return this.zzcak.zzaaj();
    }

    public boolean zzaan() {
        return this.zzcak.zzaan();
    }

    public zzbrb zzaaq() {
        return this.zzcak;
    }
}
