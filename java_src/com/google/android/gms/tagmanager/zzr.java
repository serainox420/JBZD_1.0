package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzak;
import java.util.Map;
/* loaded from: classes2.dex */
class zzr extends zzam {
    private static final String ID = com.google.android.gms.internal.zzah.CONTAINER_VERSION.toString();
    private final String zzavB;

    public zzr(String str) {
        super(ID, new String[0]);
        this.zzavB = str;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public boolean zzQb() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public zzak.zza zzZ(Map<String, zzak.zza> map) {
        return this.zzavB == null ? zzdl.zzRR() : zzdl.zzR(this.zzavB);
    }
}
