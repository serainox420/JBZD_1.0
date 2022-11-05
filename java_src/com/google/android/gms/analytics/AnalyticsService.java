package com.google.android.gms.analytics;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.IBinder;
import com.google.android.gms.internal.zzti;
/* loaded from: classes2.dex */
public final class AnalyticsService extends Service implements zzti.zza {
    private zzti zzabq;

    private zzti zzmq() {
        if (this.zzabq == null) {
            this.zzabq = new zzti(this);
        }
        return this.zzabq;
    }

    @Override // com.google.android.gms.internal.zzti.zza
    public boolean callServiceStopSelfResult(int i) {
        return stopSelfResult(i);
    }

    @Override // com.google.android.gms.internal.zzti.zza
    public Context getContext() {
        return this;
    }

    @Override // android.app.Service
    public IBinder onBind(Intent intent) {
        zzmq();
        return null;
    }

    @Override // android.app.Service
    public void onCreate() {
        super.onCreate();
        zzmq().onCreate();
    }

    @Override // android.app.Service
    public void onDestroy() {
        zzmq().onDestroy();
        super.onDestroy();
    }

    @Override // android.app.Service
    public int onStartCommand(Intent intent, int i, int i2) {
        return zzmq().onStartCommand(intent, i, i2);
    }
}
