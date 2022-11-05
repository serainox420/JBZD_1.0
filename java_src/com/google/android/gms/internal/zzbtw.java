package com.google.android.gms.internal;

import android.text.TextUtils;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
/* loaded from: classes2.dex */
public class zzbtw {
    public static String zzjI(String str) throws UnsupportedEncodingException {
        return TextUtils.isEmpty(str) ? "" : zzjJ(URLEncoder.encode(str, "UTF8"));
    }

    public static String zzjJ(String str) {
        com.google.android.gms.common.internal.zzac.zzw(str);
        return str.replace("%2F", "/");
    }

    public static String zzjK(String str) {
        String[] split;
        if (TextUtils.isEmpty(str)) {
            return "";
        }
        if (!str.startsWith("/") && !str.endsWith("/") && !str.contains("//")) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        for (String str2 : str.split("/")) {
            if (!TextUtils.isEmpty(str2)) {
                if (sb.length() > 0) {
                    sb.append("/").append(str2);
                } else {
                    sb.append(str2);
                }
            }
        }
        return sb.toString();
    }
}
