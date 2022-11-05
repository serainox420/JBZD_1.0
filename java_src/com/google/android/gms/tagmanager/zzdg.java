package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzak;
import java.util.Map;
/* loaded from: classes2.dex */
abstract class zzdg extends zzci {
    public zzdg(String str) {
        super(str);
    }

    @Override // com.google.android.gms.tagmanager.zzci
    protected boolean zza(zzak.zza zzaVar, zzak.zza zzaVar2, Map<String, zzak.zza> map) {
        String zze = zzdl.zze(zzaVar);
        String zze2 = zzdl.zze(zzaVar2);
        if (zze == zzdl.zzRQ() || zze2 == zzdl.zzRQ()) {
            return false;
        }
        return zza(zze, zze2, map);
    }

    protected abstract boolean zza(String str, String str2, Map<String, zzak.zza> map);
}
