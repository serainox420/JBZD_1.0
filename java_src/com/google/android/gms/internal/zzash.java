package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.location.Location;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzasd;
import com.google.android.gms.internal.zzasf;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationSettingsRequest;
import com.google.android.gms.location.LocationSettingsResult;
import com.google.android.gms.location.LocationStatusCodes;
/* loaded from: classes2.dex */
public class zzash extends zzarv {
    private final zzasg zzbkK;

    /* loaded from: classes2.dex */
    private static final class zza extends zzasd.zza {
        private zzaad.zzb<Status> zzbkL;

        public zza(zzaad.zzb<Status> zzbVar) {
            this.zzbkL = zzbVar;
        }

        @Override // com.google.android.gms.internal.zzasd
        public void zza(int i, PendingIntent pendingIntent) {
            Log.wtf("LocationClientImpl", "Unexpected call to onRemoveGeofencesByPendingIntentResult");
        }

        @Override // com.google.android.gms.internal.zzasd
        public void zza(int i, String[] strArr) {
            if (this.zzbkL == null) {
                Log.wtf("LocationClientImpl", "onAddGeofenceResult called multiple times");
                return;
            }
            this.zzbkL.setResult(LocationStatusCodes.zzkt(LocationStatusCodes.zzks(i)));
            this.zzbkL = null;
        }

        @Override // com.google.android.gms.internal.zzasd
        public void zzb(int i, String[] strArr) {
            Log.wtf("LocationClientImpl", "Unexpected call to onRemoveGeofencesByRequestIdsResult");
        }
    }

    /* loaded from: classes2.dex */
    private static final class zzb extends zzasd.zza {
        private zzaad.zzb<Status> zzbkL;

        public zzb(zzaad.zzb<Status> zzbVar) {
            this.zzbkL = zzbVar;
        }

        private void zzkx(int i) {
            if (this.zzbkL == null) {
                Log.wtf("LocationClientImpl", "onRemoveGeofencesResult called multiple times");
                return;
            }
            this.zzbkL.setResult(LocationStatusCodes.zzkt(LocationStatusCodes.zzks(i)));
            this.zzbkL = null;
        }

        @Override // com.google.android.gms.internal.zzasd
        public void zza(int i, PendingIntent pendingIntent) {
            zzkx(i);
        }

        @Override // com.google.android.gms.internal.zzasd
        public void zza(int i, String[] strArr) {
            Log.wtf("LocationClientImpl", "Unexpected call to onAddGeofencesResult");
        }

        @Override // com.google.android.gms.internal.zzasd
        public void zzb(int i, String[] strArr) {
            zzkx(i);
        }
    }

    /* loaded from: classes2.dex */
    private static final class zzc extends zzasf.zza {
        private zzaad.zzb<LocationSettingsResult> zzbkL;

        public zzc(zzaad.zzb<LocationSettingsResult> zzbVar) {
            com.google.android.gms.common.internal.zzac.zzb(zzbVar != null, "listener can't be null.");
            this.zzbkL = zzbVar;
        }

        @Override // com.google.android.gms.internal.zzasf
        public void zza(LocationSettingsResult locationSettingsResult) throws RemoteException {
            this.zzbkL.setResult(locationSettingsResult);
            this.zzbkL = null;
        }
    }

    public zzash(Context context, Looper looper, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, String str) {
        this(context, looper, connectionCallbacks, onConnectionFailedListener, str, com.google.android.gms.common.internal.zzg.zzaS(context));
    }

    public zzash(Context context, Looper looper, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, String str, com.google.android.gms.common.internal.zzg zzgVar) {
        super(context, looper, connectionCallbacks, onConnectionFailedListener, str, zzgVar);
        this.zzbkK = new zzasg(context, this.zzbkt);
    }

    @Override // com.google.android.gms.common.internal.zzf, com.google.android.gms.common.api.Api.zze
    public void disconnect() {
        synchronized (this.zzbkK) {
            if (isConnected()) {
                try {
                    this.zzbkK.removeAllListeners();
                    this.zzbkK.zzIq();
                } catch (Exception e) {
                    Log.e("LocationClientImpl", "Client disconnected before listeners could be cleaned up", e);
                }
            }
            super.disconnect();
        }
    }

