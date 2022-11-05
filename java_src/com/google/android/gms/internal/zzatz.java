package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzatz extends BroadcastReceiver {
    static final String zzagv = zzatz.class.getName();
    private boolean zzagw;
    private boolean zzagx;
    private final zzaue zzbqc;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzatz(zzaue zzaueVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzaueVar);
        this.zzbqc = zzaueVar;
    }

    private Context getContext() {
        return this.zzbqc.getContext();
    }

    private zzatx zzKl() {
        return this.zzbqc.zzKl();
    }

    public boolean isRegistered() {
        this.zzbqc.zzmR();
        return this.zzagw;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        this.zzbqc.zzob();
        String action = intent.getAction();
        zzKl().zzMe().zzj("NetworkBroadcastReceiver received action", action);
        if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
            zzKl().zzMa().zzj("NetworkBroadcastReceiver received unknown action", action);
            return;
        }
        final boolean zzqa = this.zzbqc.zzMy().zzqa();
        if (this.zzagx == zzqa) {
            return;
        }
        this.zzagx = zzqa;
        this.zzbqc.zzKk().zzm(new Runnable() { // from class: com.google.android.gms.internal.zzatz.1
            @Override // java.lang.Runnable
            public void run() {
                zzatz.this.zzbqc.zzW(zzqa);
            }
        });
    }

    public void unregister() {
        this.zzbqc.zzob();
        this.zzbqc.zzmR();
        if (!isRegistered()) {
            return;
        }
        zzKl().zzMe().log("Unregistering connectivity change receiver");
        this.zzagw = false;
        this.zzagx = false;
        try {
            getContext().unregisterReceiver(this);
        } catch (IllegalArgumentException e) {
            zzKl().zzLY().zzj("Failed to unregister the network broadcast receiver", e);
        }
    }

    public void zzpX() {
        this.zzbqc.zzob();
        this.zzbqc.zzmR();
        if (this.zzagw) {
            return;
        }
        getContext().registerReceiver(this, new IntentFilter("android.net.conn.CONNECTIVITY_CHANGE"));
        this.zzagx = this.zzbqc.zzMy().zzqa();
        zzKl().zzMe().zzj("Registering connectivity change receiver. Network connected", Boolean.valueOf(this.zzagx));
        this.zzagw = true;
    }
}
