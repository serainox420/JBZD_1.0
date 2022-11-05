package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbfk extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length > 0 && zzbitVarArr.length <= 3);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[0] instanceof zzbjb);
        String str = (String) ((zzbjb) zzbitVarArr[0]).zzTi();
        double zzc = zzbitVarArr.length < 2 ? 0.0d : zzbcr.zzc(zzbitVarArr[1]);
        double length = str.length();
        if (zzbitVarArr.length == 3 && zzbitVarArr[2] != zzbix.zzbMS) {
            length = zzbcr.zzc(zzbitVarArr[2]);
        }
        int max = zzc < 0.0d ? (int) Math.max(zzc + str.length(), 0.0d) : (int) Math.min(zzc, str.length());
        return new zzbjb(str.substring(max, Math.max(0, (length < 0.0d ? (int) Math.max(str.length() + length, 0.0d) : (int) Math.min(length, str.length())) - max) + max));
    }
}
