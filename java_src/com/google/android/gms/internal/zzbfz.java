package com.google.android.gms.internal;

import org.json.JSONArray;
import org.json.JSONException;
/* loaded from: classes2.dex */
public class zzbfz extends zzbcs {
    private final int zzakD;
    private final zzbcd zzbKh;

    public zzbfz(int i, zzbcd zzbcdVar) {
        this.zzakD = i;
        this.zzbKh = zzbcdVar;
    }

    @Override // com.google.android.gms.internal.zzbcs
    public zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        if (zzbitVarArr.length != 1) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[0] instanceof zzbjb);
        try {
            zzbcp zzX = zzbhz.zzX(new JSONArray((String) ((zzbjb) zzbitVarArr[0]).zzTi()).getJSONArray(0));
            zzX.zza(this.zzbKh);
            return this.zzakD == 0 ? zzbix.zzbMS : zzX.zzb(zzbcdVar, new zzbit[0]);
        } catch (JSONException e) {
            zzbbu.zzb("Unable to convert Custom Pixie to instruction", e);
            return zzbix.zzbMS;
        }
    }
}
