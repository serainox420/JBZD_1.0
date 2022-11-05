package com.google.android.gms.wearable.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzabh;
/* loaded from: classes2.dex */
final class zzb<T> extends zzm<Status> {
    private T mListener;
    private zzabh<T> zzaDf;
    private zza<T> zzbTw;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface zza<T> {
        void zza(zzcx zzcxVar, zzaad.zzb<Status> zzbVar, T t, zzabh<T> zzabhVar) throws RemoteException;
    }

    private zzb(GoogleApiClient googleApiClient, T t, zzabh<T> zzabhVar, zza<T> zzaVar) {
        super(googleApiClient);
        this.mListener = (T) com.google.android.gms.common.internal.zzac.zzw(t);
        this.zzaDf = (zzabh) com.google.android.gms.common.internal.zzac.zzw(zzabhVar);
        this.zzbTw = (zza) com.google.android.gms.common.internal.zzac.zzw(zzaVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> PendingResult<Status> zza(GoogleApiClient googleApiClient, zza<T> zzaVar, T t) {
        return googleApiClient.zza((GoogleApiClient) new zzb(googleApiClient, t, googleApiClient.zzr(t), zzaVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzaad.zza
    public void zza(zzcx zzcxVar) throws RemoteException {
        this.zzbTw.zza(zzcxVar, this, this.mListener, this.zzaDf);
        this.mListener = null;
        this.zzaDf = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.zzaaf
    /* renamed from: zzb */
    public Status zzc(Status status) {
        this.mListener = null;
        this.zzaDf = null;
        return status;
    }
}
