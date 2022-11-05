package com.google.android.gms.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.internal.zzth;
/* loaded from: classes2.dex */
public final class AnalyticsReceiver extends BroadcastReceiver {
    private zzth zzabp;

    private zzth zzmp() {
        if (this.zzabp == null) {
            this.zzabp = new zzth();
        }
        return this.zzabp;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        zzmp().onReceive(context, intent);
    }
}
