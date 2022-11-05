package com.google.android.gms.internal;

import android.content.Context;
import android.telephony.TelephonyManager;
/* loaded from: classes2.dex */
public class zzbgj implements zzbcq {
    private final Context mContext;

    public zzbgj(Context context) {
        this.mContext = (Context) com.google.android.gms.common.internal.zzac.zzw(context);
    }

    @Override // com.google.android.gms.internal.zzbcq
    public zzbit<?> zzb(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        String networkOperatorName;
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        if (zzbitVarArr.length != 0) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        TelephonyManager telephonyManager = (TelephonyManager) this.mContext.getSystemService("phone");
        return (telephonyManager == null || (networkOperatorName = telephonyManager.getNetworkOperatorName()) == null) ? zzbix.zzbMS : new zzbjb(networkOperatorName);
    }
}
