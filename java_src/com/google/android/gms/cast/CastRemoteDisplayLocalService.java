package com.google.android.gms.cast;

import android.annotation.TargetApi;
import android.app.Notification;
import android.app.PendingIntent;
import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Binder;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.support.v4.app.aj;
import android.support.v7.media.f;
import android.support.v7.media.g;
import android.text.TextUtils;
import android.view.Display;
import com.google.android.gms.cast.CastRemoteDisplay;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.internal.zzyz;
import java.util.concurrent.atomic.AtomicBoolean;
@TargetApi(19)
/* loaded from: classes2.dex */
public abstract class CastRemoteDisplayLocalService extends Service {
    private static final zzyz zzanA = new zzyz("CastRemoteDisplayLocalService");
    private static final int zzanB = zzsk();
    private static final Object zzanC = new Object();
    private static AtomicBoolean zzanD = new AtomicBoolean(false);
    private static CastRemoteDisplayLocalService zzanR;
    private Handler mHandler;
    private Notification mNotification;
    private Display zzOq;
    private String zzamX;
    private GoogleApiClient zzanE;
    private CastRemoteDisplay.CastRemoteDisplaySessionCallbacks zzanF;
    private Callbacks zzanG;
    private zzb zzanH;
    private NotificationSettings zzanI;
    private boolean zzanJ;
    private PendingIntent zzanK;
    private CastDevice zzanL;
    private Context zzanM;
    private ServiceConnection zzanN;
    private g zzanO;
    private boolean zzanP = false;
    private final g.a zzanQ = new g.a() { // from class: com.google.android.gms.cast.CastRemoteDisplayLocalService.1
        @Override // android.support.v7.media.g.a
        public void onRouteUnselected(g gVar, g.C0043g c0043g) {
            CastRemoteDisplayLocalService.this.zzbQ("onRouteUnselected");
            if (CastRemoteDisplayLocalService.this.zzanL == null) {
                CastRemoteDisplayLocalService.this.zzbQ("onRouteUnselected, no device was selected");
            } else if (!CastDevice.getFromBundle(c0043g.u()).getDeviceId().equals(CastRemoteDisplayLocalService.this.zzanL.getDeviceId())) {
                CastRemoteDisplayLocalService.this.zzbQ("onRouteUnselected, device does not match");
            } else {
                CastRemoteDisplayLocalService.stopService();
            }
        }
    };
    private final IBinder zzanS = new zza();

    /* loaded from: classes2.dex */
    public interface Callbacks {
        void onRemoteDisplaySessionError(Status status);

        void onRemoteDisplaySessionStarted(CastRemoteDisplayLocalService castRemoteDisplayLocalService);

        void onServiceCreated(CastRemoteDisplayLocalService castRemoteDisplayLocalService);
    }

    /* loaded from: classes2.dex */
    public static final class NotificationSettings {
        private Notification mNotification;
        private PendingIntent zzaoa;
        private String zzaob;
        private String zzaoc;

        /* loaded from: classes2.dex */
        public static final class Builder {
            private NotificationSettings zzaod = new NotificationSettings();

            public NotificationSettings build() {
                if (this.zzaod.mNotification != null) {
                    if (!TextUtils.isEmpty(this.zzaod.zzaob)) {
                        throw new IllegalArgumentException("notificationTitle requires using the default notification");
                    }
                    if (!TextUtils.isEmpty(this.zzaod.zzaoc)) {
                        throw new IllegalArgumentException("notificationText requires using the default notification");
                    }
                    if (this.zzaod.zzaoa != null) {
                        throw new IllegalArgumentException("notificationPendingIntent requires using the default notification");
                    }
                } else if (TextUtils.isEmpty(this.zzaod.zzaob) && TextUtils.isEmpty(this.zzaod.zzaoc) && this.zzaod.zzaoa == null) {
                    throw new IllegalArgumentException("At least an argument must be provided");
                }
                return this.zzaod;
            }

            public Builder setNotification(Notification notification) {
                this.zzaod.mNotification = notification;
                return this;
            }

            public Builder setNotificationPendingIntent(PendingIntent pendingIntent) {
                this.zzaod.zzaoa = pendingIntent;
                return this;
            }

