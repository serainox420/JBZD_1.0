package com.google.android.gms.internal;

import android.content.Context;
import android.provider.Settings;
/* loaded from: classes2.dex */
public class zzbhb implements zzbcq {
    private final Context mContext;

    public zzbhb(Context context) {
        this.mContext = (Context) com.google.android.gms.common.internal.zzac.zzw(context);
    }

    public String zzSC() {
        return Settings.Secure.getString(this.mContext.getContentResolver(), "android_id");
    }

    @Override // com.google.android.gms.internal.zzbcq
    public zzbit<?> zzb(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        if (zzbitVarArr.length != 0) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        String zzSC = zzSC();
        return zzSC != null ? new zzbjb(zzSC) : zzbix.zzbMS;
    }
}
