package com.google.android.gms.internal;

import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class zzbpz {
    private final zzbph zzcgD;
    private final zzbpy zzcgE;

    public zzbpz(zzbph zzbphVar, zzbpy zzbpyVar) {
        this.zzcgD = zzbphVar;
        this.zzcgE = zzbpyVar;
    }

    public zzbsb zza(zzbsc zzbscVar, zzbsb zzbsbVar, boolean z, zzbrw zzbrwVar) {
        return this.zzcgE.zza(this.zzcgD, zzbscVar, zzbsbVar, z, zzbrwVar);
    }

    public zzbsc zza(zzbph zzbphVar, zzbsc zzbscVar, zzbsc zzbscVar2) {
        return this.zzcgE.zza(this.zzcgD, zzbphVar, zzbscVar, zzbscVar2);
    }

    public zzbsc zza(zzbrq zzbrqVar, zzbqu zzbquVar) {
        return this.zzcgE.zza(this.zzcgD, zzbrqVar, zzbquVar);
    }

    public zzbsc zza(zzbsc zzbscVar, List<Long> list) {
        return zza(zzbscVar, list, false);
    }

    public zzbsc zza(zzbsc zzbscVar, List<Long> list, boolean z) {
        return this.zzcgE.zza(this.zzcgD, zzbscVar, list, z);
    }

    public zzbpz zzb(zzbrq zzbrqVar) {
        return new zzbpz(this.zzcgD.zza(zzbrqVar), this.zzcgE);
    }

    public zzbsc zzc(zzbsc zzbscVar) {
        return zza(zzbscVar, Collections.emptyList());
    }

    public zzbsc zzd(zzbsc zzbscVar) {
        return this.zzcgE.zzj(this.zzcgD, zzbscVar);
    }

    public zzbsc zzv(zzbph zzbphVar) {
        return this.zzcgE.zzv(this.zzcgD.zzh(zzbphVar));
    }
}
