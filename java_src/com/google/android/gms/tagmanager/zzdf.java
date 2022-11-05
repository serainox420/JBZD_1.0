package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzak;
import java.util.Map;
/* loaded from: classes2.dex */
class zzdf extends zzdg {
    private static final String ID = com.google.android.gms.internal.zzah.STARTS_WITH.toString();

    public zzdf() {
        super(ID);
    }

    @Override // com.google.android.gms.tagmanager.zzdg
    protected boolean zza(String str, String str2, Map<String, zzak.zza> map) {
        return str.startsWith(str2);
    }
}
