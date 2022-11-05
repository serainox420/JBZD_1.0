package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.ActivityRecognition;
import com.google.android.gms.location.ActivityRecognitionApi;
/* loaded from: classes2.dex */
public class zzaru implements ActivityRecognitionApi {

    /* loaded from: classes2.dex */
    private static abstract class zza extends ActivityRecognition.zza<Status> {
        public zza(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzb */
        public Status zzc(Status status) {
            return status;
        }
    }

    @Override // com.google.android.gms.location.ActivityRecognitionApi
    public PendingResult<Status> removeActivityUpdates(GoogleApiClient googleApiClient, final PendingIntent pendingIntent) {
        return googleApiClient.zzb((GoogleApiClient) new zza(this, googleApiClient) { // from class: com.google.android.gms.internal.zzaru.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzash zzashVar) throws RemoteException {
                zzashVar.zzc(pendingIntent);
                zzb((AnonymousClass2) Status.zzazx);
            }
        });
    }

    @Override // com.google.android.gms.location.ActivityRecognitionApi
    public PendingResult<Status> requestActivityUpdates(GoogleApiClient googleApiClient, final long j, final PendingIntent pendingIntent) {
        return googleApiClient.zzb((GoogleApiClient) new zza(this, googleApiClient) { // from class: com.google.android.gms.internal.zzaru.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzash zzashVar) throws RemoteException {
                zzashVar.zza(j, pendingIntent);
                zzb((AnonymousClass1) Status.zzazx);
            }
        });
    }
}
