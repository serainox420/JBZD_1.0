package com.google.android.gms.internal;

import android.net.Uri;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzbhv extends zzbcs {
    private final zzbbm zzbLG;

    public zzbhv(zzbbm zzbbmVar) {
        this.zzbLG = zzbbmVar;
    }

    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        boolean z = false;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length >= 1);
        zzbit<?> zzbitVar = zzbitVarArr[0];
        com.google.android.gms.common.internal.zzac.zzax(!(zzbitVar instanceof zzbix));
        zzbix zzbixVar = zzbitVarArr.length > 1 ? zzbitVarArr[1] : zzbix.zzbMS;
        com.google.android.gms.common.internal.zzac.zzax(zzbixVar == zzbix.zzbMS || (zzbixVar instanceof zzbiy));
        zzbix zzbixVar2 = zzbitVarArr.length > 2 ? zzbitVarArr[2] : zzbix.zzbMS;
        if (zzbixVar2 == zzbix.zzbMS || !(zzbixVar2 instanceof zzbix)) {
            z = true;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        Uri.Builder buildUpon = Uri.parse(zzbcr.zzd(zzbitVar)).buildUpon();
        if (zzbixVar != zzbix.zzbMS) {
            for (zzbit<?> zzbitVar2 : ((zzbiy) zzbixVar).zzTi()) {
                com.google.android.gms.common.internal.zzac.zzax(zzbitVar2 instanceof zzbiz);
                for (Map.Entry<String, zzbit<?>> entry : ((zzbiz) zzbitVar2).zzTi().entrySet()) {
                    buildUpon.appendQueryParameter(entry.getKey().toString(), zzbcr.zzd(zzbjc.zza(zzbcdVar, entry.getValue())));
                }
            }
        }
        String uri = buildUpon.build().toString();
        if (zzbixVar2 == zzbix.zzbMS) {
            this.zzbLG.zzhf(uri);
            String valueOf = String.valueOf(uri);
            zzbbu.v(valueOf.length() != 0 ? "SendPixel: url = ".concat(valueOf) : new String("SendPixel: url = "));
        } else {
            String zzd = zzbcr.zzd(zzbixVar2);
            this.zzbLG.zzak(uri, zzd);
            zzbbu.v(new StringBuilder(String.valueOf(uri).length() + 30 + String.valueOf(zzd).length()).append("SendPixel: url = ").append(uri).append(", uniqueId = ").append(zzd).toString());
        }
        return zzbix.zzbMS;
    }
}
