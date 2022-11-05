package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzbpy {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final zzbqr<zzbpv> zzcgz;
    private zzboy zzcgw = zzboy.zzYo();
    private List<zzbpv> zzcgx = new ArrayList();
    private Long zzcgy = -1L;

    static {
        $assertionsDisabled = !zzbpy.class.desiredAssertionStatus();
        zzcgz = new zzbqr<zzbpv>() { // from class: com.google.android.gms.internal.zzbpy.2
            @Override // com.google.android.gms.internal.zzbqr
            /* renamed from: zza */
            public boolean zzas(zzbpv zzbpvVar) {
                return zzbpvVar.isVisible();
            }
        };
    }

    private void zzZt() {
        this.zzcgw = zza(this.zzcgx, zzcgz, zzbph.zzYP());
        if (this.zzcgx.size() > 0) {
            this.zzcgy = Long.valueOf(this.zzcgx.get(this.zzcgx.size() - 1).zzZm());
        } else {
            this.zzcgy = -1L;
        }
    }

    private static zzboy zza(List<zzbpv> list, zzbqr<zzbpv> zzbqrVar, zzbph zzbphVar) {
        zzboy zzYo = zzboy.zzYo();
        Iterator<zzbpv> it = list.iterator();
        while (true) {
            zzboy zzboyVar = zzYo;
            if (it.hasNext()) {
                zzbpv next = it.next();
                if (zzbqrVar.zzas(next)) {
                    zzbph zzWM = next.zzWM();
                    if (next.zzZp()) {
                        if (zzbphVar.zzi(zzWM)) {
                            zzboyVar = zzboyVar.zze(zzbph.zza(zzbphVar, zzWM), next.zzZn());
                        } else if (zzWM.zzi(zzbphVar)) {
                            zzboyVar = zzboyVar.zze(zzbph.zzYP(), next.zzZn().zzO(zzbph.zza(zzWM, zzbphVar)));
                        }
                    } else if (zzbphVar.zzi(zzWM)) {
                        zzboyVar = zzboyVar.zzb(zzbph.zza(zzbphVar, zzWM), next.zzZo());
                    } else if (zzWM.zzi(zzbphVar)) {
                        zzbph zza = zzbph.zza(zzWM, zzbphVar);
                        if (zza.isEmpty()) {
                            zzboyVar = zzboyVar.zzb(zzbph.zzYP(), next.zzZo());
                        } else {
                            zzbsc zzf = next.zzZo().zzf(zza);
                            if (zzf != null) {
                                zzboyVar = zzboyVar.zze(zzbph.zzYP(), zzf);
                            }
                        }
                    }
                }
                zzYo = zzboyVar;
            } else {
                return zzboyVar;
            }
        }
    }

    private boolean zza(zzbpv zzbpvVar, zzbph zzbphVar) {
        if (zzbpvVar.zzZp()) {
            return zzbpvVar.zzWM().zzi(zzbphVar);
        }
        Iterator<Map.Entry<zzbph, zzbsc>> it = zzbpvVar.zzZo().iterator();
        while (it.hasNext()) {
            if (zzbpvVar.zzWM().zzh(it.next().getKey()).zzi(zzbphVar)) {
                return true;
            }
        }
        return false;
    }

    public List<zzbpv> zzZs() {
        ArrayList arrayList = new ArrayList(this.zzcgx);
        this.zzcgw = zzboy.zzYo();
        this.zzcgx = new ArrayList();
        return arrayList;
    }

    public zzbsb zza(zzbph zzbphVar, zzbsc zzbscVar, zzbsb zzbsbVar, boolean z, zzbrw zzbrwVar) {
        zzbsb zzbsbVar2 = null;
        zzboy zzg = this.zzcgw.zzg(zzbphVar);
        zzbsc zzf = zzg.zzf(zzbph.zzYP());
        if (zzf == null) {
            if (zzbscVar != null) {
                zzf = zzg.zzb(zzbscVar);
            }
            return zzbsbVar2;
        }
        for (zzbsb zzbsbVar3 : zzf) {
            if (zzbrwVar.zza(zzbsbVar3, zzbsbVar, z) <= 0 || (zzbsbVar2 != null && zzbrwVar.zza(zzbsbVar3, zzbsbVar2, z) >= 0)) {
                zzbsbVar3 = zzbsbVar2;
            }
            zzbsbVar2 = zzbsbVar3;
        }
        return zzbsbVar2;
    }

    public zzbsc zza(zzbph zzbphVar, zzbph zzbphVar2, zzbsc zzbscVar, zzbsc zzbscVar2) {
        if (!$assertionsDisabled && zzbscVar == null && zzbscVar2 == null) {
            throw new AssertionError("Either existingEventSnap or existingServerSnap must exist");
        }
        zzbph zzh = zzbphVar.zzh(zzbphVar2);
        if (this.zzcgw.zze(zzh)) {
            return null;
        }
        zzboy zzg = this.zzcgw.zzg(zzh);
        return zzg.isEmpty() ? zzbscVar2.zzO(zzbphVar2) : zzg.zzb(zzbscVar2.zzO(zzbphVar2));
    }

    public zzbsc zza(zzbph zzbphVar, zzbrq zzbrqVar, zzbqu zzbquVar) {
        zzbph zza = zzbphVar.zza(zzbrqVar);
        zzbsc zzf = this.zzcgw.zzf(zza);
        if (zzf != null) {
            return zzf;
        }
        if (!zzbquVar.zzf(zzbrqVar)) {
            return null;
        }
        return this.zzcgw.zzg(zza).zzb(zzbquVar.zzWI().zzm(zzbrqVar));
    }

    public zzbsc zza(final zzbph zzbphVar, zzbsc zzbscVar, final List<Long> list, final boolean z) {
        if (list.isEmpty() && !z) {
            zzbsc zzf = this.zzcgw.zzf(zzbphVar);
            if (zzf != null) {
                return zzf;
            }
            zzboy zzg = this.zzcgw.zzg(zzbphVar);
            if (zzg.isEmpty()) {
                return zzbscVar;
            }
            if (zzbscVar == null && !zzg.zze(zzbph.zzYP())) {
                return null;
            }
            if (zzbscVar == null) {
                zzbscVar = zzbrv.zzaaZ();
            }
            return zzg.zzb(zzbscVar);
        }
        zzboy zzg2 = this.zzcgw.zzg(zzbphVar);
        if (!z && zzg2.isEmpty()) {
            return zzbscVar;
        }
        if (!z && zzbscVar == null && !zzg2.zze(zzbph.zzYP())) {
            return null;
        }
        zzboy zza = zza(this.zzcgx, new zzbqr<zzbpv>(this) { // from class: com.google.android.gms.internal.zzbpy.1
            @Override // com.google.android.gms.internal.zzbqr
            /* renamed from: zza */
            public boolean zzas(zzbpv zzbpvVar) {
                return (zzbpvVar.isVisible() || z) && !list.contains(Long.valueOf(zzbpvVar.zzZm())) && (zzbpvVar.zzWM().zzi(zzbphVar) || zzbphVar.zzi(zzbpvVar.zzWM()));
            }
        }, zzbphVar);
        if (zzbscVar == null) {
            zzbscVar = zzbrv.zzaaZ();
        }
        return zza.zzb(zzbscVar);
    }

    public void zza(zzbph zzbphVar, zzboy zzboyVar, Long l) {
        if ($assertionsDisabled || l.longValue() > this.zzcgy.longValue()) {
            this.zzcgx.add(new zzbpv(l.longValue(), zzbphVar, zzboyVar));
            this.zzcgw = this.zzcgw.zzb(zzbphVar, zzboyVar);
            this.zzcgy = l;
            return;
        }
        throw new AssertionError();
    }

    public void zza(zzbph zzbphVar, zzbsc zzbscVar, Long l, boolean z) {
        if ($assertionsDisabled || l.longValue() > this.zzcgy.longValue()) {
            this.zzcgx.add(new zzbpv(l.longValue(), zzbphVar, zzbscVar, z));
            if (z) {
                this.zzcgw = this.zzcgw.zze(zzbphVar, zzbscVar);
            }
            this.zzcgy = l;
            return;
        }
        throw new AssertionError();
    }

    public zzbpv zzaO(long j) {
        for (zzbpv zzbpvVar : this.zzcgx) {
            if (zzbpvVar.zzZm() == j) {
                return zzbpvVar;
            }
        }
        return null;
    }

    public boolean zzaP(long j) {
        boolean z;
        boolean z2;
        zzbpv zzbpvVar = null;
        Iterator<zzbpv> it = this.zzcgx.iterator();
        int i = 0;
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            zzbpv next = it.next();
            if (next.zzZm() == j) {
                zzbpvVar = next;
                break;
            }
            i++;
        }
        if ($assertionsDisabled || zzbpvVar != null) {
            this.zzcgx.remove(zzbpvVar);
            boolean isVisible = zzbpvVar.isVisible();
            int size = this.zzcgx.size() - 1;
            boolean z3 = false;
            while (isVisible && size >= 0) {
                zzbpv zzbpvVar2 = this.zzcgx.get(size);
                if (zzbpvVar2.isVisible()) {
                    if (size >= i && zza(zzbpvVar2, zzbpvVar.zzWM())) {
                        z = z3;
                        z2 = false;
                    } else if (zzbpvVar.zzWM().zzi(zzbpvVar2.zzWM())) {
                        z = true;
                        z2 = isVisible;
                    }
                    size--;
                    isVisible = z2;
                    z3 = z;
                }
                z = z3;
                z2 = isVisible;
                size--;
                isVisible = z2;
                z3 = z;
            }
            if (!isVisible) {
                return false;
            }
            if (z3) {
                zzZt();
                return true;
            } else if (zzbpvVar.zzZp()) {
                this.zzcgw = this.zzcgw.zzd(zzbpvVar.zzWM());
                return true;
            } else {
                Iterator<Map.Entry<zzbph, zzbsc>> it2 = zzbpvVar.zzZo().iterator();
                while (it2.hasNext()) {
                    this.zzcgw = this.zzcgw.zzd(zzbpvVar.zzWM().zzh(it2.next().getKey()));
                }
                return true;
            }
        }
        throw new AssertionError("removeWrite called with nonexistent writeId");
    }

    public zzbsc zzj(zzbph zzbphVar, zzbsc zzbscVar) {
        zzbsc zzbscVar2;
        zzbsc zzaaZ = zzbrv.zzaaZ();
        zzbsc zzf = this.zzcgw.zzf(zzbphVar);
        if (zzf == null) {
            zzboy zzg = this.zzcgw.zzg(zzbphVar);
            Iterator<zzbsb> it = zzbscVar.iterator();
            while (true) {
                zzbscVar2 = zzaaZ;
                if (!it.hasNext()) {
                    break;
                }
                zzbsb next = it.next();
                zzaaZ = zzbscVar2.zze(next.zzabj(), zzg.zzg(new zzbph(next.zzabj())).zzb(next.zzWI()));
            }
            for (zzbsb zzbsbVar : zzg.zzYq()) {
                zzbscVar2 = zzbscVar2.zze(zzbsbVar.zzabj(), zzbsbVar.zzWI());
            }
            return zzbscVar2;
        } else if (zzf.zzaaN()) {
            return zzaaZ;
        } else {
            Iterator<zzbsb> it2 = zzf.iterator();
            while (true) {
                zzbsc zzbscVar3 = zzaaZ;
                if (!it2.hasNext()) {
                    return zzbscVar3;
                }
                zzbsb next2 = it2.next();
                zzaaZ = zzbscVar3.zze(next2.zzabj(), next2.zzWI());
            }
        }
    }

    public zzbpz zzu(zzbph zzbphVar) {
        return new zzbpz(zzbphVar, this);
    }

    public zzbsc zzv(zzbph zzbphVar) {
        return this.zzcgw.zzf(zzbphVar);
    }
}
