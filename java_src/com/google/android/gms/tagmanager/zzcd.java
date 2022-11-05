package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzak;
import java.util.Map;
/* loaded from: classes2.dex */
abstract class zzcd extends zzci {
    public zzcd(String str) {
        super(str);
    }

    @Override // com.google.android.gms.tagmanager.zzci
    protected boolean zza(zzak.zza zzaVar, zzak.zza zzaVar2, Map<String, zzak.zza> map) {
        zzdk zzf = zzdl.zzf(zzaVar);
        zzdk zzf2 = zzdl.zzf(zzaVar2);
        if (zzf == zzdl.zzRP() || zzf2 == zzdl.zzRP()) {
            return false;
        }
        return zza(zzf, zzf2, map);
    }

    protected abstract boolean zza(zzdk zzdkVar, zzdk zzdkVar2, Map<String, zzak.zza> map);
}
