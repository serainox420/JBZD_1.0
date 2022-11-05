package com.google.android.gms.cast.framework.media;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.internal.zzwv;
import com.google.android.gms.internal.zzyz;
/* loaded from: classes2.dex */
public class MediaNotificationService extends Service {
    public static final String ACTION_UPDATE_NOTIFICATION = "com.google.android.gms.cast.framework.action.UPDATE_NOTIFICATION";
    private static final zzyz zzapV = new zzyz("MediaNotificationService");
    private zzc zzarU;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        try {
            return this.zzarU.onBind(intent);
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "onBind", zzc.class.getSimpleName());
            return null;
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        this.zzarU = zzwv.zza(this, CastContext.getSharedInstance(this).zzsE(), com.google.android.gms.dynamic.zzd.zzA(null), CastContext.getSharedInstance(this).getCastOptions().getCastMediaOptions());
        try {
            this.zzarU.onCreate();
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "onCreate", zzc.class.getSimpleName());
        }
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        try {
            this.zzarU.onDestroy();
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "onDestroy", zzc.class.getSimpleName());
        }
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        try {
            return this.zzarU.onStartCommand(intent, i, i2);
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "onStartCommand", zzc.class.getSimpleName());
            return 1;
        }
    }
}
