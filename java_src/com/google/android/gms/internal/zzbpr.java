package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbod;
import com.google.android.gms.internal.zzbqq;
import com.google.android.gms.internal.zzbqy;
import com.google.firebase.database.c;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Callable;
/* loaded from: classes2.dex */
public class zzbpr {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final zzbrn zzcaF;
    private final zzbql zzcfJ;
    private final zzd zzcfP;
    private long zzcfQ = 1;
    private zzbqq<zzbpq> zzcfK = zzbqq.zzZN();
    private final zzbpy zzcfL = new zzbpy();
    private final Map<zzbps, zzbrc> zzcfM = new HashMap();
    private final Map<zzbrc, zzbps> zzcfN = new HashMap();
    private final Set<zzbrc> zzcfO = new HashSet();

    /* loaded from: classes2.dex */
    public interface zza {
        List<? extends zzbqy> zzb(c cVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zzb extends zzbpc {
        private zzbrc zzcdH;

        public zzb(zzbrc zzbrcVar) {
            this.zzcdH = zzbrcVar;
        }

        public boolean equals(Object obj) {
            return (obj instanceof zzb) && ((zzb) obj).zzcdH.equals(this.zzcdH);
        }

        public int hashCode() {
            return this.zzcdH.hashCode();
        }

        @Override // com.google.android.gms.internal.zzbpc
        public zzbrc zzYn() {
            return this.zzcdH;
        }

        @Override // com.google.android.gms.internal.zzbpc
        public zzbpc zza(zzbrc zzbrcVar) {
            return new zzb(zzbrcVar);
        }

        @Override // com.google.android.gms.internal.zzbpc
        public zzbqx zza(zzbqw zzbqwVar, zzbrc zzbrcVar) {
            return null;
        }

        @Override // com.google.android.gms.internal.zzbpc
        public void zza(zzbqx zzbqxVar) {
        }

        @Override // com.google.android.gms.internal.zzbpc
        public void zza(c cVar) {
        }

        @Override // com.google.android.gms.internal.zzbpc
        public boolean zza(zzbqy.zza zzaVar) {
            return false;
        }

        @Override // com.google.android.gms.internal.zzbpc
        public boolean zzc(zzbpc zzbpcVar) {
            return zzbpcVar instanceof zzb;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zzc implements zzboo, zza {
        private final zzbrd zzcgi;
        private final zzbps zzcgj;

        public zzc(zzbrd zzbrdVar) {
            this.zzcgi = zzbrdVar;
            this.zzcgj = zzbpr.this.zze(zzbrdVar.zzaar());
        }

        @Override // com.google.android.gms.internal.zzboo
        public String zzXw() {
            return this.zzcgi.zzaas().zzaaM();
        }

        @Override // com.google.android.gms.internal.zzboo
        public boolean zzXx() {
            return zzbsz.zzt(this.zzcgi.zzaas()) > 1024;
        }

        @Override // com.google.android.gms.internal.zzboo
        public zzboi zzXy() {
            zzbrs zzi = zzbrs.zzi(this.zzcgi.zzaas());
            List<zzbph> zzXp = zzi.zzXp();
            ArrayList arrayList = new ArrayList(zzXp.size());
            for (zzbph zzbphVar : zzXp) {
                arrayList.add(zzbphVar.zzYR());
            }
            return new zzboi(arrayList, zzi.zzXq());
        }

        @Override // com.google.android.gms.internal.zzbpr.zza
        public List<? extends zzbqy> zzb(c cVar) {
            if (cVar == null) {
                return this.zzcgj != null ? zzbpr.this.zza(this.zzcgj) : zzbpr.this.zzt(this.zzcgi.zzaar().zzWM());
            }
            zzbrn zzbrnVar = zzbpr.this.zzcaF;
            String valueOf = String.valueOf(this.zzcgi.zzaar().zzWM());
            String valueOf2 = String.valueOf(cVar.toString());
            zzbrnVar.warn(new StringBuilder(String.valueOf(valueOf).length() + 19 + String.valueOf(valueOf2).length()).append("Listen at ").append(valueOf).append(" failed: ").append(valueOf2).toString());
            return zzbpr.this.zza(this.zzcgi.zzaar(), cVar);
        }
    }

    /* loaded from: classes2.dex */
    public interface zzd {
        void zza(zzbrc zzbrcVar, zzbps zzbpsVar);

        void zza(zzbrc zzbrcVar, zzbps zzbpsVar, zzboo zzbooVar, zza zzaVar);
    }

    static {
        $assertionsDisabled = !zzbpr.class.desiredAssertionStatus();
    }

    public zzbpr(zzbpa zzbpaVar, zzbql zzbqlVar, zzd zzdVar) {
        this.zzcfP = zzdVar;
        this.zzcfJ = zzbqlVar;
        this.zzcaF = zzbpaVar.zziV("SyncTree");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public zzbps zzZk() {
        long j = this.zzcfQ;
        this.zzcfQ = 1 + j;
        return new zzbps(j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<zzbqy> zza(zzbqe zzbqeVar) {
        return zza(zzbqeVar, this.zzcfK, (zzbsc) null, this.zzcfL.zzu(zzbph.zzYP()));
    }

    private List<zzbqy> zza(zzbqe zzbqeVar, zzbqq<zzbpq> zzbqqVar, zzbsc zzbscVar, zzbpz zzbpzVar) {
        if (zzbqeVar.zzWM().isEmpty()) {
            return zzb(zzbqeVar, zzbqqVar, zzbscVar, zzbpzVar);
        }
        zzbpq value = zzbqqVar.getValue();
        if (zzbscVar == null && value != null) {
            zzbscVar = value.zzs(zzbph.zzYP());
        }
        ArrayList arrayList = new ArrayList();
        zzbrq zzYS = zzbqeVar.zzWM().zzYS();
        zzbqe zzc2 = zzbqeVar.zzc(zzYS);
        zzbqq<zzbpq> zzbqqVar2 = zzbqqVar.zzZO().get(zzYS);
        if (zzbqqVar2 != null && zzc2 != null) {
            arrayList.addAll(zza(zzc2, zzbqqVar2, zzbscVar != null ? zzbscVar.zzm(zzYS) : null, zzbpzVar.zzb(zzYS)));
        }
        if (value != null) {
            arrayList.addAll(value.zza(zzbqeVar, zzbpzVar, zzbscVar));
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<zzbrd> zza(zzbqq<zzbpq> zzbqqVar) {
        ArrayList arrayList = new ArrayList();
        zza(zzbqqVar, arrayList);
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<? extends zzbqy> zza(zzbrc zzbrcVar, zzbqe zzbqeVar) {
        zzbph zzWM = zzbrcVar.zzWM();
        zzbpq zzK = this.zzcfK.zzK(zzWM);
        if ($assertionsDisabled || zzK != null) {
            return zzK.zza(zzbqeVar, this.zzcfL.zzu(zzWM), (zzbsc) null);
        }
        throw new AssertionError("Missing sync point for query tag that we're tracking");
    }

    private void zza(zzbqq<zzbpq> zzbqqVar, List<zzbrd> list) {
        zzbpq value = zzbqqVar.getValue();
        if (value != null && value.zzZh()) {
            list.add(value.zzZi());
            return;
        }
        if (value != null) {
            list.addAll(value.zzZg());
        }
        Iterator<Map.Entry<zzbrq, zzbqq<zzbpq>>> it = zzbqqVar.zzZO().iterator();
        while (it.hasNext()) {
            zza(it.next().getValue(), list);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(zzbrc zzbrcVar, zzbrd zzbrdVar) {
        zzbph zzWM = zzbrcVar.zzWM();
        zzbps zze = zze(zzbrcVar);
        zzc zzcVar = new zzc(zzbrdVar);
        this.zzcfP.zza(zzd(zzbrcVar), zze, zzcVar, zzcVar);
        zzbqq<zzbpq> zzI = this.zzcfK.zzI(zzWM);
        if (zze == null) {
            zzI.zza(new zzbqq.zza<zzbpq, Void>() { // from class: com.google.android.gms.internal.zzbpr.5
                @Override // com.google.android.gms.internal.zzbqq.zza
                public Void zza(zzbph zzbphVar, zzbpq zzbpqVar, Void r8) {
                    if (!zzbphVar.isEmpty() && zzbpqVar.zzZh()) {
                        zzbrc zzaar = zzbpqVar.zzZi().zzaar();
                        zzbpr.this.zzcfP.zza(zzbpr.this.zzd(zzaar), zzbpr.this.zze(zzaar));
                        return null;
                    }
                    for (zzbrd zzbrdVar2 : zzbpqVar.zzZg()) {
                        zzbrc zzaar2 = zzbrdVar2.zzaar();
                        zzbpr.this.zzcfP.zza(zzbpr.this.zzd(zzaar2), zzbpr.this.zze(zzaar2));
                    }
                    return null;
                }
            });
        } else if (!$assertionsDisabled && zzI.getValue().zzZh()) {
            throw new AssertionError("If we're adding a query, it shouldn't be shadowed");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzaa(List<zzbrc> list) {
        for (zzbrc zzbrcVar : list) {
            if (!zzbrcVar.zzaan()) {
                zzbps zze = zze(zzbrcVar);
                if (!$assertionsDisabled && zze == null) {
                    throw new AssertionError();
                }
                this.zzcfN.remove(zzbrcVar);
                this.zzcfM.remove(zze);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public zzbrc zzb(zzbps zzbpsVar) {
        return this.zzcfM.get(zzbpsVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<zzbqy> zzb(final zzbqe zzbqeVar, zzbqq<zzbpq> zzbqqVar, zzbsc zzbscVar, final zzbpz zzbpzVar) {
        zzbpq value = zzbqqVar.getValue();
        final zzbsc zzs = (zzbscVar != null || value == null) ? zzbscVar : value.zzs(zzbph.zzYP());
        final ArrayList arrayList = new ArrayList();
        zzbqqVar.zzZO().zza(new zzbod.zzb<zzbrq, zzbqq<zzbpq>>() { // from class: com.google.android.gms.internal.zzbpr.6
            @Override // com.google.android.gms.internal.zzbod.zzb
            /* renamed from: zza */
            public void zzj(zzbrq zzbrqVar, zzbqq<zzbpq> zzbqqVar2) {
                zzbsc zzbscVar2 = null;
                if (zzs != null) {
                    zzbscVar2 = zzs.zzm(zzbrqVar);
                }
                zzbpz zzb2 = zzbpzVar.zzb(zzbrqVar);
                zzbqe zzc2 = zzbqeVar.zzc(zzbrqVar);
                if (zzc2 != null) {
                    arrayList.addAll(zzbpr.this.zzb(zzc2, zzbqqVar2, zzbscVar2, zzb2));
                }
            }
        });
        if (value != null) {
            arrayList.addAll(value.zza(zzbqeVar, zzbpzVar, zzs));
        }
        return arrayList;
    }

    private List<zzbqy> zzb(final zzbrc zzbrcVar, final zzbpc zzbpcVar, final c cVar) {
        return (List) this.zzcfJ.zzf(new Callable<List<zzbqy>>() { // from class: com.google.android.gms.internal.zzbpr.4
            static final /* synthetic */ boolean $assertionsDisabled;

            static {
                $assertionsDisabled = !zzbpr.class.desiredAssertionStatus();
            }

            @Override // java.util.concurrent.Callable
            /* renamed from: zzMN */
            public List<zzbqy> call() {
                boolean z;
                zzbph zzWM = zzbrcVar.zzWM();
                zzbpq zzbpqVar = (zzbpq) zzbpr.this.zzcfK.zzK(zzWM);
                List<zzbqy> arrayList = new ArrayList<>();
                if (zzbpqVar != null && (zzbrcVar.isDefault() || zzbpqVar.zzc(zzbrcVar))) {
                    zzbtb<List<zzbrc>, List<zzbqy>> zza2 = zzbpqVar.zza(zzbrcVar, zzbpcVar, cVar);
                    if (zzbpqVar.isEmpty()) {
                        zzbpr.this.zzcfK = zzbpr.this.zzcfK.zzJ(zzWM);
                    }
                    List<zzbrc> first = zza2.getFirst();
                    arrayList = zza2.zzabJ();
                    boolean z2 = false;
                    for (zzbrc zzbrcVar2 : first) {
                        zzbpr.this.zzcfJ.zzh(zzbrcVar);
                        z2 = z2 || zzbrcVar2.zzaan();
                    }
                    zzbqq zzbqqVar = zzbpr.this.zzcfK;
                    boolean z3 = zzbqqVar.getValue() != null && ((zzbpq) zzbqqVar.getValue()).zzZh();
                    Iterator<zzbrq> it = zzWM.iterator();
                    zzbqq zzbqqVar2 = zzbqqVar;
                    while (true) {
                        z = z3;
                        if (!it.hasNext()) {
                            break;
                        }
                        zzbqqVar2 = zzbqqVar2.zze(it.next());
                        z3 = z || (zzbqqVar2.getValue() != null && ((zzbpq) zzbqqVar2.getValue()).zzZh());
                        if (z3) {
                            z = z3;
                            break;
                        } else if (zzbqqVar2.isEmpty()) {
                            z = z3;
                            break;
                        }
                    }
                    if (z2 && !z) {
                        zzbqq zzI = zzbpr.this.zzcfK.zzI(zzWM);
                        if (!zzI.isEmpty()) {
                            for (zzbrd zzbrdVar : zzbpr.this.zza(zzI)) {
                                zzc zzcVar = new zzc(zzbrdVar);
                                zzbpr.this.zzcfP.zza(zzbpr.this.zzd(zzbrdVar.zzaar()), zzcVar.zzcgj, zzcVar, zzcVar);
                            }
                        }
                    }
                    if (!z && !first.isEmpty() && cVar == null) {
                        if (z2) {
                            zzbpr.this.zzcfP.zza(zzbpr.this.zzd(zzbrcVar), null);
                        } else {
                            for (zzbrc zzbrcVar3 : first) {
                                zzbps zze = zzbpr.this.zze(zzbrcVar3);
                                if (!$assertionsDisabled && zze == null) {
                                    throw new AssertionError();
                                }
                                zzbpr.this.zzcfP.zza(zzbpr.this.zzd(zzbrcVar3), zze);
                            }
                        }
                    }
                    zzbpr.this.zzaa(first);
                }
                return arrayList;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public zzbrc zzd(zzbrc zzbrcVar) {
        return (!zzbrcVar.zzaan() || zzbrcVar.isDefault()) ? zzbrcVar : zzbrc.zzN(zzbrcVar.zzWM());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public zzbps zze(zzbrc zzbrcVar) {
        return this.zzcfN.get(zzbrcVar);
    }

    public boolean isEmpty() {
        return this.zzcfK.isEmpty();
    }

    public List<? extends zzbqy> zzZj() {
        return (List) this.zzcfJ.zzf(new Callable<List<? extends zzbqy>>() { // from class: com.google.android.gms.internal.zzbpr.9
            @Override // java.util.concurrent.Callable
            /* renamed from: zzMN */
            public List<? extends zzbqy> call() throws Exception {
                zzbpr.this.zzcfJ.zzWR();
                if (zzbpr.this.zzcfL.zzZs().isEmpty()) {
                    return Collections.emptyList();
                }
                return zzbpr.this.zza(new zzbqb(zzbph.zzYP(), new zzbqq(true), true));
            }
        });
    }

    public List<? extends zzbqy> zza(final long j, final boolean z, final boolean z2, final zzbsw zzbswVar) {
        return (List) this.zzcfJ.zzf(new Callable<List<? extends zzbqy>>() { // from class: com.google.android.gms.internal.zzbpr.8
            @Override // java.util.concurrent.Callable
            /* renamed from: zzMN */
            public List<? extends zzbqy> call() {
                zzbqq zzbqqVar;
                if (z2) {
                    zzbpr.this.zzcfJ.zzaD(j);
                }
                zzbpv zzaO = zzbpr.this.zzcfL.zzaO(j);
                boolean zzaP = zzbpr.this.zzcfL.zzaP(j);
                if (zzaO.isVisible() && !z) {
                    Map<String, Object> zza2 = zzbpn.zza(zzbswVar);
                    if (zzaO.zzZp()) {
                        zzbpr.this.zzcfJ.zzk(zzaO.zzWM(), zzbpn.zza(zzaO.zzZn(), zza2));
                    } else {
                        zzbpr.this.zzcfJ.zzc(zzaO.zzWM(), zzbpn.zza(zzaO.zzZo(), zza2));
                    }
                }
                if (!zzaP) {
                    return Collections.emptyList();
                }
                zzbqq zzZN = zzbqq.zzZN();
                if (!zzaO.zzZp()) {
                    Iterator<Map.Entry<zzbph, zzbsc>> it = zzaO.zzZo().iterator();
                    while (true) {
                        zzbqqVar = zzZN;
                        if (!it.hasNext()) {
                            break;
                        }
                        zzZN = zzbqqVar.zzb(it.next().getKey(), (zzbph) true);
                    }
                } else {
                    zzbqqVar = zzZN.zzb(zzbph.zzYP(), (zzbph) true);
                }
                return zzbpr.this.zza(new zzbqb(zzaO.zzWM(), zzbqqVar, z));
            }
        });
    }

    public List<? extends zzbqy> zza(final zzbph zzbphVar, final zzboy zzboyVar, final zzboy zzboyVar2, final long j, final boolean z) {
        return (List) this.zzcfJ.zzf(new Callable<List<? extends zzbqy>>() { // from class: com.google.android.gms.internal.zzbpr.7
            @Override // java.util.concurrent.Callable
            /* renamed from: zzMN */
            public List<? extends zzbqy> call() throws Exception {
                if (z) {
                    zzbpr.this.zzcfJ.zza(zzbphVar, zzboyVar, j);
                }
                zzbpr.this.zzcfL.zza(zzbphVar, zzboyVar2, Long.valueOf(j));
                return zzbpr.this.zza(new zzbqd(zzbqf.zzcgR, zzbphVar, zzboyVar2));
            }
        });
    }

    public List<? extends zzbqy> zza(final zzbph zzbphVar, final zzbsc zzbscVar, final zzbps zzbpsVar) {
        return (List) this.zzcfJ.zzf(new Callable<List<? extends zzbqy>>() { // from class: com.google.android.gms.internal.zzbpr.14
            @Override // java.util.concurrent.Callable
            /* renamed from: zzMN */
            public List<? extends zzbqy> call() {
                zzbrc zzb2 = zzbpr.this.zzb(zzbpsVar);
                if (zzb2 != null) {
                    zzbph zza2 = zzbph.zza(zzb2.zzWM(), zzbphVar);
                    zzbpr.this.zzcfJ.zza(zza2.isEmpty() ? zzb2 : zzbrc.zzN(zzbphVar), zzbscVar);
                    return zzbpr.this.zza(zzb2, new zzbqg(zzbqf.zzc(zzb2.zzaaq()), zza2, zzbscVar));
                }
                return Collections.emptyList();
            }
        });
    }

    public List<? extends zzbqy> zza(final zzbph zzbphVar, final zzbsc zzbscVar, final zzbsc zzbscVar2, final long j, final boolean z, final boolean z2) {
        zzbte.zzb(z || !z2, "We shouldn't be persisting non-visible writes.");
        return (List) this.zzcfJ.zzf(new Callable<List<? extends zzbqy>>() { // from class: com.google.android.gms.internal.zzbpr.1
            @Override // java.util.concurrent.Callable
            /* renamed from: zzMN */
            public List<? extends zzbqy> call() {
                if (z2) {
                    zzbpr.this.zzcfJ.zza(zzbphVar, zzbscVar, j);
                }
                zzbpr.this.zzcfL.zza(zzbphVar, zzbscVar2, Long.valueOf(j), z);
                return !z ? Collections.emptyList() : zzbpr.this.zza(new zzbqg(zzbqf.zzcgR, zzbphVar, zzbscVar2));
            }
        });
    }

    public List<? extends zzbqy> zza(zzbph zzbphVar, List<zzbsh> list, zzbps zzbpsVar) {
        zzbrc zzb2 = zzb(zzbpsVar);
        if (zzb2 != null) {
            if (!$assertionsDisabled && !zzbphVar.equals(zzb2.zzWM())) {
                throw new AssertionError();
            }
            zzbpq zzK = this.zzcfK.zzK(zzb2.zzWM());
            if (!$assertionsDisabled && zzK == null) {
                throw new AssertionError("Missing sync point for query tag that we're tracking");
            }
            zzbrd zzb3 = zzK.zzb(zzb2);
            if (!$assertionsDisabled && zzb3 == null) {
                throw new AssertionError("Missing view for query tag that we're tracking");
            }
            zzbsc zzaas = zzb3.zzaas();
            Iterator<zzbsh> it = list.iterator();
            while (true) {
                zzbsc zzbscVar = zzaas;
                if (!it.hasNext()) {
                    return zza(zzbphVar, zzbscVar, zzbpsVar);
                }
                zzaas = it.next().zzr(zzbscVar);
            }
        } else {
            return Collections.emptyList();
        }
    }

    public List<? extends zzbqy> zza(final zzbph zzbphVar, final Map<zzbph, zzbsc> map) {
        return (List) this.zzcfJ.zzf(new Callable<List<? extends zzbqy>>() { // from class: com.google.android.gms.internal.zzbpr.11
            @Override // java.util.concurrent.Callable
            /* renamed from: zzMN */
            public List<? extends zzbqy> call() {
                zzboy zzaC = zzboy.zzaC(map);
                zzbpr.this.zzcfJ.zzd(zzbphVar, zzaC);
                return zzbpr.this.zza(new zzbqd(zzbqf.zzcgS, zzbphVar, zzaC));
            }
        });
    }

    public List<? extends zzbqy> zza(final zzbph zzbphVar, final Map<zzbph, zzbsc> map, final zzbps zzbpsVar) {
        return (List) this.zzcfJ.zzf(new Callable<List<? extends zzbqy>>() { // from class: com.google.android.gms.internal.zzbpr.2
            @Override // java.util.concurrent.Callable
            /* renamed from: zzMN */
            public List<? extends zzbqy> call() {
                zzbrc zzb2 = zzbpr.this.zzb(zzbpsVar);
                if (zzb2 != null) {
                    zzbph zza2 = zzbph.zza(zzb2.zzWM(), zzbphVar);
                    zzboy zzaC = zzboy.zzaC(map);
                    zzbpr.this.zzcfJ.zzd(zzbphVar, zzaC);
                    return zzbpr.this.zza(zzb2, new zzbqd(zzbqf.zzc(zzb2.zzaaq()), zza2, zzaC));
                }
                return Collections.emptyList();
            }
        });
    }

    public List<? extends zzbqy> zza(final zzbps zzbpsVar) {
        return (List) this.zzcfJ.zzf(new Callable<List<? extends zzbqy>>() { // from class: com.google.android.gms.internal.zzbpr.13
            @Override // java.util.concurrent.Callable
            /* renamed from: zzMN */
            public List<? extends zzbqy> call() {
                zzbrc zzb2 = zzbpr.this.zzb(zzbpsVar);
                if (zzb2 != null) {
                    zzbpr.this.zzcfJ.zzi(zzb2);
                    return zzbpr.this.zza(zzb2, new zzbqc(zzbqf.zzc(zzb2.zzaaq()), zzbph.zzYP()));
                }
                return Collections.emptyList();
            }
        });
    }

    public List<zzbqy> zza(zzbrc zzbrcVar, c cVar) {
        return zzb(zzbrcVar, null, cVar);
    }

    public void zza(zzbrc zzbrcVar, boolean z) {
        if (z && !this.zzcfO.contains(zzbrcVar)) {
            zzg(new zzb(zzbrcVar));
            this.zzcfO.add(zzbrcVar);
        } else if (z || !this.zzcfO.contains(zzbrcVar)) {
        } else {
            zzh(new zzb(zzbrcVar));
            this.zzcfO.remove(zzbrcVar);
        }
    }

    public List<? extends zzbqy> zzb(zzbph zzbphVar, List<zzbsh> list) {
        zzbrd zzZi;
        zzbpq zzK = this.zzcfK.zzK(zzbphVar);
        if (zzK != null && (zzZi = zzK.zzZi()) != null) {
            zzbsc zzaas = zzZi.zzaas();
            Iterator<zzbsh> it = list.iterator();
            while (true) {
                zzbsc zzbscVar = zzaas;
                if (!it.hasNext()) {
                    return zzi(zzbphVar, zzbscVar);
                }
                zzaas = it.next().zzr(zzbscVar);
            }
        }
        return Collections.emptyList();
    }

    public zzbsc zzc(zzbph zzbphVar, List<Long> list) {
        zzbsc zzs;
        zzbqq<zzbpq> zzbqqVar = this.zzcfK;
        zzbqqVar.getValue();
        zzbsc zzbscVar = null;
        zzbph zzYP = zzbph.zzYP();
        zzbqq<zzbpq> zzbqqVar2 = zzbqqVar;
        zzbph zzbphVar2 = zzbphVar;
        while (true) {
            zzbrq zzYS = zzbphVar2.zzYS();
            zzbph zzYT = zzbphVar2.zzYT();
            zzbph zza2 = zzYP.zza(zzYS);
            zzbph zza3 = zzbph.zza(zza2, zzbphVar);
            zzbqqVar2 = zzYS != null ? zzbqqVar2.zze(zzYS) : zzbqq.zzZN();
            zzbpq value = zzbqqVar2.getValue();
            zzs = value != null ? value.zzs(zza3) : zzbscVar;
            if (zzYT.isEmpty() || zzs != null) {
                break;
            }
            zzbscVar = zzs;
            zzYP = zza2;
            zzbphVar2 = zzYT;
        }
        return this.zzcfL.zza(zzbphVar, zzs, list, true);
    }

    public List<? extends zzbqy> zzg(final zzbpc zzbpcVar) {
        return (List) this.zzcfJ.zzf(new Callable<List<? extends zzbqy>>() { // from class: com.google.android.gms.internal.zzbpr.3
            static final /* synthetic */ boolean $assertionsDisabled;

            static {
                $assertionsDisabled = !zzbpr.class.desiredAssertionStatus();
            }

            @Override // java.util.concurrent.Callable
            /* renamed from: zzMN */
            public List<? extends zzbqy> call() {
                zzbsc zzbscVar;
                boolean z;
                zzbpq zzbpqVar;
                zzbqu zzbquVar;
                zzbsc zzs;
                boolean z2;
                zzbsc zzbscVar2;
                zzbrc zzYn = zzbpcVar.zzYn();
                zzbph zzWM = zzYn.zzWM();
                zzbsc zzbscVar3 = null;
                zzbph zzbphVar = zzWM;
                zzbqq zzbqqVar = zzbpr.this.zzcfK;
                boolean z3 = false;
                while (!zzbqqVar.isEmpty()) {
                    zzbpq zzbpqVar2 = (zzbpq) zzbqqVar.getValue();
                    if (zzbpqVar2 != null) {
                        if (zzbscVar3 == null) {
                            zzbscVar3 = zzbpqVar2.zzs(zzbphVar);
                        }
                        z2 = z3 || zzbpqVar2.zzZh();
                        zzbscVar2 = zzbscVar3;
                    } else {
                        z2 = z3;
                        zzbscVar2 = zzbscVar3;
                    }
                    zzbqqVar = zzbqqVar.zze(zzbphVar.isEmpty() ? zzbrq.zzja("") : zzbphVar.zzYS());
                    zzbphVar = zzbphVar.zzYT();
                    zzbscVar3 = zzbscVar2;
                    z3 = z2;
                }
                zzbpq zzbpqVar3 = (zzbpq) zzbpr.this.zzcfK.zzK(zzWM);
                if (zzbpqVar3 == null) {
                    zzbpq zzbpqVar4 = new zzbpq(zzbpr.this.zzcfJ);
                    zzbpr.this.zzcfK = zzbpr.this.zzcfK.zzb(zzWM, (zzbph) zzbpqVar4);
                    zzbscVar = zzbscVar3;
                    z = z3;
                    zzbpqVar = zzbpqVar4;
                } else {
                    boolean z4 = z3 || zzbpqVar3.zzZh();
                    if (zzbscVar3 == null) {
                        zzbscVar3 = zzbpqVar3.zzs(zzbph.zzYP());
                    }
                    zzbscVar = zzbscVar3;
                    z = z4;
                    zzbpqVar = zzbpqVar3;
                }
                zzbpr.this.zzcfJ.zzg(zzYn);
                if (zzbscVar != null) {
                    zzbquVar = new zzbqu(zzbrx.zza(zzbscVar, zzYn.zzaaj()), true, false);
                } else {
                    zzbqu zzf = zzbpr.this.zzcfJ.zzf(zzYn);
                    if (zzf.zzZQ()) {
                        zzbquVar = zzf;
                    } else {
                        zzbsc zzaaZ = zzbrv.zzaaZ();
                        Iterator it = zzbpr.this.zzcfK.zzI(zzWM).zzZO().iterator();
                        while (it.hasNext()) {
                            Map.Entry entry = (Map.Entry) it.next();
                            zzbpq zzbpqVar5 = (zzbpq) ((zzbqq) entry.getValue()).getValue();
                            zzaaZ = (zzbpqVar5 == null || (zzs = zzbpqVar5.zzs(zzbph.zzYP())) == null) ? zzaaZ : zzaaZ.zze((zzbrq) entry.getKey(), zzs);
                        }
                        for (zzbsb zzbsbVar : zzf.zzWI()) {
                            if (!zzaaZ.zzk(zzbsbVar.zzabj())) {
                                zzaaZ = zzaaZ.zze(zzbsbVar.zzabj(), zzbsbVar.zzWI());
                            }
                        }
                        zzbquVar = new zzbqu(zzbrx.zza(zzaaZ, zzYn.zzaaj()), false, false);
                    }
                }
                boolean zzc2 = zzbpqVar.zzc(zzYn);
                if (!zzc2 && !zzYn.zzaan()) {
                    if (!$assertionsDisabled && zzbpr.this.zzcfN.containsKey(zzYn)) {
                        throw new AssertionError("View does not exist but we have a tag");
                    }
                    zzbps zzZk = zzbpr.this.zzZk();
                    zzbpr.this.zzcfN.put(zzYn, zzZk);
                    zzbpr.this.zzcfM.put(zzZk, zzYn);
                }
                List<zzbqx> zza2 = zzbpqVar.zza(zzbpcVar, zzbpr.this.zzcfL.zzu(zzWM), zzbquVar);
                if (!zzc2 && !z) {
                    zzbpr.this.zza(zzYn, zzbpqVar.zzb(zzYn));
                }
                return zza2;
            }
        });
    }

    public List<zzbqy> zzh(zzbpc zzbpcVar) {
        return zzb(zzbpcVar.zzYn(), zzbpcVar, null);
    }

    public List<? extends zzbqy> zzi(final zzbph zzbphVar, final zzbsc zzbscVar) {
        return (List) this.zzcfJ.zzf(new Callable<List<? extends zzbqy>>() { // from class: com.google.android.gms.internal.zzbpr.10
            @Override // java.util.concurrent.Callable
            /* renamed from: zzMN */
            public List<? extends zzbqy> call() {
                zzbpr.this.zzcfJ.zza(zzbrc.zzN(zzbphVar), zzbscVar);
                return zzbpr.this.zza(new zzbqg(zzbqf.zzcgS, zzbphVar, zzbscVar));
            }
        });
    }

    public List<? extends zzbqy> zzt(final zzbph zzbphVar) {
        return (List) this.zzcfJ.zzf(new Callable<List<? extends zzbqy>>() { // from class: com.google.android.gms.internal.zzbpr.12
            @Override // java.util.concurrent.Callable
            /* renamed from: zzMN */
            public List<? extends zzbqy> call() {
                zzbpr.this.zzcfJ.zzi(zzbrc.zzN(zzbphVar));
                return zzbpr.this.zza(new zzbqc(zzbqf.zzcgS, zzbphVar));
            }
        });
    }
}
