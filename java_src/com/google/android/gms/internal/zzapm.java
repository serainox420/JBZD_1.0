package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.HistoryApi;
import com.google.android.gms.fitness.data.DataSet;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.request.DataDeleteRequest;
import com.google.android.gms.fitness.request.DataReadRequest;
import com.google.android.gms.fitness.request.DataUpdateListenerRegistrationRequest;
import com.google.android.gms.fitness.request.DataUpdateRequest;
import com.google.android.gms.fitness.result.DailyTotalResult;
import com.google.android.gms.fitness.result.DataReadResult;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzaog;
import com.google.android.gms.internal.zzaol;
import com.google.android.gms.internal.zzaom;
/* loaded from: classes2.dex */
public class zzapm implements HistoryApi {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zza extends zzaom.zza {
        private final zzaad.zzb<DataReadResult> zzaGN;
        private int zzaUV;
        private DataReadResult zzaUW;

        private zza(zzaad.zzb<DataReadResult> zzbVar) {
            this.zzaUV = 0;
            this.zzaUW = null;
            this.zzaGN = zzbVar;
        }

        @Override // com.google.android.gms.internal.zzaom
        public void zza(DataReadResult dataReadResult) {
            synchronized (this) {
                if (Log.isLoggable("Fitness", 2)) {
                    Log.v("Fitness", new StringBuilder(33).append("Received batch result ").append(this.zzaUV).toString());
                }
                if (this.zzaUW == null) {
                    this.zzaUW = dataReadResult;
                } else {
                    this.zzaUW.zzb(dataReadResult);
                }
                this.zzaUV++;
                if (this.zzaUV == this.zzaUW.zzDq()) {
                    this.zzaGN.setResult(this.zzaUW);
                }
            }
        }
    }

