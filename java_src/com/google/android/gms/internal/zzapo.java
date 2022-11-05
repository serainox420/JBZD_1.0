package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.fitness.RecordingApi;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import com.google.android.gms.fitness.data.Subscription;
import com.google.android.gms.fitness.result.ListSubscriptionsResult;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzaoi;
import com.google.android.gms.internal.zzapa;
/* loaded from: classes2.dex */
public class zzapo implements RecordingApi {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zza extends zzapa.zza {
        private final zzaad.zzb<ListSubscriptionsResult> zzaGN;

        private zza(zzaad.zzb<ListSubscriptionsResult> zzbVar) {
            this.zzaGN = zzbVar;
        }

        @Override // com.google.android.gms.internal.zzapa
        public void zza(ListSubscriptionsResult listSubscriptionsResult) {
            this.zzaGN.setResult(listSubscriptionsResult);
        }
    }

    private PendingResult<Status> zza(GoogleApiClient googleApiClient, final Subscription subscription) {
        return googleApiClient.zza((GoogleApiClient) new zzaoi.zzc(this, googleApiClient) { // from class: com.google.android.gms.internal.zzapo.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzaoi zzaoiVar) throws RemoteException {
                ((zzaox) zzaoiVar.zzxD()).zza(new com.google.android.gms.fitness.request.zzbm(subscription, false, new zzapr(this)));
            }
        });
    }

    @Override // com.google.android.gms.fitness.RecordingApi
    public PendingResult<ListSubscriptionsResult> listSubscriptions(GoogleApiClient googleApiClient) {
        return googleApiClient.zza((GoogleApiClient) new zzaoi.zza<ListSubscriptionsResult>(this, googleApiClient) { // from class: com.google.android.gms.internal.zzapo.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzZ */
            public ListSubscriptionsResult zzc(Status status) {
                return ListSubscriptionsResult.zzah(status);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzaoi zzaoiVar) throws RemoteException {
                ((zzaox) zzaoiVar.zzxD()).zza(new com.google.android.gms.fitness.request.zzam(null, new zza(this)));
            }
        });
    }

    @Override // com.google.android.gms.fitness.RecordingApi
    public PendingResult<ListSubscriptionsResult> listSubscriptions(GoogleApiClient googleApiClient, final DataType dataType) {
        return googleApiClient.zza((GoogleApiClient) new zzaoi.zza<ListSubscriptionsResult>(this, googleApiClient) { // from class: com.google.android.gms.internal.zzapo.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzZ */
            public ListSubscriptionsResult zzc(Status status) {
                return ListSubscriptionsResult.zzah(status);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzaoi zzaoiVar) throws RemoteException {
                ((zzaox) zzaoiVar.zzxD()).zza(new com.google.android.gms.fitness.request.zzam(dataType, new zza(this)));
            }
        });
    }

    @Override // com.google.android.gms.fitness.RecordingApi
    public PendingResult<Status> subscribe(GoogleApiClient googleApiClient, DataSource dataSource) {
        return zza(googleApiClient, new Subscription.zza().zzb(dataSource).zzCB());
    }

    @Override // com.google.android.gms.fitness.RecordingApi
    public PendingResult<Status> subscribe(GoogleApiClient googleApiClient, DataType dataType) {
        return zza(googleApiClient, new Subscription.zza().zzd(dataType).zzCB());
    }

    @Override // com.google.android.gms.fitness.RecordingApi
    public PendingResult<Status> unsubscribe(GoogleApiClient googleApiClient, final DataSource dataSource) {
        return googleApiClient.zzb((GoogleApiClient) new zzaoi.zzc(this, googleApiClient) { // from class: com.google.android.gms.internal.zzapo.5
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzaoi zzaoiVar) throws RemoteException {
                ((zzaox) zzaoiVar.zzxD()).zza(new com.google.android.gms.fitness.request.zzbq(null, dataSource, new zzapr(this)));
            }
        });
    }

    @Override // com.google.android.gms.fitness.RecordingApi
    public PendingResult<Status> unsubscribe(GoogleApiClient googleApiClient, final DataType dataType) {
        return googleApiClient.zzb((GoogleApiClient) new zzaoi.zzc(this, googleApiClient) { // from class: com.google.android.gms.internal.zzapo.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzaoi zzaoiVar) throws RemoteException {
                ((zzaox) zzaoiVar.zzxD()).zza(new com.google.android.gms.fitness.request.zzbq(dataType, null, new zzapr(this)));
            }
        });
    }

    @Override // com.google.android.gms.fitness.RecordingApi
    public PendingResult<Status> unsubscribe(GoogleApiClient googleApiClient, Subscription subscription) {
        return subscription.getDataType() == null ? unsubscribe(googleApiClient, subscription.getDataSource()) : unsubscribe(googleApiClient, subscription.getDataType());
    }
}
