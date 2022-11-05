package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2.dex */
public abstract class zzyv extends zzyn<Status> {
    public zzyv(GoogleApiClient googleApiClient) {
        super(googleApiClient);
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.gms.internal.zzaad.zza
    public void zza(zzyq zzyqVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.zzaaf
    /* renamed from: zzb */
    public Status zzc(Status status) {
        return status;
    }
}
