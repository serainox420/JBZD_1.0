package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbqy;
import com.google.android.gms.internal.zzbrd;
import com.google.firebase.database.c;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzbpq {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final Map<zzbrb, zzbrd> zzcfI = new HashMap();
    private final zzbql zzcfJ;

    static {
        $assertionsDisabled = !zzbpq.class.desiredAssertionStatus();
    }

    public zzbpq(zzbql zzbqlVar) {
        this.zzcfJ = zzbqlVar;
    }

    private List<zzbqx> zza(zzbrd zzbrdVar, zzbqe zzbqeVar, zzbpz zzbpzVar, zzbsc zzbscVar) {
        zzbrd.zza zzb = zzbrdVar.zzb(zzbqeVar, zzbpzVar, zzbscVar);
        if (!zzbrdVar.zzaar().zzaan()) {
            HashSet hashSet = new HashSet();
            HashSet hashSet2 = new HashSet();
            for (zzbqw zzbqwVar : zzb.zzciv) {
                zzbqy.zza zzZV = zzbqwVar.zzZV();
                if (zzZV == zzbqy.zza.CHILD_ADDED) {
                    hashSet2.add(zzbqwVar.zzZU());
                } else if (zzZV == zzbqy.zza.CHILD_REMOVED) {
                    hashSet.add(zzbqwVar.zzZU());
                }
            }
            if (!hashSet2.isEmpty() || !hashSet.isEmpty()) {
                this.zzcfJ.zza(zzbrdVar.zzaar(), hashSet2, hashSet);
            }
        }
        return zzb.zzciu;
    }

    public boolean isEmpty() {
        return this.zzcfI.isEmpty();
    }

    public List<zzbrd> zzZg() {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<zzbrb, zzbrd> entry : this.zzcfI.entrySet()) {
            zzbrd value = entry.getValue();
            if (!value.zzaar().zzaan()) {
                arrayList.add(value);
            }
        }
        return arrayList;
    }

    public boolean zzZh() {
        return zzZi() != null;
    }

    public zzbrd zzZi() {
        for (Map.Entry<zzbrb, zzbrd> entry : this.zzcfI.entrySet()) {
            zzbrd value = entry.getValue();
            if (value.zzaar().zzaan()) {
                return value;
            }
        }
        return null;
    }

    public zzbtb<List<zzbrc>, List<zzbqy>> zza(zzbrc zzbrcVar, zzbpc zzbpcVar, c cVar) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        boolean zzZh = zzZh();
        if (zzbrcVar.isDefault()) {
            Iterator<Map.Entry<zzbrb, zzbrd>> it = this.zzcfI.entrySet().iterator();
            while (it.hasNext()) {
                zzbrd value = it.next().getValue();
                arrayList2.addAll(value.zza(zzbpcVar, cVar));
                if (value.isEmpty()) {
                    it.remove();
                    if (!value.zzaar().zzaan()) {
                        arrayList.add(value.zzaar());
                    }
                }
            }
        } else {
            zzbrd zzbrdVar = this.zzcfI.get(zzbrcVar.zzaaq());
            if (zzbrdVar != null) {
                arrayList2.addAll(zzbrdVar.zza(zzbpcVar, cVar));
                if (zzbrdVar.isEmpty()) {
                    this.zzcfI.remove(zzbrcVar.zzaaq());
                    if (!zzbrdVar.zzaar().zzaan()) {
                        arrayList.add(zzbrdVar.zzaar());
                    }
                }
            }
        }
        if (zzZh && !zzZh()) {
            arrayList.add(zzbrc.zzN(zzbrcVar.zzWM()));
        }
        return new zzbtb<>(arrayList, arrayList2);
    }

    public List<zzbqx> zza(zzbpc zzbpcVar, zzbpz zzbpzVar, zzbqu zzbquVar) {
        boolean z;
        zzbrc zzYn = zzbpcVar.zzYn();
        zzbrd zzbrdVar = this.zzcfI.get(zzYn.zzaaq());
        if (zzbrdVar == null) {
            zzbsc zzc = zzbpzVar.zzc(zzbquVar.zzZQ() ? zzbquVar.zzWI() : null);
            if (zzc != null) {
                z = true;
            } else {
                zzc = zzbpzVar.zzd(zzbquVar.zzWI());
                z = false;
            }
            zzbrd zzbrdVar2 = new zzbrd(zzYn, new zzbre(new zzbqu(zzbrx.zza(zzc, zzYn.zzaaj()), z, false), zzbquVar));
            if (!zzYn.zzaan()) {
                HashSet hashSet = new HashSet();
                for (zzbsb zzbsbVar : zzbrdVar2.zzaat()) {
                    hashSet.add(zzbsbVar.zzabj());
                }
                this.zzcfJ.zza(zzYn, hashSet);
            }
            this.zzcfI.put(zzYn.zzaaq(), zzbrdVar2);
            zzbrdVar = zzbrdVar2;
        }
        zzbrdVar.zzb(zzbpcVar);
        return zzbrdVar.zzl(zzbpcVar);
    }

    public List<zzbqx> zza(zzbqe zzbqeVar, zzbpz zzbpzVar, zzbsc zzbscVar) {
        zzbrb zzZD = zzbqeVar.zzZy().zzZD();
        if (zzZD != null) {
            zzbrd zzbrdVar = this.zzcfI.get(zzZD);
            if (!$assertionsDisabled && zzbrdVar == null) {
                throw new AssertionError();
            }
            return zza(zzbrdVar, zzbqeVar, zzbpzVar, zzbscVar);
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<zzbrb, zzbrd> entry : this.zzcfI.entrySet()) {
            arrayList.addAll(zza(entry.getValue(), zzbqeVar, zzbpzVar, zzbscVar));
        }
        return arrayList;
    }

    public zzbrd zzb(zzbrc zzbrcVar) {
        return zzbrcVar.zzaan() ? zzZi() : this.zzcfI.get(zzbrcVar.zzaaq());
    }

    public boolean zzc(zzbrc zzbrcVar) {
        return zzb(zzbrcVar) != null;
    }

    public zzbsc zzs(zzbph zzbphVar) {
        for (zzbrd zzbrdVar : this.zzcfI.values()) {
            if (zzbrdVar.zzs(zzbphVar) != null) {
                return zzbrdVar.zzs(zzbphVar);
            }
        }
        return null;
    }
}
