package com.google.android.gms.internal;

import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public final class zzbut extends zzbuq {
    private final zzbvo<String, zzbuq> zzcpu = new zzbvo<>();

    private zzbuq zzaM(Object obj) {
        return obj == null ? zzbus.zzcpt : new zzbuw(obj);
    }

    public Set<Map.Entry<String, zzbuq>> entrySet() {
        return this.zzcpu.entrySet();
    }

    public boolean equals(Object obj) {
        return obj == this || ((obj instanceof zzbut) && ((zzbut) obj).zzcpu.equals(this.zzcpu));
    }

    public boolean has(String str) {
        return this.zzcpu.containsKey(str);
    }

    public int hashCode() {
        return this.zzcpu.hashCode();
    }

    public void zza(String str, zzbuq zzbuqVar) {
        if (zzbuqVar == null) {
            zzbuqVar = zzbus.zzcpt;
        }
        this.zzcpu.put(str, zzbuqVar);
    }

    public void zza(String str, Boolean bool) {
        zza(str, zzaM(bool));
    }

    public void zzaG(String str, String str2) {
        zza(str, zzaM(str2));
    }

    public zzbuq zzjR(String str) {
        return this.zzcpu.get(str);
    }

    public zzbun zzjS(String str) {
        return (zzbun) this.zzcpu.get(str);
    }
}
