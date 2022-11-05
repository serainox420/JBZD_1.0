package com.google.android.gms.measurement;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.internal.zzaum;
/* loaded from: classes2.dex */
public final class AppMeasurementService extends Service implements zzaum.zza {
    private zzaum zzbqk;

    private zzaum zzJT() {
        if (this.zzbqk == null) {
            this.zzbqk = new zzaum(this);
        }
        return this.zzbqk;
    }

    @Override // com.google.android.gms.internal.zzaum.zza
    public boolean callServiceStopSelfResult(int i) {
        return stopSelfResult(i);
    }

    @Override // com.google.android.gms.internal.zzaum.zza
    public Context getContext() {
        return this;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        return zzJT().onBind(intent);
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        zzJT().onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        zzJT().onDestroy();
        super.onDestroy();
    }

    @Override // android.app.Service
    public void onRebind(Intent intent) {
        zzJT().onRebind(intent);
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        zzJT().onStartCommand(intent, i, i2);
        AppMeasurementReceiver.completeWakefulIntent(intent);
        return 2;
    }

    @Override // android.app.Service
    public boolean onUnbind(Intent intent) {
        return zzJT().onUnbind(intent);
    }
}
