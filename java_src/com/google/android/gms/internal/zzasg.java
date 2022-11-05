package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.ContentProviderClient;
import android.content.Context;
import android.location.Location;
import android.os.RemoteException;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationResult;
import com.google.android.gms.location.zzj;
import com.google.android.gms.location.zzk;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzasg {
    private final Context mContext;
    private final zzaso<zzase> zzbkt;
    private ContentProviderClient zzbkE = null;
    private boolean zzbkF = false;
    private final Map<zzabh.zzb<LocationListener>, zzb> zzaWg = new HashMap();
    private final Map<zzabh.zzb<LocationCallback>, zza> zzbkG = new HashMap();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zza extends zzj.zza {
        private final zzabh<LocationCallback> zzaDf;

        zza(zzabh<LocationCallback> zzabhVar) {
            this.zzaDf = zzabhVar;
        }

        @Override // com.google.android.gms.location.zzj
        public void onLocationAvailability(final LocationAvailability locationAvailability) {
            this.zzaDf.zza(new zzabh.zzc<LocationCallback>(this) { // from class: com.google.android.gms.internal.zzasg.zza.2
                @Override // com.google.android.gms.internal.zzabh.zzc
                /* renamed from: zza */
                public void zzs(LocationCallback locationCallback) {
                    locationCallback.onLocationAvailability(locationAvailability);
                }

                @Override // com.google.android.gms.internal.zzabh.zzc
                public void zzwc() {
                }
            });
        }

        @Override // com.google.android.gms.location.zzj
        public void onLocationResult(final LocationResult locationResult) {
            this.zzaDf.zza(new zzabh.zzc<LocationCallback>(this) { // from class: com.google.android.gms.internal.zzasg.zza.1
                @Override // com.google.android.gms.internal.zzabh.zzc
                /* renamed from: zza */
                public void zzs(LocationCallback locationCallback) {
                    locationCallback.onLocationResult(locationResult);
                }

                @Override // com.google.android.gms.internal.zzabh.zzc
                public void zzwc() {
                }
            });
        }

        public synchronized void release() {
            this.zzaDf.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zzb extends zzk.zza {
        private final zzabh<LocationListener> zzaDf;

        zzb(zzabh<LocationListener> zzabhVar) {
            this.zzaDf = zzabhVar;
        }

        @Override // com.google.android.gms.location.zzk
        public synchronized void onLocationChanged(final Location location) {
            this.zzaDf.zza(new zzabh.zzc<LocationListener>(this) { // from class: com.google.android.gms.internal.zzasg.zzb.1
                @Override // com.google.android.gms.internal.zzabh.zzc
                /* renamed from: zza */
                public void zzs(LocationListener locationListener) {
                    locationListener.onLocationChanged(location);
                }

                @Override // com.google.android.gms.internal.zzabh.zzc
                public void zzwc() {
                }
            });
        }

        public synchronized void release() {
            this.zzaDf.clear();
        }
    }

    public zzasg(Context context, zzaso<zzase> zzasoVar) {
        this.mContext = context;
        this.zzbkt = zzasoVar;
    }

    private zzb zzf(zzabh<LocationListener> zzabhVar) {
        zzb zzbVar;
        synchronized (this.zzaWg) {
            zzbVar = this.zzaWg.get(zzabhVar.zzwW());
            if (zzbVar == null) {
                zzbVar = new zzb(zzabhVar);
            }
            this.zzaWg.put(zzabhVar.zzwW(), zzbVar);
        }
        return zzbVar;
    }

    private zza zzg(zzabh<LocationCallback> zzabhVar) {
        zza zzaVar;
        synchronized (this.zzbkG) {
            zzaVar = this.zzbkG.get(zzabhVar.zzwW());
            if (zzaVar == null) {
                zzaVar = new zza(zzabhVar);
            }
            this.zzbkG.put(zzabhVar.zzwW(), zzaVar);
        }
        return zzaVar;
    }

    public Location getLastLocation() {
        this.zzbkt.zzxC();
        try {
            return this.zzbkt.zzxD().zzeR(this.mContext.getPackageName());
        } catch (RemoteException e) {
            throw new IllegalStateException(e);
        }
    }

    public void removeAllListeners() {
        try {
            synchronized (this.zzaWg) {
                for (zzb zzbVar : this.zzaWg.values()) {
                    if (zzbVar != null) {
                        this.zzbkt.zzxD().zza(zzask.zza(zzbVar, (zzasc) null));
                    }
                }
                this.zzaWg.clear();
            }
            synchronized (this.zzbkG) {
                for (zza zzaVar : this.zzbkG.values()) {
                    if (zzaVar != null) {
                        this.zzbkt.zzxD().zza(zzask.zza(zzaVar, (zzasc) null));
                    }
                }
                this.zzbkG.clear();
            }
        } catch (RemoteException e) {
            throw new IllegalStateException(e);
        }
    }

    public LocationAvailability zzIp() {
        this.zzbkt.zzxC();
        try {
            return this.zzbkt.zzxD().zzeS(this.mContext.getPackageName());
        } catch (RemoteException e) {
            throw new IllegalStateException(e);
        }
    }

    public void zzIq() {
        if (this.zzbkF) {
            try {
                zzaH(false);
            } catch (RemoteException e) {
                throw new IllegalStateException(e);
            }
        }
    }

    public void zza(PendingIntent pendingIntent, zzasc zzascVar) throws RemoteException {
        this.zzbkt.zzxC();
        this.zzbkt.zzxD().zza(zzask.zzb(pendingIntent, zzascVar));
    }

    public void zza(zzabh.zzb<LocationListener> zzbVar, zzasc zzascVar) throws RemoteException {
        this.zzbkt.zzxC();
        com.google.android.gms.common.internal.zzac.zzb(zzbVar, "Invalid null listener key");
        synchronized (this.zzaWg) {
            zzb remove = this.zzaWg.remove(zzbVar);
            if (remove != null) {
                remove.release();
                this.zzbkt.zzxD().zza(zzask.zza(remove, zzascVar));
            }
        }
    }

    public void zza(zzasc zzascVar) throws RemoteException {
        this.zzbkt.zzxC();
        this.zzbkt.zzxD().zza(zzascVar);
    }

    public void zza(zzasi zzasiVar, zzabh<LocationCallback> zzabhVar, zzasc zzascVar) throws RemoteException {
        this.zzbkt.zzxC();
        this.zzbkt.zzxD().zza(zzask.zza(zzasiVar, zzg(zzabhVar), zzascVar));
    }

    public void zza(LocationRequest locationRequest, PendingIntent pendingIntent, zzasc zzascVar) throws RemoteException {
        this.zzbkt.zzxC();
        this.zzbkt.zzxD().zza(zzask.zza(zzasi.zzb(locationRequest), pendingIntent, zzascVar));
    }

    public void zza(LocationRequest locationRequest, zzabh<LocationListener> zzabhVar, zzasc zzascVar) throws RemoteException {
        this.zzbkt.zzxC();
        this.zzbkt.zzxD().zza(zzask.zza(zzasi.zzb(locationRequest), zzf(zzabhVar), zzascVar));
    }

    public void zzaH(boolean z) throws RemoteException {
        this.zzbkt.zzxC();
        this.zzbkt.zzxD().zzaH(z);
        this.zzbkF = z;
    }

    public void zzb(zzabh.zzb<LocationCallback> zzbVar, zzasc zzascVar) throws RemoteException {
        this.zzbkt.zzxC();
        com.google.android.gms.common.internal.zzac.zzb(zzbVar, "Invalid null listener key");
        synchronized (this.zzbkG) {
            zza remove = this.zzbkG.remove(zzbVar);
            if (remove != null) {
                remove.release();
                this.zzbkt.zzxD().zza(zzask.zza(remove, zzascVar));
            }
        }
    }

    public void zzd(Location location) throws RemoteException {
        this.zzbkt.zzxC();
        this.zzbkt.zzxD().zzd(location);
    }
}
