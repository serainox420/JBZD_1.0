package com.google.android.gms.internal;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
/* loaded from: classes2.dex */
public class zzbhf extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        int i;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length >= 2);
        if (zzbitVarArr[0] == zzbix.zzbMS || zzbitVarArr[1] == zzbix.zzbMS) {
            return zzbix.zzbMS;
        }
        String zzd = zzbcr.zzd(zzbitVarArr[0]);
        String zzd2 = zzbcr.zzd(zzbitVarArr[1]);
        int i2 = 64;
        if (zzbitVarArr.length > 2 && zzbitVarArr[2] != zzbix.zzbMS && zzbcr.zza(zzbitVarArr[2])) {
            i2 = 66;
        }
        if (zzbitVarArr.length <= 3 || zzbitVarArr[3] == zzbix.zzbMS) {
            i = 1;
        } else if (!(zzbitVarArr[3] instanceof zzbiv)) {
            return zzbix.zzbMS;
        } else {
            double zzc = zzbcr.zzc(zzbitVarArr[3]);
            if (Double.isInfinite(zzc) || zzc < 0.0d) {
                return zzbix.zzbMS;
            }
            i = (int) zzc;
        }
        String str = null;
        try {
            Matcher matcher = Pattern.compile(zzd2, i2).matcher(zzd);
            if (matcher.find() && matcher.groupCount() >= i) {
                str = matcher.group(i);
            }
            return str == null ? zzbix.zzbMS : new zzbjb(str);
        } catch (PatternSyntaxException e) {
            return zzbix.zzbMS;
        }
    }
}
