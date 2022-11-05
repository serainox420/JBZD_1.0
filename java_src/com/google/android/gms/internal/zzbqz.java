package com.google.android.gms.internal;

import com.google.android.gms.internal.zzbqy;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
/* loaded from: classes2.dex */
public class zzbqz {
    private final zzbrc zzchZ;
    private final zzbrw zzcia;

    public zzbqz(zzbrc zzbrcVar) {
        this.zzchZ = zzbrcVar;
        this.zzcia = zzbrcVar.zzaaj();
    }

    private zzbqx zza(zzbqw zzbqwVar, zzbpc zzbpcVar, zzbrx zzbrxVar) {
        if (!zzbqwVar.zzZV().equals(zzbqy.zza.VALUE) && !zzbqwVar.zzZV().equals(zzbqy.zza.CHILD_REMOVED)) {
            zzbqwVar = zzbqwVar.zzg(zzbrxVar.zza(zzbqwVar.zzZU(), zzbqwVar.zzZS().zzWI(), this.zzcia));
        }
        return zzbpcVar.zza(zzbqwVar, this.zzchZ);
    }

    private void zza(List<zzbqx> list, zzbqy.zza zzaVar, List<zzbqw> list2, List<zzbpc> list3, zzbrx zzbrxVar) {
        ArrayList<zzbqw> arrayList = new ArrayList();
        for (zzbqw zzbqwVar : list2) {
            if (zzbqwVar.zzZV().equals(zzaVar)) {
                arrayList.add(zzbqwVar);
            }
        }
        Collections.sort(arrayList, zzaaa());
        for (zzbqw zzbqwVar2 : arrayList) {
            for (zzbpc zzbpcVar : list3) {
                if (zzbpcVar.zza(zzaVar)) {
                    list.add(zza(zzbqwVar2, zzbpcVar, zzbrxVar));
                }
            }
        }
    }

    private Comparator<zzbqw> zzaaa() {
        return new Comparator<zzbqw>() { // from class: com.google.android.gms.internal.zzbqz.1
            static final /* synthetic */ boolean $assertionsDisabled;

            static {
                $assertionsDisabled = !zzbqz.class.desiredAssertionStatus();
            }

            @Override // java.util.Comparator
            /* renamed from: zza */
            public int compare(zzbqw zzbqwVar, zzbqw zzbqwVar2) {
                if ($assertionsDisabled || !(zzbqwVar.zzZU() == null || zzbqwVar2.zzZU() == null)) {
                    return zzbqz.this.zzcia.compare(new zzbsb(zzbqwVar.zzZU(), zzbqwVar.zzZS().zzWI()), new zzbsb(zzbqwVar2.zzZU(), zzbqwVar2.zzZS().zzWI()));
                }
                throw new AssertionError();
            }
        };
    }

    public List<zzbqx> zza(List<zzbqw> list, zzbrx zzbrxVar, List<zzbpc> list2) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (zzbqw zzbqwVar : list) {
            if (zzbqwVar.zzZV().equals(zzbqy.zza.CHILD_CHANGED) && this.zzcia.zza(zzbqwVar.zzZX().zzWI(), zzbqwVar.zzZS().zzWI())) {
                arrayList2.add(zzbqw.zzc(zzbqwVar.zzZU(), zzbqwVar.zzZS()));
            }
        }
        zza(arrayList, zzbqy.zza.CHILD_REMOVED, list, list2, zzbrxVar);
        zza(arrayList, zzbqy.zza.CHILD_ADDED, list, list2, zzbrxVar);
        zza(arrayList, zzbqy.zza.CHILD_MOVED, arrayList2, list2, zzbrxVar);
        zza(arrayList, zzbqy.zza.CHILD_CHANGED, list, list2, zzbrxVar);
        zza(arrayList, zzbqy.zza.VALUE, list, list2, zzbrxVar);
        return arrayList;
    }
}
