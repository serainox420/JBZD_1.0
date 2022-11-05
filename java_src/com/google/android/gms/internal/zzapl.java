package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.GoalsApi;
import com.google.android.gms.fitness.request.GoalsReadRequest;
import com.google.android.gms.fitness.result.GoalsResult;
import com.google.android.gms.internal.zzaof;
import com.google.android.gms.internal.zzaor;
/* loaded from: classes2.dex */
public class zzapl implements GoalsApi {
    @Override // com.google.android.gms.fitness.GoalsApi
    public PendingResult<GoalsResult> readCurrentGoals(GoogleApiClient googleApiClient, final GoalsReadRequest goalsReadRequest) {
        return googleApiClient.zza((GoogleApiClient) new zzaof.zza<GoalsResult>(this, googleApiClient) { // from class: com.google.android.gms.internal.zzapl.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzW */
            public GoalsResult zzc(Status status) {
                return GoalsResult.zzag(status);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzaof zzaofVar) throws RemoteException {
                ((zzaou) zzaofVar.zzxD()).zza(new GoalsReadRequest(goalsReadRequest, new zzaor.zza() { // from class: com.google.android.gms.internal.zzapl.1.1
                    @Override // com.google.android.gms.internal.zzaor
                    public void zza(GoalsResult goalsResult) throws RemoteException {
                        zzb((AnonymousClass1) goalsResult);
                    }
                }));
            }
        });
    }
}
