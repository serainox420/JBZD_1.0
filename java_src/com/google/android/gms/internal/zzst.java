package com.google.android.gms.internal;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
/* loaded from: classes2.dex */
public class zzst extends zzsa {
    private boolean zzafg;
    private boolean zzafh;
    private AlarmManager zzafi;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzst(zzsc zzscVar) {
        super(zzscVar);
        this.zzafi = (AlarmManager) getContext().getSystemService("alarm");
    }

    private PendingIntent zzpE() {
        Intent intent = new Intent("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
        intent.setComponent(new ComponentName(getContext(), "com.google.android.gms.analytics.AnalyticsReceiver"));
        return PendingIntent.getBroadcast(getContext(), 0, intent, 0);
    }

    public void cancel() {
        zzob();
        this.zzafh = false;
        this.zzafi.cancel(zzpE());
    }

    public void schedule() {
        zzob();
        com.google.android.gms.common.internal.zzac.zza(zzpD(), "Receiver not registered");
        long zzpe = zznT().zzpe();
        if (zzpe > 0) {
            cancel();
            long elapsedRealtime = zznR().elapsedRealtime() + zzpe;
            this.zzafh = true;
            this.zzafi.setInexactRepeating(2, elapsedRealtime, 0L, zzpE());
        }
    }

    public boolean zzcy() {
        return this.zzafh;
    }

    @Override // com.google.android.gms.internal.zzsa
    protected void zzmS() {
        ActivityInfo receiverInfo;
        try {
            this.zzafi.cancel(zzpE());
            if (zznT().zzpe() <= 0 || (receiverInfo = getContext().getPackageManager().getReceiverInfo(new ComponentName(getContext(), "com.google.android.gms.analytics.AnalyticsReceiver"), 2)) == null || !receiverInfo.enabled) {
                return;
            }
            zzbP("Receiver registered. Using alarm for local dispatch.");
            this.zzafg = true;
        } catch (PackageManager.NameNotFoundException e) {
        }
    }

    public boolean zzpD() {
        return this.zzafg;
    }
}
