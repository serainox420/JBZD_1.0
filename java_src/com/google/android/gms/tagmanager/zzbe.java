package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.zzak;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzbe extends zzam {
    private static final String ID = com.google.android.gms.internal.zzah.INSTALL_REFERRER.toString();
    private static final String zzbEM = com.google.android.gms.internal.zzai.COMPONENT.toString();
    private final Context zzqn;

    public zzbe(Context context) {
        super(ID, new String[0]);
        this.zzqn = context;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public boolean zzQb() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public zzak.zza zzZ(Map<String, zzak.zza> map) {
        String zzO = zzbf.zzO(this.zzqn, map.get(zzbEM) != null ? zzdl.zze(map.get(zzbEM)) : null);
        return zzO != null ? zzdl.zzR(zzO) : zzdl.zzRR();
    }
}
