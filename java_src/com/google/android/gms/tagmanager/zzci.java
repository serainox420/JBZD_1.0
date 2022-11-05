package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzak;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public abstract class zzci extends zzam {
    private static final String zzbGf = com.google.android.gms.internal.zzai.ARG0.toString();
    private static final String zzbHc = com.google.android.gms.internal.zzai.ARG1.toString();

    public zzci(String str) {
        super(str, zzbGf, zzbHc);
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public /* bridge */ /* synthetic */ String zzQL() {
        return super.zzQL();
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public /* bridge */ /* synthetic */ Set zzQM() {
        return super.zzQM();
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public boolean zzQb() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public zzak.zza zzZ(Map<String, zzak.zza> map) {
        for (zzak.zza zzaVar : map.values()) {
            if (zzaVar == zzdl.zzRR()) {
                return zzdl.zzR(false);
            }
        }
        zzak.zza zzaVar2 = map.get(zzbGf);
        zzak.zza zzaVar3 = map.get(zzbHc);
        return zzdl.zzR(Boolean.valueOf((zzaVar2 == null || zzaVar3 == null) ? false : zza(zzaVar2, zzaVar3, map)));
    }

    protected abstract boolean zza(zzak.zza zzaVar, zzak.zza zzaVar2, Map<String, zzak.zza> map);
}
