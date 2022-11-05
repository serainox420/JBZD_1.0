package com.google.android.gms.internal;

import java.io.IOException;
import java.util.List;
/* loaded from: classes2.dex */
public class zzbme extends zzbvc<zzbmr> {
    private zzbuk zzbYe;

    public void zza(zzbuk zzbukVar) {
        this.zzbYe = (zzbuk) com.google.android.gms.common.internal.zzac.zzw(zzbukVar);
    }

    @Override // com.google.android.gms.internal.zzbvc
    public void zza(zzbwj zzbwjVar, zzbmr zzbmrVar) throws IOException {
        if (zzbmrVar == null) {
            zzbwjVar.zzadP();
            return;
        }
        zzbvc zzj = this.zzbYe.zzj(zzbmp.class);
        zzbwjVar.zzadL();
        List<zzbmp> zzVZ = zzbmrVar.zzVZ();
        int size = zzVZ != null ? zzVZ.size() : 0;
        for (int i = 0; i < size; i++) {
            zzj.zza(zzbwjVar, zzVZ.get(i));
        }
        zzbwjVar.zzadM();
    }

    @Override // com.google.android.gms.internal.zzbvc
    /* renamed from: zzc */
    public zzbmr zzb(zzbwh zzbwhVar) throws IOException {
        if (zzbwhVar.zzadF() == zzbwi.NULL) {
            zzbwhVar.nextNull();
            return null;
        }
        zzbmr zzbmrVar = new zzbmr();
        zzbvc zzj = this.zzbYe.zzj(zzbmp.class);
        zzbwhVar.beginArray();
        while (zzbwhVar.hasNext()) {
            zzbmrVar.zzVZ().add((zzbmp) zzj.zzb(zzbwhVar));
        }
        zzbwhVar.endArray();
        return zzbmrVar;
    }
}