            public Builder setNotificationText(String str) {
                this.zzaod.zzaoc = str;
                return this;
            }

            public Builder setNotificationTitle(String str) {
                this.zzaod.zzaob = str;
                return this;
            }
        }

        private NotificationSettings() {
        }

        private NotificationSettings(NotificationSettings notificationSettings) {
            this.mNotification = notificationSettings.mNotification;
            this.zzaoa = notificationSettings.zzaoa;
            this.zzaob = notificationSettings.zzaob;
            this.zzaoc = notificationSettings.zzaoc;
        }
    }

    /* loaded from: classes2.dex */
    public static class Options {
        @CastRemoteDisplay.Configuration
        int zzanx = 2;

        public int getConfigPreset() {
            return this.zzanx;
        }

        public void setConfigPreset(@CastRemoteDisplay.Configuration int i) {
            this.zzanx = i;
        }
    }

    /* loaded from: classes2.dex */
    private class zza extends Binder {
        private zza() {
        }

        CastRemoteDisplayLocalService zzsw() {
            return CastRemoteDisplayLocalService.this;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class zzb extends BroadcastReceiver {
        private zzb() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (intent.getAction().equals("com.google.android.gms.cast.remote_display.ACTION_NOTIFICATION_DISCONNECT")) {
                CastRemoteDisplayLocalService.zzanA.zzb("disconnecting", new Object[0]);
                CastRemoteDisplayLocalService.stopService();
            }
        }
    }

    public static CastRemoteDisplayLocalService getInstance() {
        CastRemoteDisplayLocalService castRemoteDisplayLocalService;
        synchronized (zzanC) {
            castRemoteDisplayLocalService = zzanR;
        }
        return castRemoteDisplayLocalService;
    }

    protected static void setDebugEnabled() {
        zzanA.zzar(true);
    }

    public static void startService(Context context, Class<? extends CastRemoteDisplayLocalService> cls, String str, CastDevice castDevice, NotificationSettings notificationSettings, Callbacks callbacks) {
        startServiceWithOptions(context, cls, str, castDevice, new Options(), notificationSettings, callbacks);
    }

    public static void startServiceWithOptions(final Context context, Class<? extends CastRemoteDisplayLocalService> cls, final String str, final CastDevice castDevice, final Options options, final NotificationSettings notificationSettings, final Callbacks callbacks) {
        zzanA.zzb("Starting Service", new Object[0]);
        synchronized (zzanC) {
            if (zzanR != null) {
                zzanA.zzf("An existing service had not been stopped before starting one", new Object[0]);
                zzai(true);
            }
        }
        zza(context, cls);
        zzac.zzb(context, "activityContext is required.");
        zzac.zzb(cls, "serviceClass is required.");
        zzac.zzb(str, "applicationId is required.");
        zzac.zzb(castDevice, "device is required.");
        zzac.zzb(options, "options is required.");
        zzac.zzb(notificationSettings, "notificationSettings is required.");
        zzac.zzb(callbacks, "callbacks is required.");
        if (notificationSettings.mNotification == null && notificationSettings.zzaoa == null) {
            throw new IllegalArgumentException("notificationSettings: Either the notification or the notificationPendingIntent must be provided");
        }
        if (zzanD.getAndSet(true)) {
            zzanA.zzc("Service is already being started, startService has been called twice", new Object[0]);
            return;
        }
        Intent intent = new Intent(context, cls);
        context.startService(intent);
        context.bindService(intent, new ServiceConnection() { // from class: com.google.android.gms.cast.CastRemoteDisplayLocalService.4
            @Override // android.content.ServiceConnection
            public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
                CastRemoteDisplayLocalService zzsw = ((zza) iBinder).zzsw();
                if (zzsw == null || !zzsw.zza(str, castDevice, options, notificationSettings, context, this, callbacks)) {
                    CastRemoteDisplayLocalService.zzanA.zzc("Connected but unable to get the service instance", new Object[0]);
                    callbacks.onRemoteDisplaySessionError(new Status(CastStatusCodes.ERROR_SERVICE_CREATION_FAILED));
                    CastRemoteDisplayLocalService.zzanD.set(false);
                    try {
                        context.unbindService(this);
                    } catch (IllegalArgumentException e) {
                        CastRemoteDisplayLocalService.zzanA.zzb("No need to unbind service, already unbound", new Object[0]);
                    }
                }
            }

            @Override // android.content.ServiceConnection
            public void onServiceDisconnected(ComponentName componentName) {
                CastRemoteDisplayLocalService.zzanA.zzb("onServiceDisconnected", new Object[0]);
                callbacks.onRemoteDisplaySessionError(new Status(CastStatusCodes.ERROR_SERVICE_DISCONNECTED, "Service Disconnected"));
                CastRemoteDisplayLocalService.zzanD.set(false);
                try {
                    context.unbindService(this);
                } catch (IllegalArgumentException e) {
                    CastRemoteDisplayLocalService.zzanA.zzb("No need to unbind service, already unbound", new Object[0]);
                }
            }
        }, 64);
    }

