package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageManager;
/* loaded from: classes2.dex */
public class zzbgi implements zzbcq {
    private final Context mContext;

    public zzbgi(Context context) {
        this.mContext = (Context) com.google.android.gms.common.internal.zzac.zzw(context);
    }

    @Override // com.google.android.gms.internal.zzbcq
    public zzbit<?> zzb(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        if (zzbitVarArr.length != 0) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        try {
            return new zzbjb(this.mContext.getPackageManager().getPackageInfo(this.mContext.getPackageName(), 0).versionName);
        } catch (PackageManager.NameNotFoundException e) {
            String valueOf = String.valueOf(this.mContext.getPackageName());
            String valueOf2 = String.valueOf(e);
            zzbbu.e(new StringBuilder(String.valueOf(valueOf).length() + 25 + String.valueOf(valueOf2).length()).append("Package name ").append(valueOf).append(" not found. ").append(valueOf2).toString());
            return zzbix.zzbMS;
        }
    }
}
