package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzte extends BroadcastReceiver {
    static final String zzagv = zzte.class.getName();
    private final zzsc zzadO;
    private boolean zzagw;
    private boolean zzagx;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzte(zzsc zzscVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzscVar);
        this.zzadO = zzscVar;
    }

    private Context getContext() {
        return this.zzadO.getContext();
    }

    private zzry zzmA() {
        return this.zzadO.zzmA();
    }

    private zztd zznS() {
        return this.zzadO.zznS();
    }

    private void zzpY() {
        zznS();
        zzmA();
    }

    public boolean isConnected() {
        if (!this.zzagw) {
            this.zzadO.zznS().zzbS("Connectivity unknown. Receiver not registered");
        }
        return this.zzagx;
    }

    public boolean isRegistered() {
        return this.zzagw;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        zzpY();
        String action = intent.getAction();
        this.zzadO.zznS().zza("NetworkBroadcastReceiver received action", action);
        if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            boolean zzqa = zzqa();
            if (this.zzagx == zzqa) {
                return;
            }
            this.zzagx = zzqa;
            zzmA().zzW(zzqa);
        } else if (!"com.google.analytics.RADIO_POWERED".equals(action)) {
            this.zzadO.zznS().zzd("NetworkBroadcastReceiver received unknown action", action);
        } else if (intent.hasExtra(zzagv)) {
        } else {
            zzmA().zznO();
        }
    }

    public void unregister() {
        if (!isRegistered()) {
            return;
        }
        this.zzadO.zznS().zzbP("Unregistering connectivity change receiver");
        this.zzagw = false;
        this.zzagx = false;
        try {
            getContext().unregisterReceiver(this);
        } catch (IllegalArgumentException e) {
            zznS().zze("Failed to unregister the network broadcast receiver", e);
        }
    }

    public void zzpX() {
        zzpY();
        if (this.zzagw) {
            return;
        }
        Context context = getContext();
        context.registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        IntentFilter intentFilter = new IntentFilter("com.google.analytics.RADIO_POWERED");
        intentFilter.addCategory(context.getPackageName());
        context.registerReceiver(this, intentFilter);
        this.zzagx = zzqa();
        this.zzadO.zznS().zza("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.zzagx));
        this.zzagw = true;
    }

    public void zzpZ() {
        int i = Build.VERSION.SDK_INT;
        Context context = getContext();
        Intent intent = new Intent("com.google.analytics.RADIO_POWERED");
        intent.addCategory(context.getPackageName());
        intent.putExtra(zzagv, true);
        context.sendOrderedBroadcast(intent, null);
    }

    protected boolean zzqa() {
        try {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) getContext().getSystemService("connectivity")).getActiveNetworkInfo();
            if (activeNetworkInfo != null) {
                if (activeNetworkInfo.isConnected()) {
                    return true;
                }
            }
            return false;
        } catch (SecurityException e) {
            return false;
        }
    }
}
