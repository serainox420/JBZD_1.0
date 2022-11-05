package com.apprupt.sdk;

import java.util.Random;
/* loaded from: classes.dex */
class CvRandomString {

    /* renamed from: a  reason: collision with root package name */
    private static int f1883a = 0;
    private static String b = null;

    CvRandomString() {
    }

    public static String a(int i) {
        return a(i, "abcdefghijklmnopqrstuwxyzABCDEFGHIJKLMNOPQRSTUWXYZ0123456789");
    }

    public static String a(int i, String str) {
        if (str.length() < 2) {
            throw new IllegalArgumentException("Characters set have to contain at least two characters.");
        }
        if (i < 1) {
            return "";
        }
        char[] cArr = new char[i];
        Random random = new Random();
        for (int i2 = 0; i2 < i; i2++) {
            cArr[i2] = str.charAt(random.nextInt(i));
        }
        return new String(cArr);
    }

    public static String a() {
        if (b == null) {
            b = "cvid-" + a(8, "ABCDEFGHIJKLMNOPQRSTUWXYZ0123456789") + "-%05d";
        }
        String str = b;
        int i = f1883a + 1;
        f1883a = i;
        return String.format(str, Integer.valueOf(i));
    }
}
