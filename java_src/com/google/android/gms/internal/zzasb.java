package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.Geofence;
import com.google.android.gms.location.GeofencingApi;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.LocationServices;
import java.util.List;
/* loaded from: classes.dex */
public class zzasb implements GeofencingApi {

    /* loaded from: classes2.dex */
    private static abstract class zza extends LocationServices.zza<Status> {
        public zza(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzb */
        public Status zzc(Status status) {
            return status;
        }
    }

    @Override // com.google.android.gms.location.GeofencingApi
    public PendingResult<Status> addGeofences(GoogleApiClient googleApiClient, final GeofencingRequest geofencingRequest, final PendingIntent pendingIntent) {
        return googleApiClient.zzb((GoogleApiClient) new zza(this, googleApiClient) { // from class: com.google.android.gms.internal.zzasb.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzash zzashVar) throws RemoteException {
                zzashVar.zza(geofencingRequest, pendingIntent, this);
            }
        });
    }

    @Override // com.google.android.gms.location.GeofencingApi
    @Deprecated
    public PendingResult<Status> addGeofences(GoogleApiClient googleApiClient, List<Geofence> list, PendingIntent pendingIntent) {
        GeofencingRequest.Builder builder = new GeofencingRequest.Builder();
        builder.addGeofences(list);
        builder.setInitialTrigger(5);
        return addGeofences(googleApiClient, builder.build(), pendingIntent);
    }

    @Override // com.google.android.gms.location.GeofencingApi
    public PendingResult<Status> removeGeofences(GoogleApiClient googleApiClient, PendingIntent pendingIntent) {
        return zza(googleApiClient, com.google.android.gms.location.zzt.zzb(pendingIntent));
    }

    @Override // com.google.android.gms.location.GeofencingApi
    public PendingResult<Status> removeGeofences(GoogleApiClient googleApiClient, List<String> list) {
        return zza(googleApiClient, com.google.android.gms.location.zzt.zzE(list));
    }

    public PendingResult<Status> zza(GoogleApiClient googleApiClient, final com.google.android.gms.location.zzt zztVar) {
        return googleApiClient.zzb((GoogleApiClient) new zza(this, googleApiClient) { // from class: com.google.android.gms.internal.zzasb.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzash zzashVar) throws RemoteException {
                zzashVar.zza(zztVar, this);
            }
        });
    }
}
