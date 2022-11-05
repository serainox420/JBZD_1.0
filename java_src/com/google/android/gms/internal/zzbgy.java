package com.google.android.gms.internal;

import java.util.Locale;
/* loaded from: classes2.dex */
public class zzbgy implements zzbcq {
    @Override // com.google.android.gms.internal.zzbcq
    public zzbit<?> zzb(zzbcd zzbcdVar, zzbit<?>... zzbitVarArr) {
        String language;
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(zzbitVarArr != null);
        if (zzbitVarArr.length != 0) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        Locale locale = Locale.getDefault();
        if (locale != null && (language = locale.getLanguage()) != null) {
            return new zzbjb(language.toLowerCase());
        }
        return new zzbjb("");
    }
}
