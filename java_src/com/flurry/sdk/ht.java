package com.flurry.sdk;

import java.net.URLDecoder;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class ht {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2814a = ht.class.getSimpleName();

    public static Map<String, List<String>> a(String str) {
        String[] split;
        km.a(3, f2814a, "Parsing referrer map");
        if (str == null) {
            return Collections.emptyMap();
        }
        HashMap hashMap = new HashMap();
        for (String str2 : str.split("&")) {
            String[] split2 = str2.split("=");
            if (split2.length != 2) {
                km.a(5, f2814a, "Invalid referrer Element: " + str2 + " in referrer tag " + str);
            } else {
                String decode = URLDecoder.decode(split2[0]);
                String decode2 = URLDecoder.decode(split2[1]);
                if (hashMap.get(decode) == null) {
                    hashMap.put(decode, new ArrayList());
                }
                ((List) hashMap.get(decode)).add(decode2);
            }
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            km.a(3, f2814a, "entry: " + ((String) entry.getKey()) + "=" + entry.getValue());
        }
        StringBuilder sb = new StringBuilder();
        if (hashMap.get("utm_source") == null) {
            sb.append("Campaign Source is missing.\n");
        }
        if (hashMap.get("utm_medium") == null) {
            sb.append("Campaign Medium is missing.\n");
        }
        if (hashMap.get("utm_campaign") == null) {
            sb.append("Campaign Name is missing.\n");
        }
        if (sb.length() > 0) {
            km.a(5, f2814a, "Detected missing referrer keys : " + sb.toString());
        }
        return hashMap;
    }
}
