package com.google.android.gms.internal;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
/* loaded from: classes2.dex */
public final class zzaaz extends BroadcastReceiver {
    protected Context mContext;
    private final zza zzaCL;

    /* loaded from: classes2.dex */
    public static abstract class zza {
        public abstract void zzvE();
    }

    public zzaaz(zza zzaVar) {
        this.zzaCL = zzaVar;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        Uri data = intent.getData();
        String str = null;
        if (data != null) {
            str = data.getSchemeSpecificPart();
        }
        if ("com.google.android.gms".equals(str)) {
            this.zzaCL.zzvE();
            unregister();
        }
    }

    public void setContext(Context context) {
        this.mContext = context;
    }

    public synchronized void unregister() {
        if (this.mContext != null) {
            this.mContext.unregisterReceiver(this);
        }
        this.mContext = null;
    }
}
