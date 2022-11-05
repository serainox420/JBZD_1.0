package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzapf;
/* loaded from: classes2.dex */
public class zzapr extends zzapf.zza {
    private final zzaad.zzb<Status> zzaGN;

    public zzapr(zzaad.zzb<Status> zzbVar) {
        this.zzaGN = zzbVar;
    }

    @Override // com.google.android.gms.internal.zzapf
    public void zzp(Status status) {
        this.zzaGN.setResult(status);
    }
}
