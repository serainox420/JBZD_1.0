package com.google.android.gms.tagmanager;

import android.os.Build;
import com.google.android.gms.internal.zzak;
import java.util.Map;
/* loaded from: classes2.dex */
class zzcf extends zzam {
    private static final String ID = com.google.android.gms.internal.zzah.OS_VERSION.toString();

    public zzcf() {
        super(ID, new String[0]);
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public boolean zzQb() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public zzak.zza zzZ(Map<String, zzak.zza> map) {
        return zzdl.zzR(Build.VERSION.RELEASE);
    }
}
