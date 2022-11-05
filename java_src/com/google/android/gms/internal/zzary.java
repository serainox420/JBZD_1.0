package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.location.Location;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzasc;
import com.google.android.gms.location.FusedLocationProviderApi;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationServices;
/* loaded from: classes2.dex */
public class zzary implements FusedLocationProviderApi {

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

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zzb extends zzasc.zza {
        private final zzaad.zzb<Status> zzaGN;

        public zzb(zzaad.zzb<Status> zzbVar) {
            this.zzaGN = zzbVar;
        }

        @Override // com.google.android.gms.internal.zzasc
        public void zza(zzarz zzarzVar) {
            this.zzaGN.setResult(zzarzVar.getStatus());
        }
    }

    @Override // com.google.android.gms.location.FusedLocationProviderApi
    public PendingResult<Status> flushLocations(GoogleApiClient googleApiClient) {
        return googleApiClient.zzb((GoogleApiClient) new zza(this, googleApiClient) { // from class: com.google.android.gms.internal.zzary.5
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzash zzashVar) throws RemoteException {
                zzashVar.zza((zzasc) new zzb(this));
            }
        });
    }

    @Override // com.google.android.gms.location.FusedLocationProviderApi
    public Location getLastLocation(GoogleApiClient googleApiClient) {
        try {
            return LocationServices.zzj(googleApiClient).getLastLocation();
        } catch (Exception e) {
            return null;
        }
    }

    @Override // com.google.android.gms.location.FusedLocationProviderApi
    public LocationAvailability getLocationAvailability(GoogleApiClient googleApiClient) {
        try {
            return LocationServices.zzj(googleApiClient).zzIp();
        } catch (Exception e) {
            return null;
        }
    }

    @Override // com.google.android.gms.location.FusedLocationProviderApi
    public PendingResult<Status> removeLocationUpdates(GoogleApiClient googleApiClient, final PendingIntent pendingIntent) {
        return googleApiClient.zzb((GoogleApiClient) new zza(this, googleApiClient) { // from class: com.google.android.gms.internal.zzary.10
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzash zzashVar) throws RemoteException {
                zzashVar.zza(pendingIntent, new zzb(this));
            }
        });
    }

    @Override // com.google.android.gms.location.FusedLocationProviderApi
    public PendingResult<Status> removeLocationUpdates(GoogleApiClient googleApiClient, final LocationCallback locationCallback) {
        return googleApiClient.zzb((GoogleApiClient) new zza(this, googleApiClient) { // from class: com.google.android.gms.internal.zzary.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzash zzashVar) throws RemoteException {
                zzashVar.zzb(zzabi.zza(locationCallback, LocationCallback.class.getSimpleName()), new zzb(this));
            }
        });
    }

    @Override // com.google.android.gms.location.FusedLocationProviderApi
    public PendingResult<Status> removeLocationUpdates(GoogleApiClient googleApiClient, final LocationListener locationListener) {
        return googleApiClient.zzb((GoogleApiClient) new zza(this, googleApiClient) { // from class: com.google.android.gms.internal.zzary.9
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzash zzashVar) throws RemoteException {
                zzashVar.zza(zzabi.zza(locationListener, LocationListener.class.getSimpleName()), new zzb(this));
            }
        });
    }

    @Override // com.google.android.gms.location.FusedLocationProviderApi
    public PendingResult<Status> requestLocationUpdates(GoogleApiClient googleApiClient, final LocationRequest locationRequest, final PendingIntent pendingIntent) {
        return googleApiClient.zzb((GoogleApiClient) new zza(this, googleApiClient) { // from class: com.google.android.gms.internal.zzary.8
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzash zzashVar) throws RemoteException {
                zzashVar.zza(locationRequest, pendingIntent, new zzb(this));
            }
        });
    }

    @Override // com.google.android.gms.location.FusedLocationProviderApi
    public PendingResult<Status> requestLocationUpdates(GoogleApiClient googleApiClient, final LocationRequest locationRequest, final LocationCallback locationCallback, final Looper looper) {
        return googleApiClient.zzb((GoogleApiClient) new zza(this, googleApiClient) { // from class: com.google.android.gms.internal.zzary.7
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzash zzashVar) throws RemoteException {
                zzashVar.zza(zzasi.zzb(locationRequest), zzabi.zzb(locationCallback, zzata.zzc(looper), LocationCallback.class.getSimpleName()), new zzb(this));
            }
        });
    }

    @Override // com.google.android.gms.location.FusedLocationProviderApi
    public PendingResult<Status> requestLocationUpdates(GoogleApiClient googleApiClient, final LocationRequest locationRequest, final LocationListener locationListener) {
        com.google.android.gms.common.internal.zzac.zzb(Looper.myLooper(), "Calling thread must be a prepared Looper thread.");
        return googleApiClient.zzb((GoogleApiClient) new zza(this, googleApiClient) { // from class: com.google.android.gms.internal.zzary.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzash zzashVar) throws RemoteException {
                zzashVar.zza(locationRequest, zzabi.zzb(locationListener, zzata.zzJl(), LocationListener.class.getSimpleName()), new zzb(this));
            }
        });
    }

    @Override // com.google.android.gms.location.FusedLocationProviderApi
    public PendingResult<Status> requestLocationUpdates(GoogleApiClient googleApiClient, final LocationRequest locationRequest, final LocationListener locationListener, final Looper looper) {
        return googleApiClient.zzb((GoogleApiClient) new zza(this, googleApiClient) { // from class: com.google.android.gms.internal.zzary.6
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzash zzashVar) throws RemoteException {
                zzashVar.zza(locationRequest, zzabi.zzb(locationListener, zzata.zzc(looper), LocationListener.class.getSimpleName()), new zzb(this));
            }
        });
    }

    @Override // com.google.android.gms.location.FusedLocationProviderApi
    public PendingResult<Status> setMockLocation(GoogleApiClient googleApiClient, final Location location) {
        return googleApiClient.zzb((GoogleApiClient) new zza(this, googleApiClient) { // from class: com.google.android.gms.internal.zzary.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzash zzashVar) throws RemoteException {
                zzashVar.zzd(location);
                zzb((AnonymousClass4) Status.zzazx);
            }
        });
    }

    @Override // com.google.android.gms.location.FusedLocationProviderApi
    public PendingResult<Status> setMockMode(GoogleApiClient googleApiClient, final boolean z) {
        return googleApiClient.zzb((GoogleApiClient) new zza(this, googleApiClient) { // from class: com.google.android.gms.internal.zzary.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzash zzashVar) throws RemoteException {
                zzashVar.zzaH(z);
                zzb((AnonymousClass3) Status.zzazx);
            }
        });
    }
}
