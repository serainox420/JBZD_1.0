package com.google.android.gms.tagmanager;

import android.os.Build;
import com.google.android.gms.internal.zzak;
import java.util.Map;
/* loaded from: classes2.dex */
class zzcz extends zzam {
    private static final String ID = com.google.android.gms.internal.zzah.SDK_VERSION.toString();

    public zzcz() {
        super(ID, new String[0]);
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public boolean zzQb() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public zzak.zza zzZ(Map<String, zzak.zza> map) {
        return zzdl.zzR(Integer.valueOf(Build.VERSION.SDK_INT));
    }
}