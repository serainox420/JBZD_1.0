package com.facebook.ads.internal.util;

import java.util.Set;
/* loaded from: classes.dex */
public class ai {
    public static String a(Set<String> set, String str) {
        StringBuilder sb = new StringBuilder();
        for (String str2 : set) {
            sb.append(str2);
            sb.append(str);
        }
        return sb.length() > 0 ? sb.substring(0, sb.length() - 1) : "";
    }
}
