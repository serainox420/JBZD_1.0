package com.google.android.gms.internal;

import java.io.IOException;
import java.util.List;
/* loaded from: classes2.dex */
public class zzblw extends zzbvc<zzbml> {
    private zzbuk zzbYe;

    @Override // com.google.android.gms.internal.zzbvc
    /* renamed from: zza */
    public zzbml zzb(zzbwh zzbwhVar) throws IOException {
        if (zzbwhVar.zzadF() == zzbwi.NULL) {
            zzbwhVar.nextNull();
            return null;
        }
        zzbml zzbmlVar = new zzbml();
        zzbvc zzj = this.zzbYe.zzj(zzbmj.class);
        zzbwhVar.beginArray();
        while (zzbwhVar.hasNext()) {
            zzbmlVar.zzWb().add((zzbmj) zzj.zzb(zzbwhVar));
        }
        zzbwhVar.endArray();
        return zzbmlVar;
    }

    public void zza(zzbuk zzbukVar) {
        this.zzbYe = (zzbuk) com.google.android.gms.common.internal.zzac.zzw(zzbukVar);
    }

    @Override // com.google.android.gms.internal.zzbvc
    public void zza(zzbwj zzbwjVar, zzbml zzbmlVar) throws IOException {
        if (zzbmlVar == null) {
            zzbwjVar.zzadP();
            return;
        }
        zzbvc zzj = this.zzbYe.zzj(zzbmj.class);
        zzbwjVar.zzadL();
        List<zzbmj> zzWb = zzbmlVar.zzWb();
        int size = zzWb != null ? zzWb.size() : 0;
        for (int i = 0; i < size; i++) {
            zzj.zza(zzbwjVar, zzWb.get(i));
        }
        zzbwjVar.zzadM();
    }
}
