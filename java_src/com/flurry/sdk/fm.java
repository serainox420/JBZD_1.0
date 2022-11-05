package com.flurry.sdk;

import android.text.TextUtils;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public class fm {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2681a = fm.class.getSimpleName();
    private static final Pattern b = Pattern.compile(".*?(\\$\\(\\w+\\)).*?");

    public static String a(a aVar, String str) {
        String replace;
        String a2 = a(str);
        while (a2 != null) {
            Map<String, String> map = aVar.c.b;
            if (a("AD_POSN", a2)) {
                String a3 = a(map, "AD_POSN");
                km.a(3, f2681a, "Replacing param AD_POSN with: " + a3);
                replace = str.replace(a2, ly.c(a3));
            } else if (a("V_SKIP_AVAIL", a2)) {
                String a4 = a(map, "V_SKIP_AVAIL");
                km.a(3, f2681a, "Replacing param V_SKIP_AVAIL with: " + a4);
                replace = str.replace(a2, ly.c(a4));
            } else if (a("V_AUTOPLAYED", a2)) {
                String a5 = a(map, "V_AUTOPLAYED");
                km.a(3, f2681a, "Replacing param V_AUTOPLAYED with: " + a5);
                replace = str.replace(a2, ly.c(a5));
            } else if (a("V_PLAYER_HEIGHT", a2)) {
                String a6 = a(map, "V_PLAYER_HEIGHT");
                km.a(3, f2681a, "Replacing param V_PLAYER_HEIGHT with: " + a6);
                replace = str.replace(a2, ly.c(a6));
            } else if (a("V_PLAYER_WIDTH", a2)) {
                String a7 = a(map, "V_PLAYER_WIDTH");
                km.a(3, f2681a, "Replacing param V_PLAYER_WIDTH with: " + a7);
                replace = str.replace(a2, ly.c(a7));
            } else if (a("V_MUTED", a2)) {
                String a8 = a(map, "V_MUTED");
                km.a(3, f2681a, "Replacing param V_MUTED with: " + a8);
                replace = str.replace(a2, ly.c(a8));
            } else if (a("AD_FEEDBACK", a2)) {
                String a9 = a(map, "AD_FEEDBACK");
                km.a(3, f2681a, "Replacing param AD_FEEDBACK with: " + a9);
                replace = str.replace(a2, ly.c(a9));
            } else {
                km.a(3, f2681a, "Unknown param: " + a2);
                replace = str.replace(a2, "");
            }
            str = replace;
            a2 = a(replace);
        }
        return str;
    }

    private static String a(String str) {
        Matcher matcher = b.matcher(str);
        if (matcher.matches()) {
            return matcher.group(1);
        }
        return null;
    }

    private static boolean a(String str, String str2) {
        if (TextUtils.isEmpty(str2)) {
            return false;
        }
        return str2.equals("$(" + str + ")");
    }

    private static String a(Map<String, String> map, String str) {
        return (map == null || TextUtils.isEmpty(str) || !map.containsKey(str)) ? "" : map.get(str);
    }
}
