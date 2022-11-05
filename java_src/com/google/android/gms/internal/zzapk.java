package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.ConfigApi;
import com.google.android.gms.fitness.request.DataTypeCreateRequest;
import com.google.android.gms.fitness.result.DataTypeResult;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzaoe;
import com.google.android.gms.internal.zzaoo;
/* loaded from: classes2.dex */
public class zzapk implements ConfigApi {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zza extends zzaoo.zza {
        private final zzaad.zzb<DataTypeResult> zzaGN;

        private zza(zzaad.zzb<DataTypeResult> zzbVar) {
            this.zzaGN = zzbVar;
        }

        @Override // com.google.android.gms.internal.zzaoo
        public void zza(DataTypeResult dataTypeResult) {
            this.zzaGN.setResult(dataTypeResult);
        }
    }

    @Override // com.google.android.gms.fitness.ConfigApi
    public PendingResult<DataTypeResult> createCustomDataType(GoogleApiClient googleApiClient, final DataTypeCreateRequest dataTypeCreateRequest) {
        return googleApiClient.zzb((GoogleApiClient) new zzaoe.zza<DataTypeResult>(this, googleApiClient) { // from class: com.google.android.gms.internal.zzapk.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzV */
            public DataTypeResult zzc(Status status) {
                return DataTypeResult.zzaf(status);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzaoe zzaoeVar) throws RemoteException {
                ((zzaot) zzaoeVar.zzxD()).zza(new DataTypeCreateRequest(dataTypeCreateRequest, new zza(this)));
            }
        });
    }

    @Override // com.google.android.gms.fitness.ConfigApi
    public PendingResult<Status> disableFit(GoogleApiClient googleApiClient) {
        return googleApiClient.zzb((GoogleApiClient) new zzaoe.zzc(this, googleApiClient) { // from class: com.google.android.gms.internal.zzapk.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzaoe zzaoeVar) throws RemoteException {
                ((zzaot) zzaoeVar.zzxD()).zza(new com.google.android.gms.fitness.request.zzw(new zzapr(this)));
            }
        });
    }

    @Override // com.google.android.gms.fitness.ConfigApi
    public PendingResult<DataTypeResult> readDataType(GoogleApiClient googleApiClient, final String str) {
        return googleApiClient.zza((GoogleApiClient) new zzaoe.zza<DataTypeResult>(this, googleApiClient) { // from class: com.google.android.gms.internal.zzapk.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzV */
            public DataTypeResult zzc(Status status) {
                return DataTypeResult.zzaf(status);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzaoe zzaoeVar) throws RemoteException {
                ((zzaot) zzaoeVar.zzxD()).zza(new com.google.android.gms.fitness.request.zzn(str, new zza(this)));
            }
        });
    }
}
