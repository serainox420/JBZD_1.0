package com.smartadserver.android.library.d;

import com.smartadserver.android.library.exception.SASAdCachingException;
import java.util.ArrayList;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* compiled from: SASCacheManifestUtil.java */
/* loaded from: classes3.dex */
public class b {
    public static String[] a(String str) throws SASAdCachingException {
        boolean z;
        boolean z2;
        ArrayList arrayList = new ArrayList();
        String a2 = com.smartadserver.android.library.g.b.a(str);
        if (a2 == null) {
            throw new SASAdCachingException("Can not get cache manifest file from URL: " + str);
        }
        String[] split = a2.split("\\r?\\n");
        int i = 0;
        boolean z3 = true;
        boolean z4 = false;
        while (i < split.length) {
            String str2 = split[i];
            if (str2.startsWith("#")) {
                z = z3;
                z2 = z4;
            } else if (str2.equals("")) {
                z = z3;
                z2 = z4;
            } else if (str2.contains("CACHE MANIFEST")) {
                z = z3;
                z2 = true;
            } else if (str2.contains("NETWORK:")) {
                z = false;
                z2 = z4;
            } else if (str2.contains("FALLBACK:")) {
                z = false;
                z2 = z4;
            } else if (str2.contains("CACHE:")) {
                z = true;
                z2 = z4;
            } else {
                if (z4 && z3) {
                    String trim = str2.trim();
                    if (trim.startsWith("/")) {
                        trim = trim.substring(1, trim.length() - 1);
                    }
                    arrayList.add(trim);
                }
                z = z3;
                z2 = z4;
            }
            i++;
            z4 = z2;
            z3 = z;
        }
        if (!z4) {
            throw new SASAdCachingException("Missing \"CACHE MANIFEST\" declaration in manifest file at: " + str);
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public static String b(String str) {
        Matcher matcher = Pattern.compile("<html[^>]*manifest=['\"]([^'\"]+)['\"][^>]*").matcher(str);
        if (!matcher.find()) {
            return null;
        }
        return matcher.group(1);
    }

    public static String c(String str) {
        int indexOf = str.indexOf(" manifest=");
        String b = b(str);
        return str.substring(0, indexOf) + str.substring(b.length() + str.indexOf(b) + 1);
    }
}
