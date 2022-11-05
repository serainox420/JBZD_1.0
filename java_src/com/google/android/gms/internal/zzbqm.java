package com.google.android.gms.internal;

import java.util.List;
import java.util.Set;
/* loaded from: classes2.dex */
public interface zzbqm {
    void beginTransaction();

    void endTransaction();

    void setTransactionSuccessful();

    List<zzbpv> zzWO();

    long zzWP();

    List<zzbqo> zzWQ();

    void zzWR();

    zzbsc zza(zzbph zzbphVar);

    void zza(long j, Set<zzbrq> set);

    void zza(long j, Set<zzbrq> set, Set<zzbrq> set2);

    void zza(zzbph zzbphVar, zzboy zzboyVar);

    void zza(zzbph zzbphVar, zzboy zzboyVar, long j);

    void zza(zzbph zzbphVar, zzbqn zzbqnVar);

    void zza(zzbph zzbphVar, zzbsc zzbscVar);

    void zza(zzbph zzbphVar, zzbsc zzbscVar, long j);

    void zza(zzbqo zzbqoVar);

    void zzaD(long j);

    void zzaE(long j);

    void zzaF(long j);

    Set<zzbrq> zzaG(long j);

    void zzb(zzbph zzbphVar, zzbsc zzbscVar);

    Set<zzbrq> zzg(Set<Long> set);
}
