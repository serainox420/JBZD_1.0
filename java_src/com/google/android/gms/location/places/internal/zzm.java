package com.google.android.gms.location.places.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.places.PlaceDetectionApi;
import com.google.android.gms.location.places.PlaceFilter;
import com.google.android.gms.location.places.PlaceLikelihoodBuffer;
import com.google.android.gms.location.places.PlaceReport;
import com.google.android.gms.location.places.Places;
import com.google.android.gms.location.places.zzo;
/* loaded from: classes2.dex */
public class zzm implements PlaceDetectionApi {
    @Override // com.google.android.gms.location.places.PlaceDetectionApi
    public PendingResult<PlaceLikelihoodBuffer> getCurrentPlace(GoogleApiClient googleApiClient, final PlaceFilter placeFilter) {
        return googleApiClient.zza((GoogleApiClient) new zzo.zzd<zzn>(this, Places.PLACE_DETECTION_API, googleApiClient) { // from class: com.google.android.gms.location.places.internal.zzm.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzn zznVar) throws RemoteException {
                zznVar.zza(new com.google.android.gms.location.places.zzo(this), placeFilter);
            }
        });
    }

    @Override // com.google.android.gms.location.places.PlaceDetectionApi
    public PendingResult<Status> reportDeviceAtPlace(GoogleApiClient googleApiClient, final PlaceReport placeReport) {
        return googleApiClient.zzb((GoogleApiClient) new zzo.zzf<zzn>(this, Places.PLACE_DETECTION_API, googleApiClient) { // from class: com.google.android.gms.location.places.internal.zzm.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzn zznVar) throws RemoteException {
                zznVar.zza(new com.google.android.gms.location.places.zzo(this), placeReport);
            }
        });
    }
}
