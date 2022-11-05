package com.google.android.gms.internal;

import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.concurrent.Callable;
/* loaded from: classes2.dex */
public class zzbqk implements zzbql {
    private boolean zzcaG = false;

    private void zzWS() {
        zzbte.zzb(this.zzcaG, "Transaction expected to already be in progress.");
    }

    @Override // com.google.android.gms.internal.zzbql
    public List<zzbpv> zzWO() {
        return Collections.emptyList();
    }

    @Override // com.google.android.gms.internal.zzbql
    public void zzWR() {
        zzWS();
    }

    @Override // com.google.android.gms.internal.zzbql
    public void zza(zzbph zzbphVar, zzboy zzboyVar, long j) {
        zzWS();
    }

    @Override // com.google.android.gms.internal.zzbql
    public void zza(zzbph zzbphVar, zzbsc zzbscVar, long j) {
        zzWS();
    }

    @Override // com.google.android.gms.internal.zzbql
    public void zza(zzbrc zzbrcVar, zzbsc zzbscVar) {
        zzWS();
    }

    @Override // com.google.android.gms.internal.zzbql
    public void zza(zzbrc zzbrcVar, Set<zzbrq> set) {
        zzWS();
    }

    @Override // com.google.android.gms.internal.zzbql
    public void zza(zzbrc zzbrcVar, Set<zzbrq> set, Set<zzbrq> set2) {
        zzWS();
    }

    @Override // com.google.android.gms.internal.zzbql
    public void zzaD(long j) {
        zzWS();
    }

    @Override // com.google.android.gms.internal.zzbql
    public void zzc(zzbph zzbphVar, zzboy zzboyVar) {
        zzWS();
    }

    @Override // com.google.android.gms.internal.zzbql
    public void zzd(zzbph zzbphVar, zzboy zzboyVar) {
        zzWS();
    }

    @Override // com.google.android.gms.internal.zzbql
    public zzbqu zzf(zzbrc zzbrcVar) {
        return new zzbqu(zzbrx.zza(zzbrv.zzaaZ(), zzbrcVar.zzaaj()), false, false);
    }

    @Override // com.google.android.gms.internal.zzbql
    public <T> T zzf(Callable<T> callable) {
        zzbte.zzb(!this.zzcaG, "runInTransaction called when an existing transaction is already in progress.");
        this.zzcaG = true;
        try {
            return callable.call();
        } finally {
        }
    }

    @Override // com.google.android.gms.internal.zzbql
    public void zzg(zzbrc zzbrcVar) {
        zzWS();
    }

    @Override // com.google.android.gms.internal.zzbql
    public void zzh(zzbrc zzbrcVar) {
        zzWS();
    }

    @Override // com.google.android.gms.internal.zzbql
    public void zzi(zzbrc zzbrcVar) {
        zzWS();
    }

    @Override // com.google.android.gms.internal.zzbql
    public void zzk(zzbph zzbphVar, zzbsc zzbscVar) {
        zzWS();
    }
}
