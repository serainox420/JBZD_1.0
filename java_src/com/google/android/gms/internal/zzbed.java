package com.google.android.gms.internal;
/* loaded from: classes2.dex */
public class zzbed extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length == 2);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[0] instanceof zzbjb);
        String str = (String) ((zzbjb) zzbitVarArr[0]).zzTi();
        if (zzbcdVar.has(str)) {
            zzbcdVar.zzb(str, zzbitVarArr[1]);
            return zzbitVarArr[1];
        }
        String valueOf = String.valueOf(str);
        throw new IllegalStateException(valueOf.length() != 0 ? "Attempting to assign to undefined variable ".concat(valueOf) : new String("Attempting to assign to undefined variable "));
    }
}
