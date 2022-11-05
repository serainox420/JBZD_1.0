package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
/* loaded from: classes2.dex */
class zzbbw extends BroadcastReceiver {
    static final String zzagv = zzbbw.class.getName();
    private final zzbcf zzbJS;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbbw(zzbcf zzbcfVar) {
        this.zzbJS = zzbcfVar;
    }

    public static void zzcc(Context context) {
        Intent intent = new Intent("com.google.analytics.RADIO_POWERED");
        intent.addCategory(context.getPackageName());
        intent.putExtra(zzagv, true);
        context.sendBroadcast(intent);
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        String action = intent.getAction();
        if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            if (!"com.google.analytics.RADIO_POWERED".equals(action) || intent.hasExtra(zzagv)) {
                return;
            }
            this.zzbJS.zznO();
            return;
        }
        Bundle extras = intent.getExtras();
        Boolean bool = Boolean.FALSE;
        if (extras != null) {
            bool = Boolean.valueOf(intent.getExtras().getBoolean("noConnectivity"));
        }
        this.zzbJS.zzaT(!bool.booleanValue());
    }

    public void zzcb(Context context) {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        context.registerReceiver(this, intentFilter);
        IntentFilter intentFilter2 = new IntentFilter();
        intentFilter2.addAction("com.google.analytics.RADIO_POWERED");
        intentFilter2.addCategory(context.getPackageName());
        context.registerReceiver(this, intentFilter2);
    }
}
