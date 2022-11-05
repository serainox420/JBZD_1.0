package com.google.android.gms.measurement;

import android.content.Context;
import android.content.Intent;
import android.support.v4.content.WakefulBroadcastReceiver;
import com.google.android.gms.internal.zzaub;
/* loaded from: classes2.dex */
public final class AppMeasurementReceiver extends WakefulBroadcastReceiver implements zzaub.zza {
    private zzaub zzbqj;

    private zzaub zzJS() {
        if (this.zzbqj == null) {
            this.zzbqj = new zzaub(this);
        }
        return this.zzbqj;
    }

    @Override // com.google.android.gms.internal.zzaub.zza
    public void doStartService(Context context, Intent intent) {
        startWakefulService(context, intent);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        zzJS().onReceive(context, intent);
    }
}
