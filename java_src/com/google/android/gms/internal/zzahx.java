package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.IBinder;
import android.os.Looper;
import android.os.Process;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.events.ChangeListener;
import com.google.android.gms.drive.events.DriveEventService;
import com.google.android.gms.internal.zzahv;
import com.google.android.gms.internal.zzahw;
import com.google.android.gms.internal.zzaix;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzahx extends com.google.android.gms.common.internal.zzl<zzaix> {
    private final Bundle zzaMO;
    private final boolean zzaMP;
    private volatile DriveId zzaMQ;
    private volatile DriveId zzaMR;
    private volatile boolean zzaMS;
    final GoogleApiClient.ConnectionCallbacks zzaMT;
    final Map<DriveId, Map<ChangeListener, zzaii>> zzaMU;
    final Map<com.google.android.gms.drive.events.zzd, zzaii> zzaMV;
    final Map<DriveId, Map<Object, zzaii>> zzaMW;
    final Map<DriveId, Map<Object, zzaii>> zzaMX;
    private final String zzaiq;

    public zzahx(Context context, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, Bundle bundle) {
        super(context, looper, 11, zzgVar, connectionCallbacks, onConnectionFailedListener);
        this.zzaMS = false;
        this.zzaMU = new HashMap();
        this.zzaMV = new HashMap();
        this.zzaMW = new HashMap();
        this.zzaMX = new HashMap();
        this.zzaiq = zzgVar.zzxO();
        this.zzaMT = connectionCallbacks;
        this.zzaMO = bundle;
        Intent intent = new Intent(DriveEventService.ACTION_HANDLE_EVENT);
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> queryIntentServices = context.getPackageManager().queryIntentServices(intent, 0);
        switch (queryIntentServices.size()) {
            case 0:
                this.zzaMP = false;
                return;
            case 1:
                ServiceInfo serviceInfo = queryIntentServices.get(0).serviceInfo;
                if (!serviceInfo.exported) {
                    String valueOf = String.valueOf(serviceInfo.name);
                    throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 60).append("Drive event service ").append(valueOf).append(" must be exported in AndroidManifest.xml").toString());
                } else {
                    this.zzaMP = true;
                    return;
                }
            default:
                String valueOf2 = String.valueOf(intent.getAction());
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf2).length() + 72).append("AndroidManifest.xml can only define one service that handles the ").append(valueOf2).append(" action").toString());
        }
    }

    private PendingResult<Status> zza(GoogleApiClient googleApiClient, final int i, final DriveId driveId) {
        com.google.android.gms.common.internal.zzac.zzax(com.google.android.gms.drive.events.zzi.zza(i, driveId));
        com.google.android.gms.common.internal.zzac.zza(isConnected(), "Client must be connected");
        return googleApiClient.zzb((GoogleApiClient) new zzahw.zza(this, googleApiClient) { // from class: com.google.android.gms.internal.zzahx.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzahx zzahxVar) throws RemoteException {
                zzahxVar.zzAX().zza(new zzaks(driveId, i), (zzaiz) null, (String) null, new zzalc(this));
            }
        });
    }

    private PendingResult<Status> zza(GoogleApiClient googleApiClient, final zzago zzagoVar) {
        com.google.android.gms.common.internal.zzac.zzax(com.google.android.gms.drive.events.zzi.zza(zzagoVar.getEventType(), zzagoVar.getDriveId()));
        com.google.android.gms.common.internal.zzac.zza(isConnected(), "Client must be connected");
        if (!this.zzaMP) {
            throw new IllegalStateException("Application must define an exported DriveEventService subclass in AndroidManifest.xml to add event subscriptions");
        }
        return googleApiClient.zzb((GoogleApiClient) new zzahw.zza(this, googleApiClient) { // from class: com.google.android.gms.internal.zzahx.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzahx zzahxVar) throws RemoteException {
                zzahxVar.zzAX().zza(zzagoVar, (zzaiz) null, (String) null, new zzalc(this));
            }
        });
    }

    private PendingResult<Status> zza(GoogleApiClient googleApiClient, final zzago zzagoVar, final zzaii zzaiiVar) {
        return googleApiClient.zzb((GoogleApiClient) new zzahw.zza(this, googleApiClient) { // from class: com.google.android.gms.internal.zzahx.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzahx zzahxVar) throws RemoteException {
                zzahxVar.zzAX().zza(zzagoVar, zzaiiVar, (String) null, new zzalc(this));
            }
        });
    }

    private PendingResult<Status> zza(GoogleApiClient googleApiClient, final zzaks zzaksVar, final zzaii zzaiiVar) {
        return googleApiClient.zzb((GoogleApiClient) new zzahw.zza(this, googleApiClient) { // from class: com.google.android.gms.internal.zzahx.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzahx zzahxVar) throws RemoteException {
                zzahxVar.zzAX().zza(zzaksVar, zzaiiVar, (String) null, new zzalc(this));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PendingResult<Status> cancelPendingActions(GoogleApiClient googleApiClient, final List<String> list) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(list != null);
        if (list.isEmpty()) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        com.google.android.gms.common.internal.zzac.zza(isConnected(), "Client must be connected");
        return googleApiClient.zzb((GoogleApiClient) new zzahw.zza(this, googleApiClient) { // from class: com.google.android.gms.internal.zzahx.5
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzahx zzahxVar) throws RemoteException {
                zzahxVar.zzAX().zza(new zzagv(list), new zzalc(this));
            }
        });
    }

    @Override // com.google.android.gms.common.internal.zzf, com.google.android.gms.common.api.Api.zze
    public void disconnect() {
        if (isConnected()) {
            try {
                ((zzaix) zzxD()).zza(new zzaht());
            } catch (RemoteException e) {
            }
        }
        super.disconnect();
        synchronized (this.zzaMU) {
            this.zzaMU.clear();
        }
        synchronized (this.zzaMV) {
            this.zzaMV.clear();
        }
        synchronized (this.zzaMW) {
            this.zzaMW.clear();
        }
        synchronized (this.zzaMX) {
            this.zzaMX.clear();
        }
    }

    boolean zzAW() {
        return com.google.android.gms.common.util.zzy.zzf(getContext(), Process.myUid());
    }

    public zzaix zzAX() throws DeadObjectException {
        return (zzaix) zzxD();
    }

    public DriveId zzAY() {
        return this.zzaMQ;
    }

    public DriveId zzAZ() {
        return this.zzaMR;
    }

    public boolean zzBa() {
        return this.zzaMS;
    }

    public boolean zzBb() {
        return this.zzaMP;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PendingResult<Status> zza(GoogleApiClient googleApiClient, DriveId driveId) {
        return zza(googleApiClient, new zzago(1, driveId));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PendingResult<Status> zza(GoogleApiClient googleApiClient, DriveId driveId, ChangeListener changeListener) {
        HashMap hashMap;
        PendingResult<Status> zzjVar;
        com.google.android.gms.common.internal.zzac.zzax(com.google.android.gms.drive.events.zzi.zza(1, driveId));
        com.google.android.gms.common.internal.zzac.zzb(changeListener, "listener");
        com.google.android.gms.common.internal.zzac.zza(isConnected(), "Client must be connected");
        synchronized (this.zzaMU) {
            Map<ChangeListener, zzaii> map = this.zzaMU.get(driveId);
            if (map == null) {
                HashMap hashMap2 = new HashMap();
                this.zzaMU.put(driveId, hashMap2);
                hashMap = hashMap2;
            } else {
                hashMap = map;
            }
            zzaii zzaiiVar = hashMap.get(changeListener);
            if (zzaiiVar == null) {
                zzaiiVar = new zzaii(getLooper(), getContext(), 1, changeListener);
                hashMap.put(changeListener, zzaiiVar);
            } else if (zzaiiVar.zzeR(1)) {
                zzjVar = new zzahv.zzj(googleApiClient, Status.zzazx);
            }
            zzaiiVar.zzeQ(1);
            zzjVar = zza(googleApiClient, new zzago(1, driveId), zzaiiVar);
        }
        return zzjVar;
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected void zza(int i, IBinder iBinder, Bundle bundle, int i2) {
        if (bundle != null) {
            bundle.setClassLoader(getClass().getClassLoader());
            this.zzaMQ = (DriveId) bundle.getParcelable("com.google.android.gms.drive.root_id");
            this.zzaMR = (DriveId) bundle.getParcelable("com.google.android.gms.drive.appdata_id");
            this.zzaMS = true;
        }
        super.zza(i, iBinder, bundle, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PendingResult<Status> zzb(GoogleApiClient googleApiClient, DriveId driveId) {
        return zza(googleApiClient, 1, driveId);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PendingResult<Status> zzb(GoogleApiClient googleApiClient, DriveId driveId, ChangeListener changeListener) {
        PendingResult<Status> zza;
        com.google.android.gms.common.internal.zzac.zzax(com.google.android.gms.drive.events.zzi.zza(1, driveId));
        com.google.android.gms.common.internal.zzac.zza(isConnected(), "Client must be connected");
        com.google.android.gms.common.internal.zzac.zzb(changeListener, "listener");
        synchronized (this.zzaMU) {
            Map<ChangeListener, zzaii> map = this.zzaMU.get(driveId);
            if (map == null) {
                zza = new zzahv.zzj(googleApiClient, Status.zzazx);
            } else {
                zzaii remove = map.remove(changeListener);
                if (remove == null) {
                    zza = new zzahv.zzj(googleApiClient, Status.zzazx);
                } else {
                    if (map.isEmpty()) {
                        this.zzaMU.remove(driveId);
                    }
                    zza = zza(googleApiClient, new zzaks(driveId, 1), remove);
                }
            }
        }
        return zza;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.zzf
    /* renamed from: zzbK */
    public zzaix zzh(IBinder iBinder) {
        return zzaix.zza.zzbL(iBinder);
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzeA() {
        return "com.google.android.gms.drive.internal.IDriveService";
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected String zzez() {
        return "com.google.android.gms.drive.ApiService.START";
    }

    @Override // com.google.android.gms.common.internal.zzf
    protected Bundle zzqL() {
        String packageName = getContext().getPackageName();
        com.google.android.gms.common.internal.zzac.zzw(packageName);
        com.google.android.gms.common.internal.zzac.zzaw(!zzxW().zzxM().isEmpty());
        Bundle bundle = new Bundle();
        if (!packageName.equals(this.zzaiq)) {
            bundle.putString("proxy_package_name", this.zzaiq);
        }
        bundle.putAll(this.zzaMO);
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.zzf, com.google.android.gms.common.api.Api.zze
    public boolean zzrd() {
        return !getContext().getPackageName().equals(this.zzaiq) || !zzAW();
    }

    @Override // com.google.android.gms.common.internal.zzf
    public boolean zzxE() {
        return true;
    }
}