    private PendingResult<Status> zza(GoogleApiClient googleApiClient, final DataSet dataSet, final boolean z) {
        com.google.android.gms.common.internal.zzac.zzb(dataSet, "Must set the data set");
        com.google.android.gms.common.internal.zzac.zza(!dataSet.getDataPoints().isEmpty(), "Cannot use an empty data set");
        com.google.android.gms.common.internal.zzac.zzb(dataSet.getDataSource().zzCi(), "Must set the app package name for the data source");
        return googleApiClient.zza((GoogleApiClient) new zzaog.zzc(this, googleApiClient) { // from class: com.google.android.gms.internal.zzapm.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzaog zzaogVar) throws RemoteException {
                ((zzaov) zzaogVar.zzxD()).zza(new com.google.android.gms.fitness.request.zzg(dataSet, new zzapr(this), z));
            }
        });
    }

    private PendingResult<DailyTotalResult> zza(GoogleApiClient googleApiClient, final DataType dataType, final boolean z) {
        return googleApiClient.zza((GoogleApiClient) new zzaog.zza<DailyTotalResult>(this, googleApiClient) { // from class: com.google.android.gms.internal.zzapm.7
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzY */
            public DailyTotalResult zzc(Status status) {
                return DailyTotalResult.zza(status, dataType);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzaog zzaogVar) throws RemoteException {
                ((zzaov) zzaogVar.zzxD()).zza(new com.google.android.gms.fitness.request.zzd(new zzaol.zza() { // from class: com.google.android.gms.internal.zzapm.7.1
                    @Override // com.google.android.gms.internal.zzaol
                    public void zza(DailyTotalResult dailyTotalResult) throws RemoteException {
                        zzb((AnonymousClass7) dailyTotalResult);
                    }
                }, dataType, z));
            }
        });
    }

    @Override // com.google.android.gms.fitness.HistoryApi
    public PendingResult<Status> deleteData(GoogleApiClient googleApiClient, final DataDeleteRequest dataDeleteRequest) {
        return googleApiClient.zza((GoogleApiClient) new zzaog.zzc(this, googleApiClient) { // from class: com.google.android.gms.internal.zzapm.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzaog zzaogVar) throws RemoteException {
                ((zzaov) zzaogVar.zzxD()).zza(new DataDeleteRequest(dataDeleteRequest, new zzapr(this)));
            }
        });
    }

    @Override // com.google.android.gms.fitness.HistoryApi
    public PendingResult<Status> insertData(GoogleApiClient googleApiClient, DataSet dataSet) {
        return zza(googleApiClient, dataSet, false);
    }

    @Override // com.google.android.gms.fitness.HistoryApi
    public PendingResult<DailyTotalResult> readDailyTotal(GoogleApiClient googleApiClient, DataType dataType) {
        return zza(googleApiClient, dataType, false);
    }

    @Override // com.google.android.gms.fitness.HistoryApi
    public PendingResult<DailyTotalResult> readDailyTotalFromLocalDevice(GoogleApiClient googleApiClient, DataType dataType) {
        return zza(googleApiClient, dataType, true);
    }

    @Override // com.google.android.gms.fitness.HistoryApi
    public PendingResult<DataReadResult> readData(GoogleApiClient googleApiClient, final DataReadRequest dataReadRequest) {
        return googleApiClient.zza((GoogleApiClient) new zzaog.zza<DataReadResult>(this, googleApiClient) { // from class: com.google.android.gms.internal.zzapm.6
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzX */
            public DataReadResult zzc(Status status) {
                return DataReadResult.zza(status, dataReadRequest.getDataTypes(), dataReadRequest.getDataSources());
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzaog zzaogVar) throws RemoteException {
                ((zzaov) zzaogVar.zzxD()).zza(new DataReadRequest(dataReadRequest, new zza(this)));
            }
        });
    }

    @Override // com.google.android.gms.fitness.HistoryApi
    public PendingResult<Status> registerDataUpdateListener(GoogleApiClient googleApiClient, final DataUpdateListenerRegistrationRequest dataUpdateListenerRegistrationRequest) {
        return googleApiClient.zza((GoogleApiClient) new zzaog.zzc(this, googleApiClient) { // from class: com.google.android.gms.internal.zzapm.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzaog zzaogVar) throws RemoteException {
                ((zzaov) zzaogVar.zzxD()).zza(new DataUpdateListenerRegistrationRequest(dataUpdateListenerRegistrationRequest, new zzapr(this)));
            }
        });
    }

    @Override // com.google.android.gms.fitness.HistoryApi
    public PendingResult<Status> unregisterDataUpdateListener(GoogleApiClient googleApiClient, final PendingIntent pendingIntent) {
        return googleApiClient.zzb((GoogleApiClient) new zzaog.zzc(this, googleApiClient) { // from class: com.google.android.gms.internal.zzapm.5
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzaog zzaogVar) throws RemoteException {
                ((zzaov) zzaogVar.zzxD()).zza(new com.google.android.gms.fitness.request.zzq(pendingIntent, new zzapr(this)));
            }
        });
    }

    @Override // com.google.android.gms.fitness.HistoryApi
    public PendingResult<Status> updateData(GoogleApiClient googleApiClient, final DataUpdateRequest dataUpdateRequest) {
        com.google.android.gms.common.internal.zzac.zzb(dataUpdateRequest.getDataSet(), "Must set the data set");
        com.google.android.gms.common.internal.zzac.zza(dataUpdateRequest.zzqn(), "Must set a non-zero value for startTimeMillis/startTime");
        com.google.android.gms.common.internal.zzac.zza(dataUpdateRequest.zzAm(), "Must set a non-zero value for endTimeMillis/endTime");
        return googleApiClient.zza((GoogleApiClient) new zzaog.zzc(this, googleApiClient) { // from class: com.google.android.gms.internal.zzapm.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzaog zzaogVar) throws RemoteException {
                ((zzaov) zzaogVar.zzxD()).zza(new DataUpdateRequest(dataUpdateRequest, new zzapr(this)));
            }
        });
    }
}
