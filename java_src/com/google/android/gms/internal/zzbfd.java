package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbfd extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        int i = 0;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length == 1 || zzbitVarArr.length == 2);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[0] instanceof zzbjb);
        String str = (String) ((zzbjb) zzbitVarArr[0]).zzTi();
        if (zzbitVarArr.length == 2) {
            i = (int) zzbcr.zzc(zzbitVarArr[1]);
        }
        return (i < 0 || i >= str.length()) ? new zzbjb("") : new zzbjb(String.valueOf(str.charAt(i)));
    }
}
