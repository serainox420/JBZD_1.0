package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzak;
import java.util.Map;
/* loaded from: classes2.dex */
class zzbq extends zzam {
    private static final String ID = com.google.android.gms.internal.zzah.LOWERCASE_STRING.toString();
    private static final String zzbGf = com.google.android.gms.internal.zzai.ARG0.toString();

    public zzbq() {
        super(ID, zzbGf);
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public boolean zzQb() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public zzak.zza zzZ(Map<String, zzak.zza> map) {
        return zzdl.zzR(zzdl.zze(map.get(zzbGf)).toLowerCase());
    }
}
