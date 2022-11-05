package com.google.android.gms.internal;

import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class zzbom {
    public static String zzW(List<String> list) {
        if (list.isEmpty()) {
            return "/";
        }
        StringBuilder sb = new StringBuilder();
        boolean z = true;
        for (String str : list) {
            if (!z) {
                sb.append("/");
            }
            z = false;
            sb.append(str);
        }
        return sb.toString();
    }

    public static Long zzaq(Object obj) {
        if (obj instanceof Integer) {
            return Long.valueOf(((Integer) obj).intValue());
        }
        if (!(obj instanceof Long)) {
            return null;
        }
        return (Long) obj;
    }

    public static void zzbb(boolean z) {
        zzc(z, "", new Object[0]);
    }

    public static void zzc(boolean z, String str, Object... objArr) {
        if (!z) {
            String valueOf = String.valueOf(String.format(str, objArr));
            throw new AssertionError(valueOf.length() != 0 ? "hardAssert failed: ".concat(valueOf) : new String("hardAssert failed: "));
        }
    }

    public static List<String> zziM(String str) {
        ArrayList arrayList = new ArrayList();
        String[] split = str.split("/");
        for (int i = 0; i < split.length; i++) {
            if (!split[i].isEmpty()) {
                arrayList.add(split[i]);
            }
        }
        return arrayList;
    }
}
