package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzak;
import java.util.Map;
/* loaded from: classes2.dex */
class zzag extends zzdg {
    private static final String ID = com.google.android.gms.internal.zzah.ENDS_WITH.toString();

    public zzag() {
        super(ID);
    }

    @Override // com.google.android.gms.tagmanager.zzdg
    protected boolean zza(String str, String str2, Map<String, zzak.zza> map) {
        return str.endsWith(str2);
    }
}