    public Location getLastLocation() {
        return this.zzbkK.getLastLocation();
    }

    public LocationAvailability zzIp() {
        return this.zzbkK.zzIp();
    }

    public void zza(long j, PendingIntent pendingIntent) throws RemoteException {
        zzxC();
        com.google.android.gms.common.internal.zzac.zzw(pendingIntent);
        com.google.android.gms.common.internal.zzac.zzb(j >= 0, "detectionIntervalMillis must be >= 0");
        ((zzase) zzxD()).zza(j, true, pendingIntent);
    }

    public void zza(PendingIntent pendingIntent, zzasc zzascVar) throws RemoteException {
        this.zzbkK.zza(pendingIntent, zzascVar);
    }

    public void zza(zzabh.zzb<LocationListener> zzbVar, zzasc zzascVar) throws RemoteException {
        this.zzbkK.zza(zzbVar, zzascVar);
    }

    public void zza(zzasc zzascVar) throws RemoteException {
        this.zzbkK.zza(zzascVar);
    }

    public void zza(zzasi zzasiVar, zzabh<LocationCallback> zzabhVar, zzasc zzascVar) throws RemoteException {
        synchronized (this.zzbkK) {
            this.zzbkK.zza(zzasiVar, zzabhVar, zzascVar);
        }
    }

    public void zza(GeofencingRequest geofencingRequest, PendingIntent pendingIntent, zzaad.zzb<Status> zzbVar) throws RemoteException {
        zzxC();
        com.google.android.gms.common.internal.zzac.zzb(geofencingRequest, "geofencingRequest can't be null.");
        com.google.android.gms.common.internal.zzac.zzb(pendingIntent, "PendingIntent must be specified.");
        com.google.android.gms.common.internal.zzac.zzb(zzbVar, "ResultHolder not provided.");
        ((zzase) zzxD()).zza(geofencingRequest, pendingIntent, new zza(zzbVar));
    }

    public void zza(LocationRequest locationRequest, PendingIntent pendingIntent, zzasc zzascVar) throws RemoteException {
        this.zzbkK.zza(locationRequest, pendingIntent, zzascVar);
    }

    public void zza(LocationRequest locationRequest, zzabh<LocationListener> zzabhVar, zzasc zzascVar) throws RemoteException {
        synchronized (this.zzbkK) {
            this.zzbkK.zza(locationRequest, zzabhVar, zzascVar);
        }
    }

    public void zza(LocationSettingsRequest locationSettingsRequest, zzaad.zzb<LocationSettingsResult> zzbVar, String str) throws RemoteException {
        boolean z = true;
        zzxC();
        com.google.android.gms.common.internal.zzac.zzb(locationSettingsRequest != null, "locationSettingsRequest can't be null nor empty.");
        if (zzbVar == null) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzb(z, "listener can't be null.");
        ((zzase) zzxD()).zza(locationSettingsRequest, new zzc(zzbVar), str);
    }

    public void zza(com.google.android.gms.location.zzt zztVar, zzaad.zzb<Status> zzbVar) throws RemoteException {
        zzxC();
        com.google.android.gms.common.internal.zzac.zzb(zztVar, "removeGeofencingRequest can't be null.");
        com.google.android.gms.common.internal.zzac.zzb(zzbVar, "ResultHolder not provided.");
        ((zzase) zzxD()).zza(zztVar, new zzb(zzbVar));
    }

    public void zzaH(boolean z) throws RemoteException {
        this.zzbkK.zzaH(z);
    }

    public void zzb(zzabh.zzb<LocationCallback> zzbVar, zzasc zzascVar) throws RemoteException {
        this.zzbkK.zzb(zzbVar, zzascVar);
    }

    public void zzc(PendingIntent pendingIntent) throws RemoteException {
        zzxC();
        com.google.android.gms.common.internal.zzac.zzw(pendingIntent);
        ((zzase) zzxD()).zzc(pendingIntent);
    }

    public void zzd(Location location) throws RemoteException {
        this.zzbkK.zzd(location);
    }
}