    public static void stopService() {
        zzai(false);
    }

    private GoogleApiClient zza(CastDevice castDevice, Options options) {
        CastRemoteDisplay.CastRemoteDisplayOptions.Builder builder = new CastRemoteDisplay.CastRemoteDisplayOptions.Builder(castDevice, this.zzanF);
        if (options != null) {
            builder.setConfigPreset(options.zzanx);
        }
        return new GoogleApiClient.Builder(this, new GoogleApiClient.ConnectionCallbacks() { // from class: com.google.android.gms.cast.CastRemoteDisplayLocalService.10
            @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
            public void onConnected(Bundle bundle) {
                CastRemoteDisplayLocalService.this.zzbQ("onConnected");
                CastRemoteDisplayLocalService.this.zzsm();
            }

            @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
            public void onConnectionSuspended(int i) {
                CastRemoteDisplayLocalService.zzanA.zzf(String.format("[Instance: %s] ConnectionSuspended %d", this, Integer.valueOf(i)), new Object[0]);
            }
        }, new GoogleApiClient.OnConnectionFailedListener() { // from class: com.google.android.gms.cast.CastRemoteDisplayLocalService.2
            @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
            public void onConnectionFailed(ConnectionResult connectionResult) {
                CastRemoteDisplayLocalService castRemoteDisplayLocalService = CastRemoteDisplayLocalService.this;
                String valueOf = String.valueOf(connectionResult);
                castRemoteDisplayLocalService.zzbT(new StringBuilder(String.valueOf(valueOf).length() + 19).append("Connection failed: ").append(valueOf).toString());
                CastRemoteDisplayLocalService.this.zzso();
            }
        }).addApi(CastRemoteDisplay.API, builder.build()).build();
    }

