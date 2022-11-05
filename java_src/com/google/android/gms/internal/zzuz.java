package com.google.android.gms.internal;

import android.net.Uri;
import android.text.TextUtils;
/* loaded from: classes2.dex */
public class zzuz {
    public static String zzct(String str) {
        boolean z = false;
        com.google.android.gms.common.internal.zzac.zzb(!TextUtils.isEmpty(str), "account type cannot be empty");
        String scheme = Uri.parse(str).getScheme();
        if ("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
            z = true;
        }
        com.google.android.gms.common.internal.zzac.zzb(z, "Account type must be an http or https URI");
        return str;
    }
}
