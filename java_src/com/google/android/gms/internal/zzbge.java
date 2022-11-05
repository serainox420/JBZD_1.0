package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.internal.zzbcb;
/* loaded from: classes2.dex */
public class zzbge extends zzbcs {
    private final Context mContext;
    private final zzbcb.zzc zzbLx;

    public zzbge(Context context, zzbcb.zzc zzcVar) {
        this.mContext = (Context) com.google.android.gms.common.internal.zzac.zzw(context);
        this.zzbLx = zzcVar;
    }

    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        if (zzbitVarArr.length == 0 || zzbitVarArr[0] == zzbix.zzbMS) {
            return new zzbjb("");
        }
        Object obj = this.zzbLx.zzSp().zzQI().get("_ldl");
        if (obj == null) {
            return new zzbjb("");
        }
        zzbit<?> zzZ = zzbjc.zzZ(obj);
        if (!(zzZ instanceof zzbjb)) {
            return new zzbjb("");
        }
        String str = (String) ((zzbjb) zzZ).zzTi();
        if (!zzbbt.zzaj(str, "conv").equals(zzbcr.zzd(zzbitVarArr[0]))) {
            return new zzbjb("");
        }
        String zzaj = zzbbt.zzaj(str, zzbitVarArr.length > 1 ? zzbitVarArr[1] == zzbix.zzbMS ? null : zzbcr.zzd(zzbitVarArr[1]) : null);
        return zzaj != null ? new zzbjb(zzaj) : new zzbjb("");
    }
}
