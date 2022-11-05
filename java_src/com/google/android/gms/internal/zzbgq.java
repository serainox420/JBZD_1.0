package com.google.android.gms.internal;

import android.os.Build;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
/* loaded from: classes2.dex */
public class zzbgq implements zzbcq {
    private final String zzbLA = Build.MANUFACTURER;
    private final String zzbLB = Build.MODEL;

    @Override // com.google.android.gms.internal.zzbcq
    public zzbit<?> zzb(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        if (zzbitVarArr.length != 0) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        String str = this.zzbLA;
        String str2 = this.zzbLB;
        if (!str2.startsWith(str) && !str.equals("unknown")) {
            str2 = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length()).append(str).append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR).append(str2).toString();
        }
        return new zzbjb(str2);
    }
}
