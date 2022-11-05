package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad;
/* loaded from: classes2.dex */
public class zzalc extends zzagu {
    private final zzaad.zzb<Status> zzaGN;

    public zzalc(zzaad.zzb<Status> zzbVar) {
        this.zzaGN = zzbVar;
    }

    @Override // com.google.android.gms.internal.zzagu, com.google.android.gms.internal.zzaiy
    public void onError(Status status) throws RemoteException {
        this.zzaGN.setResult(status);
    }

    @Override // com.google.android.gms.internal.zzagu, com.google.android.gms.internal.zzaiy
    public void onSuccess() throws RemoteException {
        this.zzaGN.setResult(Status.zzazx);
    }
}
