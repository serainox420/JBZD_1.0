package com.google.android.gms.common.util;

import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public class zzw {
    private static final Pattern zzaIp = Pattern.compile("\\$\\{(.*?)\\}");

    public static boolean zzdz(String str) {
        return str == null || str.trim().isEmpty();
    }
}