    private static void zza(Context context, Class<? extends CastRemoteDisplayLocalService> cls) {
        try {
            ServiceInfo serviceInfo = context.getPackageManager().getServiceInfo(new ComponentName(context, cls), 128);
            if (serviceInfo == null || !serviceInfo.exported) {
                return;
            }
            throw new IllegalStateException("The service must not be exported, verify the manifest configuration");
        } catch (PackageManager.NameNotFoundException e) {
            throw new IllegalStateException("Service not found, did you forget to configure it in the manifest?");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(Display display) {
        this.zzOq = display;
        if (this.zzanJ) {
            this.mNotification = zzaj(true);
            startForeground(zzanB, this.mNotification);
        }
        if (this.zzanG != null) {
            this.zzanG.onRemoteDisplaySessionStarted(this);
            this.zzanG = null;
        }
        onCreatePresentation(this.zzOq);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(NotificationSettings notificationSettings) {
        zzac.zzdj("updateNotificationSettingsInternal must be called on the main thread");
        if (this.zzanI == null) {
            throw new IllegalStateException("No current notification settings to update");
        }
        if (!this.zzanJ) {
            zzac.zzb(notificationSettings.mNotification, "notification is required.");
            this.mNotification = notificationSettings.mNotification;
            this.zzanI.mNotification = this.mNotification;
        } else if (notificationSettings.mNotification != null) {
            throw new IllegalStateException("Current mode is default notification, notification attribute must not be provided");
        } else {
            if (notificationSettings.zzaoa != null) {
                this.zzanI.zzaoa = notificationSettings.zzaoa;
            }
            if (!TextUtils.isEmpty(notificationSettings.zzaob)) {
                this.zzanI.zzaob = notificationSettings.zzaob;
            }
            if (!TextUtils.isEmpty(notificationSettings.zzaoc)) {
                this.zzanI.zzaoc = notificationSettings.zzaoc;
            }
            this.mNotification = zzaj(true);
        }
        startForeground(zzanB, this.mNotification);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean zza(String str, CastDevice castDevice, Options options, NotificationSettings notificationSettings, Context context, ServiceConnection serviceConnection, Callbacks callbacks) {
        zzbQ("startRemoteDisplaySession");
        zzac.zzdj("Starting the Cast Remote Display must be done on the main thread");
        synchronized (zzanC) {
            if (zzanR != null) {
                zzanA.zzf("An existing service had not been stopped before starting one", new Object[0]);
                return false;
            }
            zzanR = this;
            this.zzanG = callbacks;
            this.zzamX = str;
            this.zzanL = castDevice;
            this.zzanM = context;
            this.zzanN = serviceConnection;
            this.zzanO = g.a(getApplicationContext());
            f a2 = new f.a().a(CastMediaControlIntent.categoryForCast(this.zzamX)).a();
            zzbQ("addMediaRouterCallback");
            this.zzanO.a(a2, this.zzanQ, 4);
            this.zzanF = new CastRemoteDisplay.CastRemoteDisplaySessionCallbacks(this) { // from class: com.google.android.gms.cast.CastRemoteDisplayLocalService.7
                @Override // com.google.android.gms.cast.CastRemoteDisplay.CastRemoteDisplaySessionCallbacks
                public void onRemoteDisplayEnded(Status status) {
                    CastRemoteDisplayLocalService.zzanA.zzb(String.format("Cast screen has ended: %d", Integer.valueOf(status.getStatusCode())), new Object[0]);
                    CastRemoteDisplayLocalService.zzai(false);
                }
            };
            this.mNotification = notificationSettings.mNotification;
            this.zzanH = new zzb();
            registerReceiver(this.zzanH, new IntentFilter("com.google.android.gms.cast.remote_display.ACTION_NOTIFICATION_DISCONNECT"));
            this.zzanI = new NotificationSettings(notificationSettings);
            if (this.zzanI.mNotification == null) {
                this.zzanJ = true;
                this.mNotification = zzaj(false);
            } else {
                this.zzanJ = false;
                this.mNotification = this.zzanI.mNotification;
            }
            startForeground(zzanB, this.mNotification);
            this.zzanE = zza(castDevice, options);
            this.zzanE.connect();
            if (this.zzanG != null) {
                this.zzanG.onServiceCreated(this);
            }
            return true;
        }
    }

    private void zzag(final boolean z) {
        if (this.mHandler != null) {
            if (Looper.myLooper() != Looper.getMainLooper()) {
                this.mHandler.post(new Runnable() { // from class: com.google.android.gms.cast.CastRemoteDisplayLocalService.5
                    @Override // java.lang.Runnable
                    public void run() {
                        CastRemoteDisplayLocalService.this.zzah(z);
                    }
                });
            } else {
                zzah(z);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzah(boolean z) {
        zzbQ("Stopping Service");
        zzac.zzdj("stopServiceInstanceInternal must be called on the main thread");
        if (!z && this.zzanO != null) {
            zzbQ("Setting default route");
            this.zzanO.a(this.zzanO.b());
        }
        if (this.zzanH != null) {
            zzbQ("Unregistering notification receiver");
            unregisterReceiver(this.zzanH);
        }
        zzsp();
        zzsq();
        zzsl();
        if (this.zzanE != null) {
            this.zzanE.disconnect();
            this.zzanE = null;
        }
        if (this.zzanM != null && this.zzanN != null) {
            try {
                this.zzanM.unbindService(this.zzanN);
            } catch (IllegalArgumentException e) {
                zzbQ("No need to unbind service, already unbound");
            }
            this.zzanN = null;
            this.zzanM = null;
        }
        this.zzamX = null;
        this.zzanE = null;
        this.mNotification = null;
        this.zzOq = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void zzai(boolean z) {
        zzanA.zzb("Stopping Service", new Object[0]);
        zzanD.set(false);
        synchronized (zzanC) {
            if (zzanR == null) {
                zzanA.zzc("Service is already being stopped", new Object[0]);
                return;
            }
            CastRemoteDisplayLocalService castRemoteDisplayLocalService = zzanR;
            zzanR = null;
            castRemoteDisplayLocalService.zzag(z);
        }
    }

    private Notification zzaj(boolean z) {
        int i;
        int i2;
        zzbQ("createDefaultNotification");
        int i3 = getApplicationInfo().labelRes;
        String str = this.zzanI.zzaob;
        String str2 = this.zzanI.zzaoc;
        if (z) {
            i = com.google.android.gms.R.string.cast_notification_connected_message;
            i2 = com.google.android.gms.R.drawable.cast_ic_notification_on;
        } else {
            i = com.google.android.gms.R.string.cast_notification_connecting_message;
            i2 = com.google.android.gms.R.drawable.cast_ic_notification_connecting;
        }
        if (TextUtils.isEmpty(str)) {
            str = getString(i3);
        }
        return new aj.d(this).a((CharSequence) str).b(TextUtils.isEmpty(str2) ? getString(i, new Object[]{this.zzanL.getFriendlyName()}) : str2).a(this.zzanI.zzaoa).a(i2).a(true).a(17301560, getString(com.google.android.gms.R.string.cast_notification_disconnect), zzsr()).a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzbQ(String str) {
        zzanA.zzb("[Instance: %s] %s", this, str);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzbT(String str) {
        zzanA.zzc("[Instance: %s] %s", this, str);
    }

    private static int zzsk() {
        return com.google.android.gms.R.id.cast_notification_id;
    }

    private void zzsl() {
        if (this.zzanO != null) {
            zzac.zzdj("CastRemoteDisplayLocalService calls must be done on the main thread");
            zzbQ("removeMediaRouterCallback");
            this.zzanO.a(this.zzanQ);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzsm() {
        zzbQ("startRemoteDisplay");
        if (this.zzanE == null || !this.zzanE.isConnected()) {
            zzanA.zzc("Unable to start the remote display as the API client is not ready", new Object[0]);
        } else {
            CastRemoteDisplay.CastRemoteDisplayApi.startRemoteDisplay(this.zzanE, this.zzamX).setResultCallback(new ResultCallback<CastRemoteDisplay.CastRemoteDisplaySessionResult>() { // from class: com.google.android.gms.cast.CastRemoteDisplayLocalService.8
                @Override // com.google.android.gms.common.api.ResultCallback
                /* renamed from: zza */
                public void onResult(CastRemoteDisplay.CastRemoteDisplaySessionResult castRemoteDisplaySessionResult) {
                    if (!castRemoteDisplaySessionResult.getStatus().isSuccess()) {
                        CastRemoteDisplayLocalService.zzanA.zzc("Connection was not successful", new Object[0]);
                        CastRemoteDisplayLocalService.this.zzso();
                        return;
                    }
                    CastRemoteDisplayLocalService.zzanA.zzb("startRemoteDisplay successful", new Object[0]);
                    synchronized (CastRemoteDisplayLocalService.zzanC) {
                        if (CastRemoteDisplayLocalService.zzanR == null) {
                            CastRemoteDisplayLocalService.zzanA.zzb("Remote Display started but session already cancelled", new Object[0]);
                            CastRemoteDisplayLocalService.this.zzso();
                        } else {
                            Display presentationDisplay = castRemoteDisplaySessionResult.getPresentationDisplay();
                            if (presentationDisplay != null) {
                                CastRemoteDisplayLocalService.this.zza(presentationDisplay);
                            } else {
                                CastRemoteDisplayLocalService.zzanA.zzc("Cast Remote Display session created without display", new Object[0]);
                            }
                            CastRemoteDisplayLocalService.zzanD.set(false);
                            if (CastRemoteDisplayLocalService.this.zzanM != null && CastRemoteDisplayLocalService.this.zzanN != null) {
                                try {
                                    CastRemoteDisplayLocalService.this.zzanM.unbindService(CastRemoteDisplayLocalService.this.zzanN);
                                } catch (IllegalArgumentException e) {
                                    CastRemoteDisplayLocalService.zzanA.zzb("No need to unbind service, already unbound", new Object[0]);
                                }
                                CastRemoteDisplayLocalService.this.zzanN = null;
                                CastRemoteDisplayLocalService.this.zzanM = null;
                            }
                        }
                    }
                }
            });
        }
    }

    private void zzsn() {
        zzbQ("stopRemoteDisplay");
        if (this.zzanE == null || !this.zzanE.isConnected()) {
            zzanA.zzc("Unable to stop the remote display as the API client is not ready", new Object[0]);
        } else {
            CastRemoteDisplay.CastRemoteDisplayApi.stopRemoteDisplay(this.zzanE).setResultCallback(new ResultCallback<CastRemoteDisplay.CastRemoteDisplaySessionResult>() { // from class: com.google.android.gms.cast.CastRemoteDisplayLocalService.9
                @Override // com.google.android.gms.common.api.ResultCallback
                /* renamed from: zza */
                public void onResult(CastRemoteDisplay.CastRemoteDisplaySessionResult castRemoteDisplaySessionResult) {
                    if (!castRemoteDisplaySessionResult.getStatus().isSuccess()) {
                        CastRemoteDisplayLocalService.this.zzbQ("Unable to stop the remote display, result unsuccessful");
                    } else {
                        CastRemoteDisplayLocalService.this.zzbQ("remote display stopped");
                    }
                    CastRemoteDisplayLocalService.this.zzOq = null;
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzso() {
        if (this.zzanG != null) {
            this.zzanG.onRemoteDisplaySessionError(new Status(CastStatusCodes.ERROR_SERVICE_CREATION_FAILED));
            this.zzanG = null;
        }
        stopService();
    }

    private void zzsp() {
        zzbQ("stopRemoteDisplaySession");
        zzsn();
        onDismissPresentation();
    }

    private void zzsq() {
        zzbQ("Stopping the remote display Service");
        stopForeground(true);
        stopSelf();
    }

    private PendingIntent zzsr() {
        if (this.zzanK == null) {
            Intent intent = new Intent("com.google.android.gms.cast.remote_display.ACTION_NOTIFICATION_DISCONNECT");
            intent.setPackage(this.zzanM.getPackageName());
            this.zzanK = PendingIntent.getBroadcast(this, 0, intent, DriveFile.MODE_READ_ONLY);
        }
        return this.zzanK;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.content.ContextWrapper, android.content.Context
    public Display getDisplay() {
        return this.zzOq;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        zzbQ("onBind");
        return this.zzanS;
    }

    @Override // android.app.Service
    public void onCreate() {
        zzbQ("onCreate");
        super.onCreate();
        this.mHandler = new Handler(getMainLooper());
        this.mHandler.postDelayed(new Runnable() { // from class: com.google.android.gms.cast.CastRemoteDisplayLocalService.3
            @Override // java.lang.Runnable
            public void run() {
                CastRemoteDisplayLocalService.this.zzbQ(new StringBuilder(59).append("onCreate after delay. The local service been started: ").append(CastRemoteDisplayLocalService.this.zzanP).toString());
                if (!CastRemoteDisplayLocalService.this.zzanP) {
                    CastRemoteDisplayLocalService.this.zzbT("The local service has not been been started, stopping it");
                    CastRemoteDisplayLocalService.this.stopSelf();
                }
            }
        }, 100L);
    }

    public abstract void onCreatePresentation(Display display);

    public abstract void onDismissPresentation();

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        zzbQ("onStartCommand");
        this.zzanP = true;
        return 2;
    }

    public void updateNotificationSettings(final NotificationSettings notificationSettings) {
        zzac.zzb(notificationSettings, "notificationSettings is required.");
        zzac.zzb(this.mHandler, "Service is not ready yet.");
        this.mHandler.post(new Runnable() { // from class: com.google.android.gms.cast.CastRemoteDisplayLocalService.6
            @Override // java.lang.Runnable
            public void run() {
                CastRemoteDisplayLocalService.this.zza(notificationSettings);
            }
        });
    }
}
