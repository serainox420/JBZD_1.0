package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.zzak;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zze extends zzam {
    private static final String ID = com.google.android.gms.internal.zzah.ADWORDS_CLICK_REFERRER.toString();
    private static final String zzbEM = com.google.android.gms.internal.zzai.COMPONENT.toString();
    private static final String zzbEN = com.google.android.gms.internal.zzai.CONVERSION_ID.toString();
    private final Context zzqn;

    public zze(Context context) {
        super(ID, zzbEN);
        this.zzqn = context;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public boolean zzQb() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public zzak.zza zzZ(Map<String, zzak.zza> map) {
        zzak.zza zzaVar = map.get(zzbEN);
        if (zzaVar == null) {
            return zzdl.zzRR();
        }
        String zze = zzdl.zze(zzaVar);
        zzak.zza zzaVar2 = map.get(zzbEM);
        String zzr = zzbf.zzr(this.zzqn, zze, zzaVar2 != null ? zzdl.zze(zzaVar2) : null);
        return zzr != null ? zzdl.zzR(zzr) : zzdl.zzRR();
    }
}
