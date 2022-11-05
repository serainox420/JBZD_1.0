package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzak;
import java.util.Map;
/* loaded from: classes2.dex */
class zzdh extends zzam {
    private static final String ID = com.google.android.gms.internal.zzah.TIME.toString();

    public zzdh() {
        super(ID, new String[0]);
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public boolean zzQb() {
        return false;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public zzak.zza zzZ(Map<String, zzak.zza> map) {
        return zzdl.zzR(Long.valueOf(System.currentTimeMillis()));
    }
}
