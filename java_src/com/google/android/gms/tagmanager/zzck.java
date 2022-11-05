package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzak;
import java.util.Map;
/* loaded from: classes2.dex */
class zzck extends zzam {
    private static final String ID = com.google.android.gms.internal.zzah.RANDOM.toString();
    private static final String zzbHl = com.google.android.gms.internal.zzai.MIN.toString();
    private static final String zzbHm = com.google.android.gms.internal.zzai.MAX.toString();

    public zzck() {
        super(ID, new String[0]);
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public boolean zzQb() {
        return false;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public zzak.zza zzZ(Map<String, zzak.zza> map) {
        double d;
        double d2;
        zzak.zza zzaVar = map.get(zzbHl);
        zzak.zza zzaVar2 = map.get(zzbHm);
        if (zzaVar != null && zzaVar != zzdl.zzRR() && zzaVar2 != null && zzaVar2 != zzdl.zzRR()) {
            zzdk zzf = zzdl.zzf(zzaVar);
            zzdk zzf2 = zzdl.zzf(zzaVar2);
            if (zzf != zzdl.zzRP() && zzf2 != zzdl.zzRP()) {
                double doubleValue = zzf.doubleValue();
                d = zzf2.doubleValue();
                if (doubleValue <= d) {
                    d2 = doubleValue;
                    return zzdl.zzR(Long.valueOf(Math.round(((d - d2) * Math.random()) + d2)));
                }
            }
        }
        d = 2.147483647E9d;
        d2 = 0.0d;
        return zzdl.zzR(Long.valueOf(Math.round(((d - d2) * Math.random()) + d2)));
    }
}
