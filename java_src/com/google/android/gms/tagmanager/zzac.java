package com.google.android.gms.tagmanager;

import android.os.Build;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.google.android.gms.internal.zzak;
import java.util.Map;
/* loaded from: classes2.dex */
class zzac extends zzam {
    private static final String ID = com.google.android.gms.internal.zzah.DEVICE_NAME.toString();

    public zzac() {
        super(ID, new String[0]);
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public boolean zzQb() {
        return true;
    }

    @Override // com.google.android.gms.tagmanager.zzam
    public zzak.zza zzZ(Map<String, zzak.zza> map) {
        String str = Build.MANUFACTURER;
        String str2 = Build.MODEL;
        if (!str2.startsWith(str) && !str.equals("unknown")) {
            str2 = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(str2).length()).append(str).append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR).append(str2).toString();
        }
        return zzdl.zzR(str2);
    }
}
