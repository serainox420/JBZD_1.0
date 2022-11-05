package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationServices;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsResult;
import com.google.android.gms.location.SettingsApi;
/* loaded from: classes2.dex */
public class zzasp implements SettingsApi {
    @Override // com.google.android.gms.location.SettingsApi
    public PendingResult<LocationSettingsResult> checkLocationSettings(GoogleApiClient googleApiClient, LocationSettingsRequest locationSettingsRequest) {
        return zza(googleApiClient, locationSettingsRequest, null);
    }

    public PendingResult<LocationSettingsResult> zza(GoogleApiClient googleApiClient, final LocationSettingsRequest locationSettingsRequest, final String str) {
        return googleApiClient.zza((GoogleApiClient) new LocationServices.zza<LocationSettingsResult>(this, googleApiClient) { // from class: com.google.android.gms.internal.zzasp.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzash zzashVar) throws RemoteException {
                zzashVar.zza(locationSettingsRequest, this, str);
            }

            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzbp */
            public LocationSettingsResult zzc(Status status) {
                return new LocationSettingsResult(status);
            }
        });
    }
}
