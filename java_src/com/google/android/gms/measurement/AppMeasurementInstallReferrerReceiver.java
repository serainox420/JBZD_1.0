package com.google.android.gms.measurement;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.internal.zzaub;
/* loaded from: classes2.dex */
public final class AppMeasurementInstallReferrerReceiver extends BroadcastReceiver implements zzaub.zza {
    private zzaub zzbqj;

    private zzaub zzJS() {
        if (this.zzbqj == null) {
            this.zzbqj = new zzaub(this);
        }
        return this.zzbqj;
    }

    @Override // com.google.android.gms.internal.zzaub.zza
    public void doStartService(Context context, Intent intent) {
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        zzJS().onReceive(context, intent);
    }
}
