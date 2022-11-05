package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzak;
import java.util.Map;
/* loaded from: classes2.dex */
class zzn extends zzam {
    private static final String ID = com.google.android.gms.internal.zzah.CONSTANT.toString();
    private static final String VALUE = com.google.android.gms.internal.zzai.VALUE.toString();

    public zzn() {
        super(ID, VALUE);
    }

    public static String zzQd() {
        return ID;
    }

    public static String zzQe() {
        return VALUE;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public boolean zzQb() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public zzak.zza zzZ(Map<String, zzak.zza> map) {
        return map.get(VALUE);
    }
}
