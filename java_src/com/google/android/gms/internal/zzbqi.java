package com.google.android.gms.internal;

import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
/* loaded from: classes2.dex */
public class zzbqi implements zzbql {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final zzbrn zzcaF;
    private final zzbqm zzchb;
    private final zzbqp zzchc;
    private final zzbqh zzchd;
    private long zzche;

    static {
        $assertionsDisabled = !zzbqi.class.desiredAssertionStatus();
    }

    public zzbqi(zzbpa zzbpaVar, zzbqm zzbqmVar, zzbqh zzbqhVar) {
        this(zzbpaVar, zzbqmVar, zzbqhVar, new zzbsx());
    }

    public zzbqi(zzbpa zzbpaVar, zzbqm zzbqmVar, zzbqh zzbqhVar, zzbsw zzbswVar) {
        this.zzche = 0L;
        this.zzchb = zzbqmVar;
        this.zzcaF = zzbpaVar.zziV("Persistence");
        this.zzchc = new zzbqp(this.zzchb, this.zzcaF, zzbswVar);
        this.zzchd = zzbqhVar;
    }

    private void zzZH() {
        this.zzche++;
        if (this.zzchd.zzaQ(this.zzche)) {
            if (this.zzcaF.zzaaD()) {
                this.zzcaF.zzi("Reached prune check threshold.", new Object[0]);
            }
            this.zzche = 0L;
            boolean z = true;
            long zzWP = this.zzchb.zzWP();
            if (this.zzcaF.zzaaD()) {
                this.zzcaF.zzi(new StringBuilder(32).append("Cache size: ").append(zzWP).toString(), new Object[0]);
            }
            while (z && this.zzchd.zzk(zzWP, this.zzchc.zzZL())) {
                zzbqn zza = this.zzchc.zza(this.zzchd);
                if (zza.zzZI()) {
                    this.zzchb.zza(zzbph.zzYP(), zza);
                } else {
                    z = false;
                }
                zzWP = this.zzchb.zzWP();
                if (this.zzcaF.zzaaD()) {
                    this.zzcaF.zzi(new StringBuilder(44).append("Cache size after prune: ").append(zzWP).toString(), new Object[0]);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.zzbql
    public List<zzbpv> zzWO() {
        return this.zzchb.zzWO();
    }

    @Override // com.google.android.gms.internal.zzbql
    public void zzWR() {
        this.zzchb.zzWR();
    }

    @Override // com.google.android.gms.internal.zzbql
    public void zza(zzbph zzbphVar, zzboy zzboyVar, long j) {
        this.zzchb.zza(zzbphVar, zzboyVar, j);
    }

    @Override // com.google.android.gms.internal.zzbql
    public void zza(zzbph zzbphVar, zzbsc zzbscVar, long j) {
        this.zzchb.zza(zzbphVar, zzbscVar, j);
    }

    @Override // com.google.android.gms.internal.zzbql
    public void zza(zzbrc zzbrcVar, zzbsc zzbscVar) {
        if (zzbrcVar.zzaan()) {
            this.zzchb.zza(zzbrcVar.zzWM(), zzbscVar);
        } else {
            this.zzchb.zzb(zzbrcVar.zzWM(), zzbscVar);
        }
        zzi(zzbrcVar);
        zzZH();
    }

    @Override // com.google.android.gms.internal.zzbql
    public void zza(zzbrc zzbrcVar, Set<zzbrq> set) {
        if ($assertionsDisabled || !zzbrcVar.zzaan()) {
            zzbqo zzl = this.zzchc.zzl(zzbrcVar);
            if (!$assertionsDisabled && (zzl == null || !zzl.zzbqY)) {
                throw new AssertionError("We only expect tracked keys for currently-active queries.");
            }
            this.zzchb.zza(zzl.id, set);
            return;
        }
        throw new AssertionError("We should only track keys for filtered queries.");
    }

    @Override // com.google.android.gms.internal.zzbql
    public void zza(zzbrc zzbrcVar, Set<zzbrq> set, Set<zzbrq> set2) {
        if ($assertionsDisabled || !zzbrcVar.zzaan()) {
            zzbqo zzl = this.zzchc.zzl(zzbrcVar);
            if (!$assertionsDisabled && (zzl == null || !zzl.zzbqY)) {
                throw new AssertionError("We only expect tracked keys for currently-active queries.");
            }
            this.zzchb.zza(zzl.id, set, set2);
            return;
        }
        throw new AssertionError("We should only track keys for filtered queries.");
    }

    @Override // com.google.android.gms.internal.zzbql
    public void zzaD(long j) {
        this.zzchb.zzaD(j);
    }

    @Override // com.google.android.gms.internal.zzbql
    public void zzc(zzbph zzbphVar, zzboy zzboyVar) {
        Iterator<Map.Entry<zzbph, zzbsc>> it = zzboyVar.iterator();
        while (it.hasNext()) {
            Map.Entry<zzbph, zzbsc> next = it.next();
            zzk(zzbphVar.zzh(next.getKey()), next.getValue());
        }
    }

    @Override // com.google.android.gms.internal.zzbql
    public void zzd(zzbph zzbphVar, zzboy zzboyVar) {
        this.zzchb.zza(zzbphVar, zzboyVar);
        zzZH();
    }

    @Override // com.google.android.gms.internal.zzbql
    public zzbqu zzf(zzbrc zzbrcVar) {
        Set<zzbrq> zzB;
        boolean z;
        if (this.zzchc.zzo(zzbrcVar)) {
            zzbqo zzl = this.zzchc.zzl(zzbrcVar);
            zzB = (zzbrcVar.zzaan() || zzl == null || !zzl.zzcho) ? null : this.zzchb.zzaG(zzl.id);
            z = true;
        } else {
            zzB = this.zzchc.zzB(zzbrcVar.zzWM());
            z = false;
        }
        zzbsc zza = this.zzchb.zza(zzbrcVar.zzWM());
        if (zzB != null) {
            zzbrv zzaaZ = zzbrv.zzaaZ();
            for (zzbrq zzbrqVar : zzB) {
                zzaaZ = zzaaZ.zze(zzbrqVar, zza.zzm(zzbrqVar));
            }
            return new zzbqu(zzbrx.zza(zzaaZ, zzbrcVar.zzaaj()), z, true);
        }
        return new zzbqu(zzbrx.zza(zza, zzbrcVar.zzaaj()), true, false);
    }

    @Override // com.google.android.gms.internal.zzbql
    public <T> T zzf(Callable<T> callable) {
        this.zzchb.beginTransaction();
        try {
            T call = callable.call();
            this.zzchb.setTransactionSuccessful();
            return call;
        } finally {
        }
    }

    @Override // com.google.android.gms.internal.zzbql
    public void zzg(zzbrc zzbrcVar) {
        this.zzchc.zzg(zzbrcVar);
    }

    @Override // com.google.android.gms.internal.zzbql
    public void zzh(zzbrc zzbrcVar) {
        this.zzchc.zzh(zzbrcVar);
    }

    @Override // com.google.android.gms.internal.zzbql
    public void zzi(zzbrc zzbrcVar) {
        if (zzbrcVar.zzaan()) {
            this.zzchc.zzA(zzbrcVar.zzWM());
        } else {
            this.zzchc.zzn(zzbrcVar);
        }
    }

    @Override // com.google.android.gms.internal.zzbql
    public void zzk(zzbph zzbphVar, zzbsc zzbscVar) {
        if (!this.zzchc.zzD(zzbphVar)) {
            this.zzchb.zza(zzbphVar, zzbscVar);
            this.zzchc.zzC(zzbphVar);
        }
    }
}
