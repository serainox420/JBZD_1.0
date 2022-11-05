package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbqq;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzboy implements Iterable<Map.Entry<zzbph, zzbsc>> {
    static final /* synthetic */ boolean $assertionsDisabled;
    private static final zzboy zzcdJ;
    private final zzbqq<zzbsc> zzcdK;

    static {
        $assertionsDisabled = !zzboy.class.desiredAssertionStatus();
        zzcdJ = new zzboy(new zzbqq(null));
    }

    private zzboy(zzbqq<zzbsc> zzbqqVar) {
        this.zzcdK = zzbqqVar;
    }

    public static zzboy zzYo() {
        return zzcdJ;
    }

    private zzbsc zza(zzbph zzbphVar, zzbqq<zzbsc> zzbqqVar, zzbsc zzbscVar) {
        zzbsc zza;
        zzbsc zzbscVar2;
        if (zzbqqVar.getValue() != null) {
            return zzbscVar.zzl(zzbphVar, zzbqqVar.getValue());
        }
        zzbsc zzbscVar3 = null;
        Iterator<Map.Entry<zzbrq, zzbqq<zzbsc>>> it = zzbqqVar.zzZO().iterator();
        zzbsc zzbscVar4 = zzbscVar;
        while (it.hasNext()) {
            Map.Entry<zzbrq, zzbqq<zzbsc>> next = it.next();
            zzbqq<zzbsc> value = next.getValue();
            zzbrq key = next.getKey();
            if (!key.zzaaK()) {
                zza = zza(zzbphVar.zza(key), value, zzbscVar4);
                zzbscVar2 = zzbscVar3;
            } else if (!$assertionsDisabled && value.getValue() == null) {
                throw new AssertionError("Priority writes must always be leaf nodes");
            } else {
                zzbscVar2 = value.getValue();
                zza = zzbscVar4;
            }
            zzbscVar3 = zzbscVar2;
            zzbscVar4 = zza;
        }
        return (zzbscVar4.zzO(zzbphVar).isEmpty() || zzbscVar3 == null) ? zzbscVar4 : zzbscVar4.zzl(zzbphVar.zza(zzbrq.zzaaI()), zzbscVar3);
    }

    public static zzboy zzaB(Map<String, Object> map) {
        zzbqq zzZN = zzbqq.zzZN();
        Iterator<Map.Entry<String, Object>> it = map.entrySet().iterator();
        while (true) {
            zzbqq zzbqqVar = zzZN;
            if (it.hasNext()) {
                Map.Entry<String, Object> next = it.next();
                zzZN = zzbqqVar.zza(new zzbph(next.getKey()), new zzbqq(zzbsd.zzat(next.getValue())));
            } else {
                return new zzboy(zzbqqVar);
            }
        }
    }

    public static zzboy zzaC(Map<zzbph, zzbsc> map) {
        zzbqq zzZN = zzbqq.zzZN();
        Iterator<Map.Entry<zzbph, zzbsc>> it = map.entrySet().iterator();
        while (true) {
            zzbqq zzbqqVar = zzZN;
            if (it.hasNext()) {
                Map.Entry<zzbph, zzbsc> next = it.next();
                zzZN = zzbqqVar.zza(next.getKey(), new zzbqq(next.getValue()));
            } else {
                return new zzboy(zzbqqVar);
            }
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == getClass()) {
            return ((zzboy) obj).zzbe(true).equals(zzbe(true));
        }
        return false;
    }

    public int hashCode() {
        return zzbe(true).hashCode();
    }

    public boolean isEmpty() {
        return this.zzcdK.isEmpty();
    }

    @Override // java.lang.Iterable
    public Iterator<Map.Entry<zzbph, zzbsc>> iterator() {
        return this.zzcdK.iterator();
    }

    public String toString() {
        String valueOf = String.valueOf(zzbe(true).toString());
        return new StringBuilder(String.valueOf(valueOf).length() + 15).append("CompoundWrite{").append(valueOf).append("}").toString();
    }

    public zzbsc zzYp() {
        return this.zzcdK.getValue();
    }

    public List<zzbsb> zzYq() {
        ArrayList arrayList = new ArrayList();
        if (this.zzcdK.getValue() != null) {
            for (zzbsb zzbsbVar : this.zzcdK.getValue()) {
                arrayList.add(new zzbsb(zzbsbVar.zzabj(), zzbsbVar.zzWI()));
            }
        } else {
            Iterator<Map.Entry<zzbrq, zzbqq<zzbsc>>> it = this.zzcdK.zzZO().iterator();
            while (it.hasNext()) {
                Map.Entry<zzbrq, zzbqq<zzbsc>> next = it.next();
                zzbqq<zzbsc> value = next.getValue();
                if (value.getValue() != null) {
                    arrayList.add(new zzbsb(next.getKey(), value.getValue()));
                }
            }
        }
        return arrayList;
    }

    public Map<zzbrq, zzboy> zzYr() {
        HashMap hashMap = new HashMap();
        Iterator<Map.Entry<zzbrq, zzbqq<zzbsc>>> it = this.zzcdK.zzZO().iterator();
        while (it.hasNext()) {
            Map.Entry<zzbrq, zzbqq<zzbsc>> next = it.next();
            hashMap.put(next.getKey(), new zzboy(next.getValue()));
        }
        return hashMap;
    }

    public zzboy zza(zzbrq zzbrqVar, zzbsc zzbscVar) {
        return zze(new zzbph(zzbrqVar), zzbscVar);
    }

    public zzboy zzb(final zzbph zzbphVar, zzboy zzboyVar) {
        return (zzboy) zzboyVar.zzcdK.zzb((zzbqq<zzbsc>) this, new zzbqq.zza<zzbsc, zzboy>(this) { // from class: com.google.android.gms.internal.zzboy.1
            @Override // com.google.android.gms.internal.zzbqq.zza
            public zzboy zza(zzbph zzbphVar2, zzbsc zzbscVar, zzboy zzboyVar2) {
                return zzboyVar2.zze(zzbphVar.zzh(zzbphVar2), zzbscVar);
            }
        });
    }

    public zzbsc zzb(zzbsc zzbscVar) {
        return zza(zzbph.zzYP(), this.zzcdK, zzbscVar);
    }

    public Map<String, Object> zzbe(final boolean z) {
        final HashMap hashMap = new HashMap();
        this.zzcdK.zza(new zzbqq.zza<zzbsc, Void>(this) { // from class: com.google.android.gms.internal.zzboy.2
            @Override // com.google.android.gms.internal.zzbqq.zza
            public Void zza(zzbph zzbphVar, zzbsc zzbscVar, Void r6) {
                hashMap.put(zzbphVar.zzYQ(), zzbscVar.getValue(z));
                return null;
            }
        });
        return hashMap;
    }

    public zzboy zzd(zzbph zzbphVar) {
        return zzbphVar.isEmpty() ? zzcdJ : new zzboy(this.zzcdK.zza(zzbphVar, zzbqq.zzZN()));
    }

    public zzboy zze(zzbph zzbphVar, zzbsc zzbscVar) {
        if (zzbphVar.isEmpty()) {
            return new zzboy(new zzbqq(zzbscVar));
        }
        zzbph zzG = this.zzcdK.zzG(zzbphVar);
        if (zzG == null) {
            return new zzboy(this.zzcdK.zza(zzbphVar, new zzbqq<>(zzbscVar)));
        }
        zzbph zza = zzbph.zza(zzG, zzbphVar);
        zzbsc zzK = this.zzcdK.zzK(zzG);
        zzbrq zzYV = zza.zzYV();
        if (zzYV != null && zzYV.zzaaK() && zzK.zzO(zza.zzYU()).isEmpty()) {
            return this;
        }
        return new zzboy(this.zzcdK.zzb(zzG, (zzbph) zzK.zzl(zza, zzbscVar)));
    }

    public boolean zze(zzbph zzbphVar) {
        return zzf(zzbphVar) != null;
    }

    public zzbsc zzf(zzbph zzbphVar) {
        zzbph zzG = this.zzcdK.zzG(zzbphVar);
        if (zzG != null) {
            return this.zzcdK.zzK(zzG).zzO(zzbph.zza(zzG, zzbphVar));
        }
        return null;
    }

    public zzboy zzg(zzbph zzbphVar) {
        if (zzbphVar.isEmpty()) {
            return this;
        }
        zzbsc zzf = zzf(zzbphVar);
        return zzf != null ? new zzboy(new zzbqq(zzf)) : new zzboy(this.zzcdK.zzI(zzbphVar));
    }
}
