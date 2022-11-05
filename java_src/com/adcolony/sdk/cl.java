package com.adcolony.sdk;

import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class cl {
    cl() {
    }

    static String a(String str, int i) {
        if (str == null) {
            return null;
        }
        char[] charArray = str.toCharArray();
        int ceil = (int) Math.ceil(str.length() / i);
        int i2 = 0;
        for (int i3 = 0; i3 < str.length(); i3++) {
            if (i3 % i == 0) {
                charArray[i3] = str.charAt(i2);
                i2++;
            } else {
                charArray[i3] = str.charAt(ceil);
                ceil++;
            }
        }
        return new String(charArray);
    }

    private String a() {
        return "AdColonyPubServices";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ArrayList<String> a(String str) {
        ArrayList<String> arrayList = new ArrayList<>();
        if (str != null) {
            arrayList.add(b(str));
            arrayList.add(c(str));
            arrayList.add(d(str));
            arrayList.add(e(str));
            arrayList.add(f(str));
            arrayList.add(g(str));
            arrayList.add(h(str));
            arrayList.add(i(str));
        }
        return arrayList;
    }

    static String b(String str, int i) {
        if (str != null) {
            return co.c(a(str, i));
        }
        return null;
    }

    static String b(String str) {
        return a(str, 2);
    }

    static String c(String str) {
        return b(str, 2);
    }

    static String d(String str) {
        return a(str, 3);
    }

    static String e(String str) {
        return b(str, 3);
    }

    static String f(String str) {
        return a(str, 4);
    }

    static String g(String str) {
        return b(str, 4);
    }

    static String h(String str) {
        return a(str, 5);
    }

    static String i(String str) {
        return b(str, 5);
    }
}
