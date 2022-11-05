package com.google.android.gms.internal;

import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;
/* loaded from: classes2.dex */
public class zzbhr extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length == 2 || zzbitVarArr.length == 3);
        try {
            return new zzbiu(Boolean.valueOf(Pattern.compile(zzbcr.zzd(zzbitVarArr[1]), zzbitVarArr.length < 3 ? false : "true".equalsIgnoreCase(zzbcr.zzd(zzbitVarArr[2])) ? 66 : 64).matcher(zzbcr.zzd(zzbitVarArr[0])).find()));
        } catch (PatternSyntaxException e) {
            return new zzbiu(false);
        }
    }
}
