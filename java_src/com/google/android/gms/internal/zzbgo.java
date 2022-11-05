package com.google.android.gms.internal;

import android.content.Context;
import android.provider.Settings;
/* loaded from: classes2.dex */
public class zzbgo implements zzbcq {
    private final Context mContext;

    public zzbgo(Context context) {
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
        String zzbU = zzbU(this.mContext);
        if (zzbU == null) {
            zzbU = "";
        }
        return new zzbjb(zzbU);
    }

    protected String zzbU(Context context) {
        return Settings.Secure.getString(this.mContext.getContentResolver(), "android_id");
    }
}
