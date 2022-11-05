package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzak;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzw extends zzam {
    private static final String ID = com.google.android.gms.internal.zzah.CUSTOM_VAR.toString();
    private static final String NAME = com.google.android.gms.internal.zzai.NAME.toString();
    private static final String zzbFK = com.google.android.gms.internal.zzai.DEFAULT_VALUE.toString();
    private final DataLayer zzbEV;

    public zzw(DataLayer dataLayer) {
        super(ID, NAME);
        this.zzbEV = dataLayer;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public boolean zzQb() {
        return false;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public zzak.zza zzZ(Map<String, zzak.zza> map) {
        Object obj = this.zzbEV.get(zzdl.zze(map.get(NAME)));
        if (obj == null) {
            zzak.zza zzaVar = map.get(zzbFK);
            return zzaVar != null ? zzaVar : zzdl.zzRR();
        }
        return zzdl.zzR(obj);
    }
}
