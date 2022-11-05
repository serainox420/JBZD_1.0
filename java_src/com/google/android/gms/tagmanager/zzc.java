package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.internal.zzak;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzc extends zzam {
    private static final String ID = com.google.android.gms.internal.zzah.ADVERTISING_TRACKING_ENABLED.toString();
    private final zza zzbEL;

    public zzc(Context context) {
        this(zza.zzbS(context));
    }

    zzc(zza zzaVar) {
        super(ID, new String[0]);
        this.zzbEL = zzaVar;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public boolean zzQb() {
        return false;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public zzak.zza zzZ(Map<String, zzak.zza> map) {
        return zzdl.zzR(Boolean.valueOf(!this.zzbEL.isLimitAdTrackingEnabled()));
    }
}
