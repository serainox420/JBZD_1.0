package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbeb extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length == 1);
        com.google.android.gms.common.internal.zzac.zzax(!(zzbitVarArr[0] instanceof zzbja));
        if (zzbjc.zzo(zzbitVarArr[0])) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        zzbit<?> zzbitVar = zzbitVarArr[0];
        String str = "object";
        if (zzbitVar == zzbix.zzbMS) {
            str = "undefined";
        } else if (zzbitVar instanceof zzbiu) {
            str = "boolean";
        } else if (zzbitVar instanceof zzbiv) {
            str = "number";
        } else if (zzbitVar instanceof zzbjb) {
            str = "string";
        } else if (zzbitVar instanceof zzbiw) {
            str = "function";
        }
        return new zzbjb(str);
    }
}
