package com.google.android.gms.internal;

import android.content.ComponentName;
import android.support.customtabs.b;
import android.support.customtabs.d;
import java.lang.ref.WeakReference;
/* loaded from: classes2.dex */
public class zzbyb extends d {
    private WeakReference<zzbyc> zzcwd;

    public zzbyb(zzbyc zzbycVar) {
        this.zzcwd = new WeakReference<>(zzbycVar);
    }

    @Override // android.support.customtabs.d
    public void onCustomTabsServiceConnected(ComponentName componentName, b bVar) {
        zzbyc zzbycVar = this.zzcwd.get();
        if (zzbycVar != null) {
            zzbycVar.zza(bVar);
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        zzbyc zzbycVar = this.zzcwd.get();
        if (zzbycVar != null) {
            zzbycVar.zzfI();
        }
    }
}
