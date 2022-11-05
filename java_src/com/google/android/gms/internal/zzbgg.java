package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageManager;
/* loaded from: classes2.dex */
public class zzbgg implements zzbcq {
    private Context mContext;

    public zzbgg(Context context) {
        this.mContext = context;
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
            PackageManager packageManager = this.mContext.getPackageManager();
            return new zzbjb(packageManager.getApplicationLabel(packageManager.getApplicationInfo(this.mContext.getPackageName(), 0)).toString());
        } catch (PackageManager.NameNotFoundException e) {
            return new zzbjb("");
        }
    }
}
