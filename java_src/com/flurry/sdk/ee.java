package com.flurry.sdk;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public class ee {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2606a = ee.class.getName();
    private static String b = "UTF-8";
    private static final Map<String, String> c;

    static {
        HashMap hashMap = new HashMap();
        hashMap.put("*", "%2A");
        hashMap.put("+", "%20");
        hashMap.put("%7E", "~");
        c = Collections.unmodifiableMap(hashMap);
    }

    private ee() {
    }

    public static String a(String str) {
        if (str == null) {
            km.a(5, f2606a, "Cannot encode null string.");
        }
        try {
            String encode = URLEncoder.encode(str, b);
            Iterator<Map.Entry<String, String>> it = c.entrySet().iterator();
            while (true) {
                String str2 = encode;
                if (!it.hasNext()) {
                    return str2;
                }
                Map.Entry<String, String> next = it.next();
                encode = str2.replaceAll(Pattern.quote(next.getKey()), next.getValue());
            }
        } catch (UnsupportedEncodingException e) {
            km.a(5, f2606a, "Error while encoding " + e);
            return null;
        }
    }

    public static String b(String str) {
        if (str != null) {
            try {
                return URLDecoder.decode(str, b);
            } catch (UnsupportedEncodingException e) {
                km.a(5, f2606a, "Exception while decode: " + e);
            }
        }
        return null;
    }
}
