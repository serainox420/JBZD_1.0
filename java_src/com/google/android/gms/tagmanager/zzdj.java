package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzak;
import java.util.Map;
/* loaded from: classes2.dex */
abstract class zzdj extends zzam {
    public zzdj(String str, String... strArr) {
        super(str, strArr);
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public boolean zzQb() {
        return false;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public zzak.zza zzZ(Map<String, zzak.zza> map) {
        zzab(map);
        return zzdl.zzRR();
    }

    public abstract void zzab(Map<String, zzak.zza> map);
}
