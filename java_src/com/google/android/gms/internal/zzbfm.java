package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbfm extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length > 0 && zzbitVarArr.length <= 3);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[0] instanceof zzbjb);
        String str = (String) ((zzbjb) zzbitVarArr[0]).zzTi();
        int zzc = (int) zzbcr.zzc(zzbitVarArr.length < 2 ? zzbix.zzbMS : zzbitVarArr[1]);
        int length = str.length();
        if (zzbitVarArr.length == 3 && zzbitVarArr[2] != zzbix.zzbMS) {
            length = (int) zzbcr.zzc(zzbjc.zza(zzbcdVar, zzbitVarArr[2]));
        }
        int min = Math.min(Math.max(zzc, 0), str.length());
        int min2 = Math.min(Math.max(length, 0), str.length());
        return new zzbjb(str.substring(Math.min(min, min2), Math.max(min, min2)));
    }
}
