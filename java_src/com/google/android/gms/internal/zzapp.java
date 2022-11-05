package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.PendingResults;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.SensorsApi;
import com.google.android.gms.fitness.request.DataSourcesRequest;
import com.google.android.gms.fitness.request.OnDataPointListener;
import com.google.android.gms.fitness.request.SensorRequest;
import com.google.android.gms.fitness.request.zzao;
import com.google.android.gms.fitness.result.DataSourcesResult;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzaoj;
import com.google.android.gms.internal.zzapf;
/* loaded from: classes2.dex */
public class zzapp implements SensorsApi {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public interface zza {
        void zzCJ();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zzb extends zzapf.zza {
        private final zzaad.zzb<Status> zzaGN;
        private final zza zzaVg;

        private zzb(zzaad.zzb<Status> zzbVar, zza zzaVar) {
            this.zzaGN = zzbVar;
            this.zzaVg = zzaVar;
        }

        @Override // com.google.android.gms.internal.zzapf
        public void zzp(Status status) {
            if (this.zzaVg != null && status.isSuccess()) {
                this.zzaVg.zzCJ();
            }
            this.zzaGN.setResult(status);
        }
    }

    private PendingResult<Status> zza(GoogleApiClient googleApiClient, final com.google.android.gms.fitness.data.zzs zzsVar, final PendingIntent pendingIntent, final zza zzaVar) {
        return googleApiClient.zzb((GoogleApiClient) new zzaoj.zzc(this, googleApiClient) { // from class: com.google.android.gms.internal.zzapp.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzaoj zzaojVar) throws RemoteException {
                ((zzaoy) zzaojVar.zzxD()).zza(new com.google.android.gms.fitness.request.zzax(zzsVar, pendingIntent, new zzb(this, zzaVar)));
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaoj.zzc, com.google.android.gms.internal.zzaaf
            /* renamed from: zzb */
            public Status zzc(Status status) {
                return status;
            }
        });
    }

    private PendingResult<Status> zza(GoogleApiClient googleApiClient, final SensorRequest sensorRequest, final com.google.android.gms.fitness.data.zzs zzsVar, final PendingIntent pendingIntent) {
        return googleApiClient.zza((GoogleApiClient) new zzaoj.zzc(this, googleApiClient) { // from class: com.google.android.gms.internal.zzapp.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzaoj zzaojVar) throws RemoteException {
                ((zzaoy) zzaojVar.zzxD()).zza(new com.google.android.gms.fitness.request.zzav(sensorRequest, zzsVar, pendingIntent, new zzapr(this)));
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaoj.zzc, com.google.android.gms.internal.zzaaf
            /* renamed from: zzb */
            public Status zzc(Status status) {
                return status;
            }
        });
    }

    @Override // com.google.android.gms.fitness.SensorsApi
    public PendingResult<Status> add(GoogleApiClient googleApiClient, SensorRequest sensorRequest, PendingIntent pendingIntent) {
        return zza(googleApiClient, sensorRequest, (com.google.android.gms.fitness.data.zzs) null, pendingIntent);
    }

    @Override // com.google.android.gms.fitness.SensorsApi
    public PendingResult<Status> add(GoogleApiClient googleApiClient, SensorRequest sensorRequest, OnDataPointListener onDataPointListener) {
        return zza(googleApiClient, sensorRequest, zzao.zza.zzDa().zza(onDataPointListener), (PendingIntent) null);
    }

    @Override // com.google.android.gms.fitness.SensorsApi
    public PendingResult<DataSourcesResult> findDataSources(GoogleApiClient googleApiClient, final DataSourcesRequest dataSourcesRequest) {
        return googleApiClient.zza((GoogleApiClient) new zzaoj.zza<DataSourcesResult>(this, googleApiClient) { // from class: com.google.android.gms.internal.zzapp.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzaoj zzaojVar) throws RemoteException {
                ((zzaoy) zzaojVar.zzxD()).zza(new DataSourcesRequest(dataSourcesRequest, new zzaoc(this)));
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzaa */
            public DataSourcesResult zzc(Status status) {
                return DataSourcesResult.zzae(status);
            }
        });
    }

    @Override // com.google.android.gms.fitness.SensorsApi
    public PendingResult<Status> remove(GoogleApiClient googleApiClient, PendingIntent pendingIntent) {
        return zza(googleApiClient, (com.google.android.gms.fitness.data.zzs) null, pendingIntent, (zza) null);
    }

    @Override // com.google.android.gms.fitness.SensorsApi
    public PendingResult<Status> remove(GoogleApiClient googleApiClient, final OnDataPointListener onDataPointListener) {
        com.google.android.gms.fitness.request.zzao zzb2 = zzao.zza.zzDa().zzb(onDataPointListener);
        return zzb2 == null ? PendingResults.zza(Status.zzazx, googleApiClient) : zza(googleApiClient, zzb2, (PendingIntent) null, new zza(this) { // from class: com.google.android.gms.internal.zzapp.3
            @Override // com.google.android.gms.internal.zzapp.zza
            public void zzCJ() {
                zzao.zza.zzDa().zzc(onDataPointListener);
            }
        });
    }
}
