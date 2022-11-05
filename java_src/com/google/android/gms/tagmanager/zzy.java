package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzak;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzy extends zzdj {
    private static final String ID = com.google.android.gms.internal.zzah.DATA_LAYER_WRITE.toString();
    private static final String VALUE = com.google.android.gms.internal.zzai.VALUE.toString();
    private static final String zzbFV = com.google.android.gms.internal.zzai.CLEAR_PERSISTENT_DATA_LAYER_PREFIX.toString();
    private final DataLayer zzbEV;

    public zzy(DataLayer dataLayer) {
        super(ID, VALUE);
        this.zzbEV = dataLayer;
    }

    private void zza(zzak.zza zzaVar) {
        String zze;
        if (zzaVar == null || zzaVar == zzdl.zzRL() || (zze = zzdl.zze(zzaVar)) == zzdl.zzRQ()) {
            return;
        }
        this.zzbEV.zzha(zze);
    }

    private void zzb(zzak.zza zzaVar) {
        if (zzaVar == null || zzaVar == zzdl.zzRL()) {
            return;
        }
        Object zzj = zzdl.zzj(zzaVar);
        if (!(zzj instanceof List)) {
            return;
        }
        for (Object obj : (List) zzj) {
            if (obj instanceof Map) {
                this.zzbEV.push((Map) obj);
            }
        }
    }

    @Override // com.google.android.gms.tagmanager.zzdj
    public void zzab(Map<String, zzak.zza> map) {
        zzb(map.get(VALUE));
        zza(map.get(zzbFV));
    }
}
