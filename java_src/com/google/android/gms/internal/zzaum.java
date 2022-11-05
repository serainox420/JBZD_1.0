package com.google.android.gms.internal;

import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
/* loaded from: classes2.dex */
public final class zzaum {
    private final Context mContext;
    private final Handler mHandler;
    private final zza zzbvT;

    /* loaded from: classes2.dex */
    public interface zza {
        boolean callServiceStopSelfResult(int i);

        Context getContext();
    }

    public zzaum(zza zzaVar) {
        this.mContext = zzaVar.getContext();
        com.google.android.gms.common.internal.zzac.zzw(this.mContext);
        this.zzbvT = zzaVar;
        this.mHandler = new Handler();
    }

    private zzatx zzKl() {
        return zzaue.zzbM(this.mContext).zzKl();
    }

    public static boolean zzj(Context context, boolean z) {
        com.google.android.gms.common.internal.zzac.zzw(context);
        return zzaut.zzy(context, z ? "com.google.android.gms.measurement.PackageMeasurementService" : "com.google.android.gms.measurement.AppMeasurementService");
    }

    public IBinder onBind(Intent intent) {
        if (intent == null) {
            zzKl().zzLY().log("onBind called with null intent");
            return null;
        }
        String action = intent.getAction();
        if ("com.google.android.gms.measurement.START".equals(action)) {
            return new zzauf(zzaue.zzbM(this.mContext));
        }
        zzKl().zzMa().zzj("onBind received unknown action", action);
        return null;
    }

    public void onCreate() {
        zzaue zzbM = zzaue.zzbM(this.mContext);
        zzatx zzKl = zzbM.zzKl();
        zzbM.zzKn().zzLg();
        zzKl.zzMe().log("Local AppMeasurementService is starting up");
    }

    public void onDestroy() {
        zzaue zzbM = zzaue.zzbM(this.mContext);
        zzatx zzKl = zzbM.zzKl();
        zzbM.zzKn().zzLg();
        zzKl.zzMe().log("Local AppMeasurementService is shutting down");
    }

    public void onRebind(Intent intent) {
        if (intent == null) {
            zzKl().zzLY().log("onRebind called with null intent");
            return;
        }
        zzKl().zzMe().zzj("onRebind called. action", intent.getAction());
    }

    public int onStartCommand(Intent intent, int i, final int i2) {
        final zzaue zzbM = zzaue.zzbM(this.mContext);
        final zzatx zzKl = zzbM.zzKl();
        if (intent == null) {
            zzKl.zzMa().log("AppMeasurementService started with null intent");
        } else {
            String action = intent.getAction();
            zzbM.zzKn().zzLg();
            zzKl.zzMe().zze("Local AppMeasurementService called. startId, action", Integer.valueOf(i2), action);
            if ("com.google.android.gms.measurement.UPLOAD".equals(action)) {
                zzbM.zzKk().zzm(new Runnable() { // from class: com.google.android.gms.internal.zzaum.1
                    @Override // java.lang.Runnable
                    public void run() {
                        zzbM.zzML();
                        zzbM.zzMG();
                        zzaum.this.mHandler.post(new Runnable() { // from class: com.google.android.gms.internal.zzaum.1.1
                            @Override // java.lang.Runnable
                            public void run() {
                                if (zzaum.this.zzbvT.callServiceStopSelfResult(i2)) {
                                    zzbM.zzKn().zzLg();
                                    zzKl.zzMe().log("Local AppMeasurementService processed last upload request");
                                }
                            }
                        });
                    }
                });
            }
        }
        return 2;
    }

    public boolean onUnbind(Intent intent) {
        if (intent == null) {
            zzKl().zzLY().log("onUnbind called with null intent");
        } else {
            zzKl().zzMe().zzj("onUnbind called for intent. action", intent.getAction());
        }
        return true;
    }
}
