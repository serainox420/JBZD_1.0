package com.google.android.gms.internal;

import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.internal.zzbop;
import com.google.android.gms.internal.zzbow;
import com.google.android.gms.internal.zzbpp;
import com.google.android.gms.internal.zzbpr;
import com.google.android.gms.internal.zzbqs;
import com.google.firebase.database.DatabaseException;
import com.google.firebase.database.b;
import com.google.firebase.database.c;
import com.google.firebase.database.d;
import com.google.firebase.database.f;
import com.google.firebase.database.m;
import com.google.firebase.database.n;
import com.google.firebase.database.o;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzbpj implements zzbop.zza {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final zzbpk zzbZX;
    private final zzbop zzcdg;
    private zzbpr zzceA;
    private f zzceB;
    private zzbpo zzceo;
    private zzbpp zzcep;
    private zzbqs<List<zza>> zzceq;
    private final zzbra zzces;
    private final zzbpa zzcet;
    private final zzbrn zzceu;
    private final zzbrn zzcev;
    private final zzbrn zzcew;
    private zzbpr zzcez;
    private final zzbta zzcen = new zzbta(new zzbsx(), 0);
    private boolean zzcer = false;
    public long zzcex = 0;
    private long zzcey = 1;
    private boolean zzceC = false;
    private long zzceD = 0;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zza implements Comparable<zza> {
        private int retryCount;
        private zzbph zzcag;
        private m.a zzcfd;
        private n zzcfe;
        private zzb zzcff;
        private long zzcfg;
        private boolean zzcfh;
        private c zzcfi;
        private long zzcfj;
        private zzbsc zzcfk;
        private zzbsc zzcfl;
        private zzbsc zzcfm;

        private zza(zzbph zzbphVar, m.a aVar, n nVar, zzb zzbVar, boolean z, long j) {
            this.zzcag = zzbphVar;
            this.zzcfd = aVar;
            this.zzcfe = nVar;
            this.zzcff = zzbVar;
            this.retryCount = 0;
            this.zzcfh = z;
            this.zzcfg = j;
            this.zzcfi = null;
            this.zzcfk = null;
            this.zzcfl = null;
            this.zzcfm = null;
        }

        static /* synthetic */ int zze(zza zzaVar) {
            int i = zzaVar.retryCount;
            zzaVar.retryCount = i + 1;
            return i;
        }

        @Override // java.lang.Comparable
        /* renamed from: zza */
        public int compareTo(zza zzaVar) {
            if (this.zzcfg < zzaVar.zzcfg) {
                return -1;
            }
            return this.zzcfg == zzaVar.zzcfg ? 0 : 1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public enum zzb {
        INITIALIZING,
        RUN,
        SENT,
        COMPLETED,
        SENT_NEEDS_ABORT,
        NEEDS_ABORT
    }

    static {
        $assertionsDisabled = !zzbpj.class.desiredAssertionStatus();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbpj(zzbpk zzbpkVar, zzbpa zzbpaVar, f fVar) {
        this.zzbZX = zzbpkVar;
        this.zzcet = zzbpaVar;
        this.zzceB = fVar;
        this.zzceu = this.zzcet.zziV("RepoOperation");
        this.zzcev = this.zzcet.zziV("Transaction");
        this.zzcew = this.zzcet.zziV("DataOperation");
        this.zzces = new zzbra(this.zzcet);
        this.zzcdg = zzbpaVar.zza(new zzbon(zzbpkVar.zzcbI, zzbpkVar.zzaGP, zzbpkVar.zzcbJ), this);
        zzs(new Runnable() { // from class: com.google.android.gms.internal.zzbpj.1
            @Override // java.lang.Runnable
            public void run() {
                zzbpj.this.zzYX();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzYX() {
        this.zzcet.zzYD().zza(new zzbow.zzb() { // from class: com.google.android.gms.internal.zzbpj.12
            @Override // com.google.android.gms.internal.zzbow.zzb
            public void zziU(String str) {
                zzbpj.this.zzceu.zzi("Auth token changed, triggering auth token refresh", new Object[0]);
                zzbpj.this.zzcdg.zziN(str);
            }
        });
        this.zzcdg.initialize();
        zzbql zziW = this.zzcet.zziW(this.zzbZX.zzcbI);
        this.zzceo = new zzbpo();
        this.zzcep = new zzbpp();
        this.zzceq = new zzbqs<>();
        this.zzcez = new zzbpr(this.zzcet, new zzbqk(), new zzbpr.zzd() { // from class: com.google.android.gms.internal.zzbpj.17
            @Override // com.google.android.gms.internal.zzbpr.zzd
            public void zza(zzbrc zzbrcVar, zzbps zzbpsVar) {
            }

            @Override // com.google.android.gms.internal.zzbpr.zzd
            public void zza(final zzbrc zzbrcVar, zzbps zzbpsVar, zzboo zzbooVar, final zzbpr.zza zzaVar) {
                zzbpj.this.zzs(new Runnable() { // from class: com.google.android.gms.internal.zzbpj.17.1
                    @Override // java.lang.Runnable
                    public void run() {
                        zzbsc zzq = zzbpj.this.zzceo.zzq(zzbrcVar.zzWM());
                        if (!zzq.isEmpty()) {
                            zzbpj.this.zzZ(zzbpj.this.zzcez.zzi(zzbrcVar.zzWM(), zzq));
                            zzaVar.zzb(null);
                        }
                    }
                });
            }
        });
        this.zzceA = new zzbpr(this.zzcet, zziW, new zzbpr.zzd() { // from class: com.google.android.gms.internal.zzbpj.18
            @Override // com.google.android.gms.internal.zzbpr.zzd
            public void zza(zzbrc zzbrcVar, zzbps zzbpsVar) {
                zzbpj.this.zzcdg.zza(zzbrcVar.zzWM().zzYR(), zzbrcVar.zzaaq().zzaam());
            }

            @Override // com.google.android.gms.internal.zzbpr.zzd
            public void zza(zzbrc zzbrcVar, zzbps zzbpsVar, zzboo zzbooVar, final zzbpr.zza zzaVar) {
                zzbpj.this.zzcdg.zza(zzbrcVar.zzWM().zzYR(), zzbrcVar.zzaaq().zzaam(), zzbooVar, zzbpsVar != null ? Long.valueOf(zzbpsVar.zzZl()) : null, new zzbos() { // from class: com.google.android.gms.internal.zzbpj.18.1
                    @Override // com.google.android.gms.internal.zzbos
                    public void zzar(String str, String str2) {
                        zzbpj.this.zzZ(zzaVar.zzb(zzbpj.zzas(str, str2)));
                    }
                });
            }
        });
        zza(zziW);
        zzb(zzboz.zzcdQ, (Object) false);
        zzb(zzboz.zzcdR, (Object) false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzZ(List<? extends zzbqy> list) {
        if (!list.isEmpty()) {
            this.zzces.zzab(list);
        }
    }

    private long zzZb() {
        long j = this.zzcey;
        this.zzcey = 1 + j;
        return j;
    }

    private void zzZc() {
        zzbpp zza2 = zzbpn.zza(this.zzcep, zzbpn.zza(this.zzcen));
        final ArrayList arrayList = new ArrayList();
        zza2.zza(zzbph.zzYP(), new zzbpp.zzb() { // from class: com.google.android.gms.internal.zzbpj.4
            @Override // com.google.android.gms.internal.zzbpp.zzb
            public void zzf(zzbph zzbphVar, zzbsc zzbscVar) {
                arrayList.addAll(zzbpj.this.zzceA.zzi(zzbphVar, zzbscVar));
                zzbpj.this.zzo(zzbpj.this.zzb(zzbphVar, -9));
            }
        });
        this.zzcep = new zzbpp();
        zzZ(arrayList);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzZd() {
        zzbqs<List<zza>> zzbqsVar = this.zzceq;
        zzb(zzbqsVar);
        zza(zzbqsVar);
    }

    private long zzZe() {
        long j = this.zzceD;
        this.zzceD = 1 + j;
        return j;
    }

    private zzbsc zza(zzbph zzbphVar, List<Long> list) {
        zzbsc zzc = this.zzceA.zzc(zzbphVar, list);
        return zzc == null ? zzbrv.zzaaZ() : zzc;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(long j, zzbph zzbphVar, c cVar) {
        if (cVar == null || cVar.a() != -25) {
            List<? extends zzbqy> zza2 = this.zzceA.zza(j, !(cVar == null), true, (zzbsw) this.zzcen);
            if (zza2.size() > 0) {
                zzo(zzbphVar);
            }
            zzZ(zza2);
        }
    }

    private void zza(zzbql zzbqlVar) {
        List<zzbpv> zzWO = zzbqlVar.zzWO();
        Map<String, Object> zza2 = zzbpn.zza(this.zzcen);
        long j = Long.MIN_VALUE;
        for (final zzbpv zzbpvVar : zzWO) {
            zzbos zzbosVar = new zzbos() { // from class: com.google.android.gms.internal.zzbpj.19
                @Override // com.google.android.gms.internal.zzbos
                public void zzar(String str, String str2) {
                    c zzas = zzbpj.zzas(str, str2);
                    zzbpj.this.zza("Persisted write", zzbpvVar.zzWM(), zzas);
                    zzbpj.this.zza(zzbpvVar.zzZm(), zzbpvVar.zzWM(), zzas);
                }
            };
            if (j >= zzbpvVar.zzZm()) {
                throw new IllegalStateException("Write ids were not in order.");
            }
            long zzZm = zzbpvVar.zzZm();
            this.zzcey = zzbpvVar.zzZm() + 1;
            if (zzbpvVar.zzZp()) {
                if (this.zzceu.zzaaD()) {
                    this.zzceu.zzi(new StringBuilder(48).append("Restoring overwrite with id ").append(zzbpvVar.zzZm()).toString(), new Object[0]);
                }
                this.zzcdg.zza(zzbpvVar.zzWM().zzYR(), zzbpvVar.zzZn().getValue(true), zzbosVar);
                this.zzceA.zza(zzbpvVar.zzWM(), zzbpvVar.zzZn(), zzbpn.zza(zzbpvVar.zzZn(), zza2), zzbpvVar.zzZm(), true, false);
            } else {
                if (this.zzceu.zzaaD()) {
                    this.zzceu.zzi(new StringBuilder(44).append("Restoring merge with id ").append(zzbpvVar.zzZm()).toString(), new Object[0]);
                }
                this.zzcdg.zza(zzbpvVar.zzWM().zzYR(), zzbpvVar.zzZo().zzbe(true), zzbosVar);
                this.zzceA.zza(zzbpvVar.zzWM(), zzbpvVar.zzZo(), zzbpn.zza(zzbpvVar.zzZo(), zza2), zzbpvVar.zzZm(), false);
            }
            j = zzZm;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(zzbqs<List<zza>> zzbqsVar) {
        Boolean bool;
        if (zzbqsVar.getValue() == null) {
            if (!zzbqsVar.hasChildren()) {
                return;
            }
            zzbqsVar.zzb(new zzbqs.zzb<List<zza>>() { // from class: com.google.android.gms.internal.zzbpj.7
                @Override // com.google.android.gms.internal.zzbqs.zzb
                public void zzd(zzbqs<List<zza>> zzbqsVar2) {
                    zzbpj.this.zza(zzbqsVar2);
                }
            });
            return;
        }
        List<zza> zzc = zzc(zzbqsVar);
        if (!$assertionsDisabled && zzc.size() <= 0) {
            throw new AssertionError();
        }
        Iterator<zza> it = zzc.iterator();
        while (true) {
            if (!it.hasNext()) {
                bool = true;
                break;
            } else if (it.next().zzcff != zzb.RUN) {
                bool = false;
                break;
            }
        }
        if (!bool.booleanValue()) {
            return;
        }
        zza(zzc, zzbqsVar.zzWM());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(zzbqs<List<zza>> zzbqsVar, int i) {
        final c a2;
        List<zza> value = zzbqsVar.getValue();
        ArrayList arrayList = new ArrayList();
        if (value != null) {
            ArrayList<Runnable> arrayList2 = new ArrayList();
            if (i == -9) {
                a2 = c.a("overriddenBySet");
            } else {
                zzbte.zzb(i == -25, new StringBuilder(45).append("Unknown transaction abort reason: ").append(i).toString());
                a2 = c.a(-25);
            }
            int i2 = -1;
            int i3 = 0;
            while (true) {
                int i4 = i3;
                int i5 = i2;
                if (i4 >= value.size()) {
                    if (i5 == -1) {
                        zzbqsVar.setValue(null);
                    } else {
                        zzbqsVar.setValue(value.subList(0, i5 + 1));
                    }
                    zzZ(arrayList);
                    for (Runnable runnable : arrayList2) {
                        zzq(runnable);
                    }
                    return;
                }
                final zza zzaVar = value.get(i4);
                if (zzaVar.zzcff == zzb.SENT_NEEDS_ABORT) {
                    i2 = i5;
                } else if (zzaVar.zzcff == zzb.SENT) {
                    if (!$assertionsDisabled && i5 != i4 - 1) {
                        throw new AssertionError();
                    }
                    zzaVar.zzcff = zzb.SENT_NEEDS_ABORT;
                    zzaVar.zzcfi = a2;
                    i2 = i4;
                } else if (!$assertionsDisabled && zzaVar.zzcff != zzb.RUN) {
                    throw new AssertionError();
                } else {
                    zze(new zzbpx(this, zzaVar.zzcfe, zzbrc.zzN(zzaVar.zzcag)));
                    if (i == -9) {
                        arrayList.addAll(this.zzceA.zza(zzaVar.zzcfj, true, false, (zzbsw) this.zzcen));
                    } else {
                        zzbte.zzb(i == -25, new StringBuilder(45).append("Unknown transaction abort reason: ").append(i).toString());
                    }
                    arrayList2.add(new Runnable(this) { // from class: com.google.android.gms.internal.zzbpj.16
                        @Override // java.lang.Runnable
                        public void run() {
                            zzaVar.zzcfd.a(a2, false, null);
                        }
                    });
                    i2 = i5;
                }
                i3 = i4 + 1;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(String str, zzbph zzbphVar, c cVar) {
        if (cVar == null || cVar.a() == -1 || cVar.a() == -25) {
            return;
        }
        zzbrn zzbrnVar = this.zzceu;
        String valueOf = String.valueOf(zzbphVar.toString());
        String valueOf2 = String.valueOf(cVar.toString());
        zzbrnVar.warn(new StringBuilder(String.valueOf(str).length() + 13 + String.valueOf(valueOf).length() + String.valueOf(valueOf2).length()).append(str).append(" at ").append(valueOf).append(" failed: ").append(valueOf2).toString());
    }

    private void zza(final List<zza> list, final zzbph zzbphVar) {
        ArrayList arrayList = new ArrayList();
        for (zza zzaVar : list) {
            arrayList.add(Long.valueOf(zzaVar.zzcfj));
        }
        zzbsc zza2 = zza(zzbphVar, arrayList);
        String zzaaM = zza2.zzaaM();
        Iterator<zza> it = list.iterator();
        while (true) {
            zzbsc zzbscVar = zza2;
            if (!it.hasNext()) {
                Object value = zzbscVar.getValue(true);
                zzZb();
                this.zzcdg.zza(zzbphVar.zzYR(), value, zzaaM, new zzbos() { // from class: com.google.android.gms.internal.zzbpj.8
                    @Override // com.google.android.gms.internal.zzbos
                    public void zzar(String str, String str2) {
                        c zzas = zzbpj.zzas(str, str2);
                        zzbpj.this.zza("Transaction", zzbphVar, zzas);
                        ArrayList arrayList2 = new ArrayList();
                        if (zzas != null) {
                            if (zzas.a() == -1) {
                                for (zza zzaVar2 : list) {
                                    if (zzaVar2.zzcff == zzb.SENT_NEEDS_ABORT) {
                                        zzaVar2.zzcff = zzb.NEEDS_ABORT;
                                    } else {
                                        zzaVar2.zzcff = zzb.RUN;
                                    }
                                }
                            } else {
                                for (zza zzaVar3 : list) {
                                    zzaVar3.zzcff = zzb.NEEDS_ABORT;
                                    zzaVar3.zzcfi = zzas;
                                }
                            }
                            zzbpj.this.zzo(zzbphVar);
                            return;
                        }
                        ArrayList arrayList3 = new ArrayList();
                        for (final zza zzaVar4 : list) {
                            zzaVar4.zzcff = zzb.COMPLETED;
                            arrayList2.addAll(zzbpj.this.zzceA.zza(zzaVar4.zzcfj, false, false, (zzbsw) zzbpj.this.zzcen));
                            final b a2 = o.a(o.a(this, zzaVar4.zzcag), zzbrx.zzn(zzaVar4.zzcfm));
                            arrayList3.add(new Runnable(this) { // from class: com.google.android.gms.internal.zzbpj.8.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    zzaVar4.zzcfd.a(null, true, a2);
                                }
                            });
                            zzbpj.this.zze(new zzbpx(zzbpj.this, zzaVar4.zzcfe, zzbrc.zzN(zzaVar4.zzcag)));
                        }
                        zzbpj.this.zzb(zzbpj.this.zzceq.zzL(zzbphVar));
                        zzbpj.this.zzZd();
                        this.zzZ(arrayList2);
                        for (int i = 0; i < arrayList3.size(); i++) {
                            zzbpj.this.zzq((Runnable) arrayList3.get(i));
                        }
                    }
                });
                return;
            }
            zza next = it.next();
            if (!$assertionsDisabled && next.zzcff != zzb.RUN) {
                throw new AssertionError();
            }
            next.zzcff = zzb.SENT;
            zza.zze(next);
            zza2 = zzbscVar.zzl(zzbph.zza(zzbphVar, next.zzcag), next.zzcfl);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(final List<zza> list, zzbqs<List<zza>> zzbqsVar) {
        List<zza> value = zzbqsVar.getValue();
        if (value != null) {
            list.addAll(value);
        }
        zzbqsVar.zzb(new zzbqs.zzb<List<zza>>() { // from class: com.google.android.gms.internal.zzbpj.13
            @Override // com.google.android.gms.internal.zzbqs.zzb
            public void zzd(zzbqs<List<zza>> zzbqsVar2) {
                zzbpj.this.zza(list, zzbqsVar2);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static c zzas(String str, String str2) {
        if (str != null) {
            return c.a(str, str2);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public zzbph zzb(zzbph zzbphVar, final int i) {
        zzbph zzWM = zzp(zzbphVar).zzWM();
        if (this.zzcev.zzaaD()) {
            zzbrn zzbrnVar = this.zzceu;
            String valueOf = String.valueOf(zzbphVar);
            String valueOf2 = String.valueOf(zzWM);
            zzbrnVar.zzi(new StringBuilder(String.valueOf(valueOf).length() + 44 + String.valueOf(valueOf2).length()).append("Aborting transactions for path: ").append(valueOf).append(". Affected: ").append(valueOf2).toString(), new Object[0]);
        }
        zzbqs<List<zza>> zzL = this.zzceq.zzL(zzbphVar);
        zzL.zza(new zzbqs.zza<List<zza>>() { // from class: com.google.android.gms.internal.zzbpj.14
            @Override // com.google.android.gms.internal.zzbqs.zza
            public boolean zze(zzbqs<List<zza>> zzbqsVar) {
                zzbpj.this.zza(zzbqsVar, i);
                return false;
            }
        });
        zza(zzL, i);
        zzL.zza(new zzbqs.zzb<List<zza>>() { // from class: com.google.android.gms.internal.zzbpj.15
            @Override // com.google.android.gms.internal.zzbqs.zzb
            public void zzd(zzbqs<List<zza>> zzbqsVar) {
                zzbpj.this.zza(zzbqsVar, i);
            }
        });
        return zzWM;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzb(zzbqs<List<zza>> zzbqsVar) {
        List<zza> value = zzbqsVar.getValue();
        if (value != null) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= value.size()) {
                    break;
                } else if (value.get(i2).zzcff == zzb.COMPLETED) {
                    value.remove(i2);
                    i = i2;
                } else {
                    i = i2 + 1;
                }
            }
            if (value.size() > 0) {
                zzbqsVar.setValue(value);
            } else {
                zzbqsVar.setValue(null);
            }
        }
        zzbqsVar.zzb(new zzbqs.zzb<List<zza>>() { // from class: com.google.android.gms.internal.zzbpj.9
            @Override // com.google.android.gms.internal.zzbqs.zzb
            public void zzd(zzbqs<List<zza>> zzbqsVar2) {
                zzbpj.this.zzb(zzbqsVar2);
            }
        });
    }

    private void zzb(zzbrq zzbrqVar, Object obj) {
        if (zzbrqVar.equals(zzboz.zzcdP)) {
            this.zzcen.zzaS(((Long) obj).longValue());
        }
        zzbph zzbphVar = new zzbph(zzboz.zzcdO, zzbrqVar);
        try {
            zzbsc zzat = zzbsd.zzat(obj);
            this.zzceo.zzg(zzbphVar, zzat);
            zzZ(this.zzcez.zzi(zzbphVar, zzat));
        } catch (DatabaseException e) {
            this.zzceu.zzd("Failed to parse info update", e);
        }
    }

    private void zzb(List<zza> list, zzbph zzbphVar) {
        final c cVar;
        boolean z;
        m.b a2;
        if (list.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        List<Long> arrayList2 = new ArrayList<>();
        for (zza zzaVar : list) {
            arrayList2.add(Long.valueOf(zzaVar.zzcfj));
        }
        for (final zza zzaVar2 : list) {
            zzbph zza2 = zzbph.zza(zzbphVar, zzaVar2.zzcag);
            ArrayList arrayList3 = new ArrayList();
            if (!$assertionsDisabled && zza2 == null) {
                throw new AssertionError();
            }
            if (zzaVar2.zzcff == zzb.NEEDS_ABORT) {
                z = true;
                cVar = zzaVar2.zzcfi;
                if (cVar.a() != -25) {
                    arrayList3.addAll(this.zzceA.zza(zzaVar2.zzcfj, true, false, (zzbsw) this.zzcen));
                }
            } else if (zzaVar2.zzcff != zzb.RUN) {
                cVar = null;
                z = false;
            } else if (zzaVar2.retryCount >= 25) {
                z = true;
                cVar = c.a("maxretries");
                arrayList3.addAll(this.zzceA.zza(zzaVar2.zzcfj, true, false, (zzbsw) this.zzcen));
            } else {
                zzbsc zza3 = zza(zzaVar2.zzcag, arrayList2);
                zzaVar2.zzcfk = zza3;
                try {
                    a2 = zzaVar2.zzcfd.a(o.a(zza3));
                    cVar = null;
                } catch (Throwable th) {
                    c a3 = c.a(th);
                    a2 = m.a();
                    cVar = a3;
                }
                if (a2.a()) {
                    Long valueOf = Long.valueOf(zzaVar2.zzcfj);
                    Map<String, Object> zza4 = zzbpn.zza(this.zzcen);
                    zzbsc b = a2.b();
                    zzbsc zza5 = zzbpn.zza(b, zza4);
                    zzaVar2.zzcfl = b;
                    zzaVar2.zzcfm = zza5;
                    zzaVar2.zzcfj = zzZb();
                    arrayList2.remove(valueOf);
                    arrayList3.addAll(this.zzceA.zza(zzaVar2.zzcag, b, zza5, zzaVar2.zzcfj, zzaVar2.zzcfh, false));
                    arrayList3.addAll(this.zzceA.zza(valueOf.longValue(), true, false, (zzbsw) this.zzcen));
                    cVar = null;
                    z = false;
                } else {
                    z = true;
                    arrayList3.addAll(this.zzceA.zza(zzaVar2.zzcfj, true, false, (zzbsw) this.zzcen));
                }
            }
            zzZ(arrayList3);
            if (z) {
                zzaVar2.zzcff = zzb.COMPLETED;
                final b a4 = o.a(o.a(this, zzaVar2.zzcag), zzbrx.zzn(zzaVar2.zzcfk));
                zzs(new Runnable() { // from class: com.google.android.gms.internal.zzbpj.10
                    @Override // java.lang.Runnable
                    public void run() {
                        zzbpj.this.zze(new zzbpx(zzbpj.this, zzaVar2.zzcfe, zzbrc.zzN(zzaVar2.zzcag)));
                    }
                });
                arrayList.add(new Runnable(this) { // from class: com.google.android.gms.internal.zzbpj.11
                    @Override // java.lang.Runnable
                    public void run() {
                        zzaVar2.zzcfd.a(cVar, false, a4);
                    }
                });
            }
        }
        zzb(this.zzceq);
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= arrayList.size()) {
                zzZd();
                return;
            } else {
                zzq((Runnable) arrayList.get(i2));
                i = i2 + 1;
            }
        }
    }

    private List<zza> zzc(zzbqs<List<zza>> zzbqsVar) {
        ArrayList arrayList = new ArrayList();
        zza(arrayList, zzbqsVar);
        Collections.sort(arrayList);
        return arrayList;
    }

    private zzbsc zzn(zzbph zzbphVar) {
        return zza(zzbphVar, new ArrayList());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public zzbph zzo(zzbph zzbphVar) {
        zzbqs<List<zza>> zzp = zzp(zzbphVar);
        zzbph zzWM = zzp.zzWM();
        zzb(zzc(zzp), zzWM);
        return zzWM;
    }

    private zzbqs<List<zza>> zzp(zzbph zzbphVar) {
        zzbqs<List<zza>> zzbqsVar = this.zzceq;
        while (!zzbphVar.isEmpty() && zzbqsVar.getValue() == null) {
            zzbqsVar = zzbqsVar.zzL(new zzbph(zzbphVar.zzYS()));
            zzbphVar = zzbphVar.zzYT();
        }
        return zzbqsVar;
    }

    public f getDatabase() {
        return this.zzceB;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void interrupt() {
        this.zzcdg.interrupt("repo_interrupt");
    }

    @Override // com.google.android.gms.internal.zzbop.zza
    public void onDisconnect() {
        zza(zzboz.zzcdR, (Object) false);
        zzZc();
    }

    public void purgeOutstandingWrites() {
        if (this.zzceu.zzaaD()) {
            this.zzceu.zzi("Purging writes", new Object[0]);
        }
        zzZ(this.zzceA.zzZj());
        zzb(zzbph.zzYP(), -25);
        this.zzcdg.purgeOutstandingWrites();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void resume() {
        this.zzcdg.resume("repo_interrupt");
    }

    public String toString() {
        return this.zzbZX.toString();
    }

    @Override // com.google.android.gms.internal.zzbop.zza
    public void zzXz() {
        zza(zzboz.zzcdR, (Object) true);
    }

    public zzbpk zzYY() {
        return this.zzbZX;
    }

    public long zzYZ() {
        return this.zzcen.zzabI();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean zzZa() {
        return !this.zzcez.isEmpty() || !this.zzceA.isEmpty();
    }

    public void zza(final zzbph zzbphVar, zzboy zzboyVar, final d.a aVar, Map<String, Object> map) {
        if (this.zzceu.zzaaD()) {
            zzbrn zzbrnVar = this.zzceu;
            String valueOf = String.valueOf(zzbphVar);
            zzbrnVar.zzi(new StringBuilder(String.valueOf(valueOf).length() + 8).append("update: ").append(valueOf).toString(), new Object[0]);
        }
        if (this.zzcew.zzaaD()) {
            zzbrn zzbrnVar2 = this.zzcew;
            String valueOf2 = String.valueOf(zzbphVar);
            String valueOf3 = String.valueOf(map);
            zzbrnVar2.zzi(new StringBuilder(String.valueOf(valueOf2).length() + 9 + String.valueOf(valueOf3).length()).append("update: ").append(valueOf2).append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR).append(valueOf3).toString(), new Object[0]);
        }
        if (zzboyVar.isEmpty()) {
            if (this.zzceu.zzaaD()) {
                this.zzceu.zzi("update called with no changes. No-op", new Object[0]);
            }
            zza(aVar, (c) null, zzbphVar);
            return;
        }
        zzboy zza2 = zzbpn.zza(zzboyVar, zzbpn.zza(this.zzcen));
        final long zzZb = zzZb();
        zzZ(this.zzceA.zza(zzbphVar, zzboyVar, zza2, zzZb, true));
        this.zzcdg.zza(zzbphVar.zzYR(), map, new zzbos() { // from class: com.google.android.gms.internal.zzbpj.22
            @Override // com.google.android.gms.internal.zzbos
            public void zzar(String str, String str2) {
                c zzas = zzbpj.zzas(str, str2);
                zzbpj.this.zza("updateChildren", zzbphVar, zzas);
                zzbpj.this.zza(zzZb, zzbphVar, zzas);
                zzbpj.this.zza(aVar, zzas, zzbphVar);
            }
        });
        Iterator<Map.Entry<zzbph, zzbsc>> it = zzboyVar.iterator();
        while (it.hasNext()) {
            zzo(zzb(zzbphVar.zzh(it.next().getKey()), -9));
        }
    }

    public void zza(final zzbph zzbphVar, zzbsc zzbscVar, final d.a aVar) {
        if (this.zzceu.zzaaD()) {
            zzbrn zzbrnVar = this.zzceu;
            String valueOf = String.valueOf(zzbphVar);
            zzbrnVar.zzi(new StringBuilder(String.valueOf(valueOf).length() + 5).append("set: ").append(valueOf).toString(), new Object[0]);
        }
        if (this.zzcew.zzaaD()) {
            zzbrn zzbrnVar2 = this.zzcew;
            String valueOf2 = String.valueOf(zzbphVar);
            String valueOf3 = String.valueOf(zzbscVar);
            zzbrnVar2.zzi(new StringBuilder(String.valueOf(valueOf2).length() + 6 + String.valueOf(valueOf3).length()).append("set: ").append(valueOf2).append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR).append(valueOf3).toString(), new Object[0]);
        }
        zzbsc zza2 = zzbpn.zza(zzbscVar, zzbpn.zza(this.zzcen));
        final long zzZb = zzZb();
        zzZ(this.zzceA.zza(zzbphVar, zzbscVar, zza2, zzZb, true, true));
        this.zzcdg.zza(zzbphVar.zzYR(), zzbscVar.getValue(true), new zzbos() { // from class: com.google.android.gms.internal.zzbpj.21
            @Override // com.google.android.gms.internal.zzbos
            public void zzar(String str, String str2) {
                c zzas = zzbpj.zzas(str, str2);
                zzbpj.this.zza("setValue", zzbphVar, zzas);
                zzbpj.this.zza(zzZb, zzbphVar, zzas);
                zzbpj.this.zza(aVar, zzas, zzbphVar);
            }
        });
        zzo(zzb(zzbphVar, -9));
    }

    public void zza(final zzbph zzbphVar, final d.a aVar) {
        this.zzcdg.zza(zzbphVar.zzYR(), new zzbos() { // from class: com.google.android.gms.internal.zzbpj.3
            @Override // com.google.android.gms.internal.zzbos
            public void zzar(String str, String str2) {
                c zzas = zzbpj.zzas(str, str2);
                if (zzas == null) {
                    zzbpj.this.zzcep.zzr(zzbphVar);
                }
                zzbpj.this.zza(aVar, zzas, zzbphVar);
            }
        });
    }

    public void zza(zzbph zzbphVar, final m.a aVar, boolean z) {
        final c a2;
        m.b a3;
        m.b a4;
        if (this.zzceu.zzaaD()) {
            zzbrn zzbrnVar = this.zzceu;
            String valueOf = String.valueOf(zzbphVar);
            zzbrnVar.zzi(new StringBuilder(String.valueOf(valueOf).length() + 13).append("transaction: ").append(valueOf).toString(), new Object[0]);
        }
        if (this.zzcew.zzaaD()) {
            zzbrn zzbrnVar2 = this.zzceu;
            String valueOf2 = String.valueOf(zzbphVar);
            zzbrnVar2.zzi(new StringBuilder(String.valueOf(valueOf2).length() + 13).append("transaction: ").append(valueOf2).toString(), new Object[0]);
        }
        if (this.zzcet.zzXu() && !this.zzceC) {
            this.zzceC = true;
            this.zzcev.info("runTransaction() usage detected while persistence is enabled. Please be aware that transactions *will not* be persisted across database restarts.  See https://www.firebase.com/docs/android/guide/offline-capabilities.html#section-handling-transactions-offline for more details.");
        }
        d a5 = o.a(this, zzbphVar);
        n nVar = new n(this) { // from class: com.google.android.gms.internal.zzbpj.5
            @Override // com.google.firebase.database.n
            public void onCancelled(c cVar) {
            }

            @Override // com.google.firebase.database.n
            public void onDataChange(b bVar) {
            }
        };
        zzf(new zzbpx(this, nVar, a5.d()));
        zza zzaVar = new zza(zzbphVar, aVar, nVar, zzb.INITIALIZING, z, zzZe());
        zzbsc zzn = zzn(zzbphVar);
        zzaVar.zzcfk = zzn;
        try {
            a4 = aVar.a(o.a(zzn));
        } catch (Throwable th) {
            a2 = c.a(th);
            a3 = m.a();
        }
        if (a4 == null) {
            throw new NullPointerException("Transaction returned null as result");
        }
        a3 = a4;
        a2 = null;
        if (!a3.a()) {
            zzaVar.zzcfl = null;
            zzaVar.zzcfm = null;
            final b a6 = o.a(a5, zzbrx.zzn(zzaVar.zzcfk));
            zzq(new Runnable(this) { // from class: com.google.android.gms.internal.zzbpj.6
                @Override // java.lang.Runnable
                public void run() {
                    aVar.a(a2, false, a6);
                }
            });
            return;
        }
        zzaVar.zzcff = zzb.RUN;
        zzbqs<List<zza>> zzL = this.zzceq.zzL(zzbphVar);
        List<zza> value = zzL.getValue();
        if (value == null) {
            value = new ArrayList<>();
        }
        value.add(zzaVar);
        zzL.setValue(value);
        Map<String, Object> zza2 = zzbpn.zza(this.zzcen);
        zzbsc b = a3.b();
        zzbsc zza3 = zzbpn.zza(b, zza2);
        zzaVar.zzcfl = b;
        zzaVar.zzcfm = zza3;
        zzaVar.zzcfj = zzZb();
        zzZ(this.zzceA.zza(zzbphVar, b, zza3, zzaVar.zzcfj, z, false));
        zzZd();
    }

    public void zza(final zzbph zzbphVar, final Map<zzbph, zzbsc> map, final d.a aVar, Map<String, Object> map2) {
        this.zzcdg.zzb(zzbphVar.zzYR(), map2, new zzbos() { // from class: com.google.android.gms.internal.zzbpj.2
            @Override // com.google.android.gms.internal.zzbos
            public void zzar(String str, String str2) {
                c zzas = zzbpj.zzas(str, str2);
                zzbpj.this.zza("onDisconnect().updateChildren", zzbphVar, zzas);
                if (zzas == null) {
                    for (Map.Entry entry : map.entrySet()) {
                        zzbpj.this.zzcep.zzh(zzbphVar.zzh((zzbph) entry.getKey()), (zzbsc) entry.getValue());
                    }
                }
                zzbpj.this.zza(aVar, zzas, zzbphVar);
            }
        });
    }

    public void zza(zzbrc zzbrcVar, boolean z) {
        if ($assertionsDisabled || zzbrcVar.zzWM().isEmpty() || !zzbrcVar.zzWM().zzYS().equals(zzboz.zzcdO)) {
            this.zzceA.zza(zzbrcVar, z);
            return;
        }
        throw new AssertionError();
    }

    public void zza(zzbrq zzbrqVar, Object obj) {
        zzb(zzbrqVar, obj);
    }

    void zza(final d.a aVar, final c cVar, zzbph zzbphVar) {
        if (aVar != null) {
            zzbrq zzYV = zzbphVar.zzYV();
            final d a2 = (zzYV == null || !zzYV.zzaaK()) ? o.a(this, zzbphVar) : o.a(this, zzbphVar.zzYU());
            zzq(new Runnable(this) { // from class: com.google.android.gms.internal.zzbpj.20
                @Override // java.lang.Runnable
                public void run() {
                    aVar.onComplete(cVar, a2);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.zzbop.zza
    public void zza(List<String> list, Object obj, boolean z, Long l) {
        List<? extends zzbqy> zzi;
        zzbph zzbphVar = new zzbph(list);
        if (this.zzceu.zzaaD()) {
            zzbrn zzbrnVar = this.zzceu;
            String valueOf = String.valueOf(zzbphVar);
            zzbrnVar.zzi(new StringBuilder(String.valueOf(valueOf).length() + 14).append("onDataUpdate: ").append(valueOf).toString(), new Object[0]);
        }
        if (this.zzcew.zzaaD()) {
            zzbrn zzbrnVar2 = this.zzceu;
            String valueOf2 = String.valueOf(zzbphVar);
            String valueOf3 = String.valueOf(obj);
            zzbrnVar2.zzi(new StringBuilder(String.valueOf(valueOf2).length() + 15 + String.valueOf(valueOf3).length()).append("onDataUpdate: ").append(valueOf2).append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR).append(valueOf3).toString(), new Object[0]);
        }
        this.zzcex++;
        try {
            if (l != null) {
                zzbps zzbpsVar = new zzbps(l.longValue());
                if (z) {
                    HashMap hashMap = new HashMap();
                    for (Map.Entry entry : ((Map) obj).entrySet()) {
                        hashMap.put(new zzbph((String) entry.getKey()), zzbsd.zzat(entry.getValue()));
                    }
                    zzi = this.zzceA.zza(zzbphVar, hashMap, zzbpsVar);
                } else {
                    zzi = this.zzceA.zza(zzbphVar, zzbsd.zzat(obj), zzbpsVar);
                }
            } else if (z) {
                HashMap hashMap2 = new HashMap();
                for (Map.Entry entry2 : ((Map) obj).entrySet()) {
                    hashMap2.put(new zzbph((String) entry2.getKey()), zzbsd.zzat(entry2.getValue()));
                }
                zzi = this.zzceA.zza(zzbphVar, hashMap2);
            } else {
                zzi = this.zzceA.zzi(zzbphVar, zzbsd.zzat(obj));
            }
            if (zzi.size() > 0) {
                zzo(zzbphVar);
            }
            zzZ(zzi);
        } catch (DatabaseException e) {
            this.zzceu.zzd("FIREBASE INTERNAL ERROR", e);
        }
    }

    @Override // com.google.android.gms.internal.zzbop.zza
    public void zza(List<String> list, List<zzbor> list2, Long l) {
        zzbph zzbphVar = new zzbph(list);
        if (this.zzceu.zzaaD()) {
            zzbrn zzbrnVar = this.zzceu;
            String valueOf = String.valueOf(zzbphVar);
            zzbrnVar.zzi(new StringBuilder(String.valueOf(valueOf).length() + 20).append("onRangeMergeUpdate: ").append(valueOf).toString(), new Object[0]);
        }
        if (this.zzcew.zzaaD()) {
            zzbrn zzbrnVar2 = this.zzceu;
            String valueOf2 = String.valueOf(zzbphVar);
            String valueOf3 = String.valueOf(list2);
            zzbrnVar2.zzi(new StringBuilder(String.valueOf(valueOf2).length() + 21 + String.valueOf(valueOf3).length()).append("onRangeMergeUpdate: ").append(valueOf2).append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR).append(valueOf3).toString(), new Object[0]);
        }
        this.zzcex++;
        ArrayList arrayList = new ArrayList(list2.size());
        for (zzbor zzborVar : list2) {
            arrayList.add(new zzbsh(zzborVar));
        }
        List<? extends zzbqy> zza2 = l != null ? this.zzceA.zza(zzbphVar, arrayList, new zzbps(l.longValue())) : this.zzceA.zzb(zzbphVar, arrayList);
        if (zza2.size() > 0) {
            zzo(zzbphVar);
        }
        zzZ(zza2);
    }

    @Override // com.google.android.gms.internal.zzbop.zza
    public void zzax(Map<String, Object> map) {
        for (Map.Entry<String, Object> entry : map.entrySet()) {
            zzb(zzbrq.zzja(entry.getKey()), entry.getValue());
        }
    }

    public void zzb(final zzbph zzbphVar, final zzbsc zzbscVar, final d.a aVar) {
        this.zzcdg.zzb(zzbphVar.zzYR(), zzbscVar.getValue(true), new zzbos() { // from class: com.google.android.gms.internal.zzbpj.23
            @Override // com.google.android.gms.internal.zzbos
            public void zzar(String str, String str2) {
                c zzas = zzbpj.zzas(str, str2);
                zzbpj.this.zza("onDisconnect().setValue", zzbphVar, zzas);
                if (zzas == null) {
                    zzbpj.this.zzcep.zzh(zzbphVar, zzbscVar);
                }
                zzbpj.this.zza(aVar, zzas, zzbphVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.zzbop.zza
    public void zzbc(boolean z) {
        zza(zzboz.zzcdQ, Boolean.valueOf(z));
    }

    public void zze(zzbpc zzbpcVar) {
        zzZ(zzboz.zzcdO.equals(zzbpcVar.zzYn().zzWM().zzYS()) ? this.zzcez.zzh(zzbpcVar) : this.zzceA.zzh(zzbpcVar));
    }

    public void zzf(zzbpc zzbpcVar) {
        zzbrq zzYS = zzbpcVar.zzYn().zzWM().zzYS();
        zzZ((zzYS == null || !zzYS.equals(zzboz.zzcdO)) ? this.zzceA.zzg(zzbpcVar) : this.zzcez.zzg(zzbpcVar));
    }

    public void zzq(Runnable runnable) {
        this.zzcet.zzYu();
        this.zzcet.zzYA().zzq(runnable);
    }

    public void zzs(Runnable runnable) {
        this.zzcet.zzYu();
        this.zzcet.zzYB().zzs(runnable);
    }
}
