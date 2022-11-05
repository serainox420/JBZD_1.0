package com.google.android.gms.cast.framework;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.internal.zzwv;
import com.google.android.gms.internal.zzyz;
/* loaded from: classes2.dex */
public class ReconnectionService extends Service {
    private static final zzyz zzapV = new zzyz("ReconnectionService");
    private zzl zzaqC;

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        try {
            return this.zzaqC.onBind(intent);
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "onBind", zzl.class.getSimpleName());
            return null;
        }
    }

    @Override // android.app.Service
    public void onCreate() {
        CastContext sharedInstance = CastContext.getSharedInstance(this);
        this.zzaqC = zzwv.zza(this, sharedInstance.getSessionManager().zzsE(), sharedInstance.zzsD().zzsE());
        try {
            this.zzaqC.onCreate();
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "onCreate", zzl.class.getSimpleName());
        }
        super.onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        try {
            this.zzaqC.onDestroy();
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "onDestroy", zzl.class.getSimpleName());
        }
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        try {
            return this.zzaqC.onStartCommand(intent, i, i2);
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "onStartCommand", zzl.class.getSimpleName());
            return 1;
        }
    }
}
