package com.google.android.gms.internal;

import java.io.UnsupportedEncodingException;
/* loaded from: classes2.dex */
public class zzbfu extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        try {
            return new zzbjb(zzbft.decode(zzbcr.zzd(zzbitVarArr.length > 0 ? (zzbit) com.google.android.gms.common.internal.zzac.zzw(zzbitVarArr[0]) : zzbix.zzbMS), ""));
        } catch (UnsupportedEncodingException e) {
            return zzbix.zzbMS;
        }
    }
}
