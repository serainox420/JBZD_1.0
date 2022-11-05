package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.awareness.FenceApi;
import com.google.android.gms.awareness.fence.FenceQueryRequest;
import com.google.android.gms.awareness.fence.FenceQueryResult;
import com.google.android.gms.awareness.fence.FenceUpdateRequest;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzafm;
/* loaded from: classes2.dex */
public class zzaek implements FenceApi {
    @Override // com.google.android.gms.awareness.FenceApi
    public PendingResult<FenceQueryResult> queryFences(GoogleApiClient googleApiClient, final FenceQueryRequest fenceQueryRequest) {
        return googleApiClient.zza((GoogleApiClient) new zzafm.zza(this, googleApiClient) { // from class: com.google.android.gms.internal.zzaek.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzafn zzafnVar) throws RemoteException {
                zzafnVar.zza(this, (zzaer) fenceQueryRequest);
            }
        });
    }

    @Override // com.google.android.gms.awareness.FenceApi
    public PendingResult<Status> updateFences(GoogleApiClient googleApiClient, final FenceUpdateRequest fenceUpdateRequest) {
        return googleApiClient.zza((GoogleApiClient) new zzafm.zzc(this, googleApiClient) { // from class: com.google.android.gms.internal.zzaek.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzafn zzafnVar) throws RemoteException {
                zzafnVar.zza(this, (zzaez) fenceUpdateRequest);
            }
        });
    }
}
