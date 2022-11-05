package com.google.android.gms.location.places.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.location.places.AddPlaceRequest;
import com.google.android.gms.location.places.AutocompleteFilter;
import com.google.android.gms.location.places.AutocompletePredictionBuffer;
import com.google.android.gms.location.places.GeoDataApi;
import com.google.android.gms.location.places.PlaceBuffer;
import com.google.android.gms.location.places.PlacePhotoMetadataResult;
import com.google.android.gms.location.places.Places;
import com.google.android.gms.location.places.zzh;
import com.google.android.gms.location.places.zzo;
import com.google.android.gms.maps.model.LatLngBounds;
import java.util.Arrays;
/* loaded from: classes2.dex */
public class zzg implements GeoDataApi {
    @Override // com.google.android.gms.location.places.GeoDataApi
    public PendingResult<PlaceBuffer> addPlace(GoogleApiClient googleApiClient, final AddPlaceRequest addPlaceRequest) {
        return googleApiClient.zzb((GoogleApiClient) new zzo.zzc<zzh>(this, Places.GEO_DATA_API, googleApiClient) { // from class: com.google.android.gms.location.places.internal.zzg.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzh zzhVar) throws RemoteException {
                zzhVar.zza(new com.google.android.gms.location.places.zzo(this), addPlaceRequest);
            }
        });
    }

    @Override // com.google.android.gms.location.places.GeoDataApi
    public PendingResult<AutocompletePredictionBuffer> getAutocompletePredictions(GoogleApiClient googleApiClient, final String str, final LatLngBounds latLngBounds, final AutocompleteFilter autocompleteFilter) {
        return googleApiClient.zza((GoogleApiClient) new zzo.zza<zzh>(this, Places.GEO_DATA_API, googleApiClient) { // from class: com.google.android.gms.location.places.internal.zzg.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzh zzhVar) throws RemoteException {
                zzhVar.zza(new com.google.android.gms.location.places.zzo(this), str, latLngBounds, autocompleteFilter);
            }
        });
    }

    @Override // com.google.android.gms.location.places.GeoDataApi
    public PendingResult<PlaceBuffer> getPlaceById(GoogleApiClient googleApiClient, final String... strArr) {
        boolean z = true;
        if (strArr == null || strArr.length < 1) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        return googleApiClient.zza((GoogleApiClient) new zzo.zzc<zzh>(this, Places.GEO_DATA_API, googleApiClient) { // from class: com.google.android.gms.location.places.internal.zzg.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzh zzhVar) throws RemoteException {
                zzhVar.zza(new com.google.android.gms.location.places.zzo(this), Arrays.asList(strArr));
            }
        });
    }

    @Override // com.google.android.gms.location.places.GeoDataApi
    public PendingResult<PlacePhotoMetadataResult> getPlacePhotos(GoogleApiClient googleApiClient, final String str) {
        return googleApiClient.zza((GoogleApiClient) new zzh.zzb<zzh>(this, Places.GEO_DATA_API, googleApiClient) { // from class: com.google.android.gms.location.places.internal.zzg.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzh zzhVar) throws RemoteException {
                zzhVar.zza(new com.google.android.gms.location.places.zzh(this), str);
            }
        });
    }
}
