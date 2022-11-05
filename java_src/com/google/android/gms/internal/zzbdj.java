package com.google.android.gms.internal;

import java.util.Collections;
import java.util.Comparator;
/* loaded from: classes2.dex */
public class zzbdj extends zzbcs {

    /* loaded from: classes2.dex */
    class zza implements Comparator<zzbit<?>> {
        final /* synthetic */ zzbiw zzbLs;
        final /* synthetic */ zzbcd zzbLt;

        zza(zzbdj zzbdjVar, zzbiw zzbiwVar, zzbcd zzbcdVar) {
            this.zzbLs = zzbiwVar;
            this.zzbLt = zzbcdVar;
        }

        @Override // java.util.Comparator
        /* renamed from: zze */
        public int compare(zzbit<?> zzbitVar, zzbit<?> zzbitVar2) {
            if (zzbitVar == null) {
                return zzbitVar2 != null ? 1 : 0;
            } else if (zzbitVar2 == null) {
                return zzbitVar != null ? -1 : 0;
            } else {
                zzbit<?> zzb = ((zzbcq) this.zzbLs.zzTi()).zzb(this.zzbLt, zzbitVar, zzbitVar2);
                com.google.android.gms.common.internal.zzac.zzaw(zzb instanceof zzbiv);
                return (int) ((Double) ((zzbiv) zzb).zzTi()).doubleValue();
            }
        }
    }

    /* loaded from: classes2.dex */
    private static class zzb implements zzbcq {
        private zzb() {
        }

        @Override // com.google.android.gms.internal.zzbcq
        public zzbit<?> zzb(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
            return new zzbiv(Double.valueOf(zzbcr.zzd(zzbitVarArr[0]).compareTo(zzbcr.zzd(zzbitVarArr[1]))));
        }
    }

    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        zzbiw zzbiwVar;
        com.google.android.gms.common.internal.zzac.zzw(zzbitVarArr);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length == 1 || zzbitVarArr.length == 2);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[0] instanceof zzbiy);
        zzbiy zzbiyVar = (zzbiy) zzbitVarArr[0];
        if (zzbitVarArr.length == 2) {
            com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[1] instanceof zzbiw);
            zzbiwVar = (zzbiw) zzbitVarArr[1];
        } else {
            zzbiwVar = new zzbiw(new zzb());
        }
        Collections.sort(zzbiyVar.zzTi(), new zza(this, zzbiwVar, zzbcdVar));
        return zzbitVarArr[0];
    }
}
