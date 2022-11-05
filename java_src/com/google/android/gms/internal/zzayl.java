package com.google.android.gms.internal;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.nearby.messages.internal.zzn;
/* loaded from: classes2.dex */
public final class zzayl extends zzn.zza implements zzayj<zzaad.zzb<Status>> {
    private final zzabh<zzaad.zzb<Status>> zzbBp;
    private boolean zzbBr = false;

    public zzayl(zzabh<zzaad.zzb<Status>> zzabhVar) {
        this.zzbBp = zzabhVar;
    }

    @Override // com.google.android.gms.internal.zzayj
    public zzabh<zzaad.zzb<Status>> zzOP() {
        return this.zzbBp;
    }

    @Override // com.google.android.gms.nearby.messages.internal.zzn
    public synchronized void zzbx(final Status status) throws RemoteException {
        if (!this.zzbBr) {
            this.zzbBp.zza(new zzaym<zzaad.zzb<Status>>(this) { // from class: com.google.android.gms.internal.zzayl.1
                @Override // com.google.android.gms.internal.zzabh.zzc
                /* renamed from: zzt */
                public void zzs(zzaad.zzb<Status> zzbVar) {
                    zzbVar.setResult(status);
                }
            });
            this.zzbBr = true;
        } else {
            String valueOf = String.valueOf(status);
            Log.wtf("NearbyMessagesCallbackWrapper", new StringBuilder(String.valueOf(valueOf).length() + 28).append("Received multiple statuses: ").append(valueOf).toString(), new Exception());
        }
    }
}
