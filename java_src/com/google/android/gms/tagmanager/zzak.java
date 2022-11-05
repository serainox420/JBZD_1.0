package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzak;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzak extends zzam {
    private static final String ID = com.google.android.gms.internal.zzah.EVENT.toString();
    private final zzcx zzbEW;

    public zzak(zzcx zzcxVar) {
        super(ID, new String[0]);
        this.zzbEW = zzcxVar;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public boolean zzQb() {
        return false;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public zzak.zza zzZ(Map<String, zzak.zza> map) {
        String zzRo = this.zzbEW.zzRo();
        return zzRo == null ? zzdl.zzRR() : zzdl.zzR(zzRo);
    }
}
