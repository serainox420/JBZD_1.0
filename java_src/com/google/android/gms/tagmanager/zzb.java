package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.zzak;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzb extends zzam {
    private static final String ID = com.google.android.gms.internal.zzah.ADVERTISER_ID.toString();
    private final zza zzbEL;

    public zzb(Context context) {
        this(zza.zzbS(context));
    }

    zzb(zza zzaVar) {
        super(ID, new String[0]);
        this.zzbEL = zzaVar;
        this.zzbEL.zzPV();
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public boolean zzQb() {
        return false;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public zzak.zza zzZ(Map<String, zzak.zza> map) {
        String zzPV = this.zzbEL.zzPV();
        return zzPV == null ? zzdl.zzRR() : zzdl.zzR(zzPV);
    }
}
