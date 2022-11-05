package com.google.android.gms.internal;

import com.google.android.gms.nearby.messages.StatusCallback;
import com.google.android.gms.nearby.messages.internal.zzq;
/* loaded from: classes2.dex */
public class zzayo extends zzq.zza implements zzayj<StatusCallback> {
    private final zzabh<StatusCallback> zzbBp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzayo(zzabh<StatusCallback> zzabhVar) {
        this.zzbBp = zzabhVar;
    }

    @Override // com.google.android.gms.nearby.messages.internal.zzq
    public void onPermissionChanged(final boolean z) {
        this.zzbBp.zza(new zzaym<StatusCallback>(this) { // from class: com.google.android.gms.internal.zzayo.1
            @Override // com.google.android.gms.internal.zzabh.zzc
            /* renamed from: zzb */
            public void zzs(StatusCallback statusCallback) {
                statusCallback.onPermissionChanged(z);
            }
        });
    }

    @Override // com.google.android.gms.internal.zzayj
    public zzabh<StatusCallback> zzOP() {
        return this.zzbBp;
    }
}
