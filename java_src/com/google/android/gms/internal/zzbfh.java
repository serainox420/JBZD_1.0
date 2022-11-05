package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public class zzbfh extends zzbcs {
    @Override // com.google.android.gms.internal.zzbcs
    protected zzbit<?> zza(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr.length == 1 || zzbitVarArr.length == 2);
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr[0] instanceof zzbjb);
        Matcher matcher = Pattern.compile(zzbitVarArr.length < 2 ? "" : zzbcr.zzd(zzbitVarArr[1])).matcher((String) ((zzbjb) zzbitVarArr[0]).zzTi());
        if (matcher.find()) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new zzbjb(matcher.group()));
            return new zzbiy(arrayList);
        }
        return zzbix.zzbMR;
    }
}
