package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbqq;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class zzbqp {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final zzbqr<Map<zzbrb, zzbqo>> zzchp;
    private static final zzbqr<Map<zzbrb, zzbqo>> zzchq;
    private static final zzbqr<zzbqo> zzchr;
    private static final zzbqr<zzbqo> zzchs;
    private final zzbrn zzcaF;
    private final zzbqm zzchb;
    private zzbqq<Map<zzbrb, zzbqo>> zzcht = new zzbqq<>(null);
    private final zzbsw zzchu;
    private long zzchv;

    static {
        $assertionsDisabled = !zzbqp.class.desiredAssertionStatus();
        zzchp = new zzbqr<Map<zzbrb, zzbqo>>() { // from class: com.google.android.gms.internal.zzbqp.1
            @Override // com.google.android.gms.internal.zzbqr
            /* renamed from: zzaD */
            public boolean zzas(Map<zzbrb, zzbqo> map) {
                zzbqo zzbqoVar = map.get(zzbrb.zzcie);
                return zzbqoVar != null && zzbqoVar.zzcho;
            }
        };
        zzchq = new zzbqr<Map<zzbrb, zzbqo>>() { // from class: com.google.android.gms.internal.zzbqp.2
            @Override // com.google.android.gms.internal.zzbqr
            /* renamed from: zzaD */
            public boolean zzas(Map<zzbrb, zzbqo> map) {
                zzbqo zzbqoVar = map.get(zzbrb.zzcie);
                return zzbqoVar != null && zzbqoVar.zzbqY;
            }
        };
        zzchr = new zzbqr<zzbqo>() { // from class: com.google.android.gms.internal.zzbqp.3
            @Override // com.google.android.gms.internal.zzbqr
            /* renamed from: zzc */
            public boolean zzas(zzbqo zzbqoVar) {
                return !zzbqoVar.zzbqY;
            }
        };
        zzchs = new zzbqr<zzbqo>() { // from class: com.google.android.gms.internal.zzbqp.4
            @Override // com.google.android.gms.internal.zzbqr
            /* renamed from: zzc */
            public boolean zzas(zzbqo zzbqoVar) {
                return !zzbqp.zzchr.zzas(zzbqoVar);
            }
        };
    }

    public zzbqp(zzbqm zzbqmVar, zzbrn zzbrnVar, zzbsw zzbswVar) {
        this.zzchv = 0L;
        this.zzchb = zzbqmVar;
        this.zzcaF = zzbrnVar;
        this.zzchu = zzbswVar;
        zzZK();
        for (zzbqo zzbqoVar : this.zzchb.zzWQ()) {
            this.zzchv = Math.max(zzbqoVar.id + 1, this.zzchv);
            zzb(zzbqoVar);
        }
    }

    private boolean zzE(zzbph zzbphVar) {
        return this.zzcht.zza(zzbphVar, zzchp) != null;
    }

    private Set<Long> zzF(zzbph zzbphVar) {
        HashSet hashSet = new HashSet();
        Map<zzbrb, zzbqo> zzK = this.zzcht.zzK(zzbphVar);
        if (zzK != null) {
            for (zzbqo zzbqoVar : zzK.values()) {
                if (!zzbqoVar.zzchm.zzaan()) {
                    hashSet.add(Long.valueOf(zzbqoVar.id));
                }
            }
        }
        return hashSet;
    }

    private void zzZK() {
        try {
            this.zzchb.beginTransaction();
            this.zzchb.zzaF(this.zzchu.zzabI());
            this.zzchb.setTransactionSuccessful();
        } finally {
            this.zzchb.endTransaction();
        }
    }

    private static long zza(zzbqh zzbqhVar, long j) {
        return j - Math.min((long) Math.floor((1.0f - zzbqhVar.zzZF()) * ((float) j)), zzbqhVar.zzZG());
    }

    private List<zzbqo> zza(zzbqr<zzbqo> zzbqrVar) {
        ArrayList arrayList = new ArrayList();
        Iterator<Map.Entry<zzbph, Map<zzbrb, zzbqo>>> it = this.zzcht.iterator();
        while (it.hasNext()) {
            for (zzbqo zzbqoVar : it.next().getValue().values()) {
                if (zzbqrVar.zzas(zzbqoVar)) {
                    arrayList.add(zzbqoVar);
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(zzbqo zzbqoVar) {
        zzb(zzbqoVar);
        this.zzchb.zza(zzbqoVar);
    }

    private void zzb(zzbqo zzbqoVar) {
        HashMap hashMap;
        zzj(zzbqoVar.zzchm);
        Map<zzbrb, zzbqo> zzK = this.zzcht.zzK(zzbqoVar.zzchm.zzWM());
        if (zzK == null) {
            HashMap hashMap2 = new HashMap();
            this.zzcht = this.zzcht.zzb(zzbqoVar.zzchm.zzWM(), (zzbph) hashMap2);
            hashMap = hashMap2;
        } else {
            hashMap = zzK;
        }
        zzbqo zzbqoVar2 = hashMap.get(zzbqoVar.zzchm.zzaaq());
        zzbte.zzbb(zzbqoVar2 == null || zzbqoVar2.id == zzbqoVar.id);
        hashMap.put(zzbqoVar.zzchm.zzaaq(), zzbqoVar);
    }

    private void zzb(zzbrc zzbrcVar, boolean z) {
        zzbqo zzbqoVar;
        zzbrc zzk = zzk(zzbrcVar);
        zzbqo zzl = zzl(zzk);
        long zzabI = this.zzchu.zzabI();
        if (zzl != null) {
            zzbqoVar = zzl.zzaR(zzabI).zzbg(z);
        } else if (!$assertionsDisabled && !z) {
            throw new AssertionError("If we're setting the query to inactive, we should already be tracking it!");
        } else {
            long j = this.zzchv;
            this.zzchv = 1 + j;
            zzbqoVar = new zzbqo(j, zzk, zzabI, false, z);
        }
        zza(zzbqoVar);
    }

    private static void zzj(zzbrc zzbrcVar) {
        zzbte.zzb(!zzbrcVar.zzaan() || zzbrcVar.isDefault(), "Can't have tracked non-default query that loads all data");
    }

    private static zzbrc zzk(zzbrc zzbrcVar) {
        return zzbrcVar.zzaan() ? zzbrc.zzN(zzbrcVar.zzWM()) : zzbrcVar;
    }

    public void zzA(zzbph zzbphVar) {
        this.zzcht.zzI(zzbphVar).zza(new zzbqq.zza<Map<zzbrb, zzbqo>, Void>() { // from class: com.google.android.gms.internal.zzbqp.5
            @Override // com.google.android.gms.internal.zzbqq.zza
            public Void zza(zzbph zzbphVar2, Map<zzbrb, zzbqo> map, Void r6) {
                for (Map.Entry<zzbrb, zzbqo> entry : map.entrySet()) {
                    zzbqo value = entry.getValue();
                    if (!value.zzcho) {
                        zzbqp.this.zza(value.zzZJ());
                    }
                }
                return null;
            }
        });
    }

    public Set<zzbrq> zzB(zzbph zzbphVar) {
        if ($assertionsDisabled || !zzo(zzbrc.zzN(zzbphVar))) {
            HashSet hashSet = new HashSet();
            Set<Long> zzF = zzF(zzbphVar);
            if (!zzF.isEmpty()) {
                hashSet.addAll(this.zzchb.zzg(zzF));
            }
            Iterator<Map.Entry<zzbrq, zzbqq<Map<zzbrb, zzbqo>>>> it = this.zzcht.zzI(zzbphVar).zzZO().iterator();
            while (it.hasNext()) {
                Map.Entry<zzbrq, zzbqq<Map<zzbrb, zzbqo>>> next = it.next();
                zzbrq key = next.getKey();
                zzbqq<Map<zzbrb, zzbqo>> value = next.getValue();
                if (value.getValue() != null && zzchp.zzas(value.getValue())) {
                    hashSet.add(key);
                }
            }
            return hashSet;
        }
        throw new AssertionError("Path is fully complete.");
    }

    public void zzC(zzbph zzbphVar) {
        zzbqo zzZJ;
        if (!zzE(zzbphVar)) {
            zzbrc zzN = zzbrc.zzN(zzbphVar);
            zzbqo zzl = zzl(zzN);
            if (zzl == null) {
                long j = this.zzchv;
                this.zzchv = 1 + j;
                zzZJ = new zzbqo(j, zzN, this.zzchu.zzabI(), true, false);
            } else if (!$assertionsDisabled && zzl.zzcho) {
                throw new AssertionError("This should have been handled above!");
            } else {
                zzZJ = zzl.zzZJ();
            }
            zza(zzZJ);
        }
    }

    public boolean zzD(zzbph zzbphVar) {
        return this.zzcht.zzb(zzbphVar, zzchq) != null;
    }

    public long zzZL() {
        return zza(zzchr).size();
    }

    public zzbqn zza(zzbqh zzbqhVar) {
        List<zzbqo> zza = zza(zzchr);
        long zza2 = zza(zzbqhVar, zza.size());
        zzbqn zzbqnVar = new zzbqn();
        if (this.zzcaF.zzaaD()) {
            this.zzcaF.zzi(new StringBuilder(80).append("Pruning old queries.  Prunable: ").append(zza.size()).append(" Count to prune: ").append(zza2).toString(), new Object[0]);
        }
        Collections.sort(zza, new Comparator<zzbqo>(this) { // from class: com.google.android.gms.internal.zzbqp.6
            @Override // java.util.Comparator
            /* renamed from: zza */
            public int compare(zzbqo zzbqoVar, zzbqo zzbqoVar2) {
                return zzbte.zzl(zzbqoVar.zzchn, zzbqoVar2.zzchn);
            }
        });
        for (int i = 0; i < zza2; i++) {
            zzbqo zzbqoVar = zza.get(i);
            zzbqnVar = zzbqnVar.zzy(zzbqoVar.zzchm.zzWM());
            zzm(zzbqoVar.zzchm);
        }
        int i2 = (int) zza2;
        zzbqn zzbqnVar2 = zzbqnVar;
        while (true) {
            int i3 = i2;
            if (i3 >= zza.size()) {
                break;
            }
            zzbqnVar2 = zzbqnVar2.zzz(zza.get(i3).zzchm.zzWM());
            i2 = i3 + 1;
        }
        List<zzbqo> zza3 = zza(zzchs);
        if (this.zzcaF.zzaaD()) {
            this.zzcaF.zzi(new StringBuilder(31).append("Unprunable queries: ").append(zza3.size()).toString(), new Object[0]);
        }
        for (zzbqo zzbqoVar2 : zza3) {
            zzbqnVar2 = zzbqnVar2.zzz(zzbqoVar2.zzchm.zzWM());
        }
        return zzbqnVar2;
    }

    public void zzg(zzbrc zzbrcVar) {
        zzb(zzbrcVar, true);
    }

    public void zzh(zzbrc zzbrcVar) {
        zzb(zzbrcVar, false);
    }

    public zzbqo zzl(zzbrc zzbrcVar) {
        zzbrc zzk = zzk(zzbrcVar);
        Map<zzbrb, zzbqo> zzK = this.zzcht.zzK(zzk.zzWM());
        if (zzK != null) {
            return zzK.get(zzk.zzaaq());
        }
        return null;
    }

    public void zzm(zzbrc zzbrcVar) {
        zzbrc zzk = zzk(zzbrcVar);
        zzbqo zzl = zzl(zzk);
        if ($assertionsDisabled || zzl != null) {
            this.zzchb.zzaE(zzl.id);
            Map<zzbrb, zzbqo> zzK = this.zzcht.zzK(zzk.zzWM());
            zzK.remove(zzk.zzaaq());
            if (!zzK.isEmpty()) {
                return;
            }
            this.zzcht = this.zzcht.zzJ(zzk.zzWM());
            return;
        }
        throw new AssertionError("Query must exist to be removed.");
    }

    public void zzn(zzbrc zzbrcVar) {
        zzbqo zzl = zzl(zzk(zzbrcVar));
        if (zzl == null || zzl.zzcho) {
            return;
        }
        zza(zzl.zzZJ());
    }

    public boolean zzo(zzbrc zzbrcVar) {
        if (zzE(zzbrcVar.zzWM())) {
            return true;
        }
        if (zzbrcVar.zzaan()) {
            return false;
        }
        Map<zzbrb, zzbqo> zzK = this.zzcht.zzK(zzbrcVar.zzWM());
        return zzK != null && zzK.containsKey(zzbrcVar.zzaaq()) && zzK.get(zzbrcVar.zzaaq()).zzcho;
    }
}
