package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzak;
import java.util.Map;
/* loaded from: classes2.dex */
class zzbk extends zzcd {
    private static final String ID = com.google.android.gms.internal.zzah.LESS_EQUALS.toString();

    public zzbk() {
        super(ID);
    }

    @Override // com.google.android.gms.tagmanager.zzcd
    protected boolean zza(zzdk zzdkVar, zzdk zzdkVar2, Map<String, zzak.zza> map) {
        return zzdkVar.compareTo(zzdkVar2) <= 0;
    }
}
