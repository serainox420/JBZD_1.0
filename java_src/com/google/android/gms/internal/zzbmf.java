package com.google.android.gms.internal;

import java.io.IOException;
import java.util.List;
/* loaded from: classes2.dex */
public class zzbmf extends zzbvc<zzbmv> {
    private zzbuk zzbYe;

    public void zza(zzbuk zzbukVar) {
        this.zzbYe = (zzbuk) com.google.android.gms.common.internal.zzac.zzw(zzbukVar);
    }

    @Override // com.google.android.gms.internal.zzbvc
    public void zza(zzbwj zzbwjVar, zzbmv zzbmvVar) throws IOException {
        if (zzbmvVar == null) {
            zzbwjVar.zzadP();
            return;
        }
        zzbvc zzj = this.zzbYe.zzj(String.class);
        zzbwjVar.zzadL();
        List<String> zzWk = zzbmvVar.zzWk();
        int size = zzWk != null ? zzWk.size() : 0;
        for (int i = 0; i < size; i++) {
            zzj.zza(zzbwjVar, zzWk.get(i));
        }
        zzbwjVar.zzadM();
    }

    @Override // com.google.android.gms.internal.zzbvc
    /* renamed from: zzd */
    public zzbmv zzb(zzbwh zzbwhVar) throws IOException {
        if (zzbwhVar.zzadF() == zzbwi.NULL) {
            zzbwhVar.nextNull();
            return null;
        }
        zzbmv zzbmvVar = new zzbmv();
        zzbvc zzj = this.zzbYe.zzj(String.class);
        zzbwhVar.beginArray();
        while (zzbwhVar.hasNext()) {
            zzbmvVar.zzWk().add((String) zzj.zzb(zzbwhVar));
        }
        zzbwhVar.endArray();
        return zzbmvVar;
    }
}
