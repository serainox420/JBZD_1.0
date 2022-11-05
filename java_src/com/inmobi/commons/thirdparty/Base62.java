package com.inmobi.commons.thirdparty;

import com.inmobi.commons.internal.InternalSDKUtil;
import com.inmobi.commons.internal.Log;
/* loaded from: classes2.dex */
public class Base62 {
    public static final String ALPHABET = "0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ";
    public static final int BASE = ALPHABET.length();

    private Base62() {
    }

    public static String fromBase10(long j) {
        try {
            StringBuilder sb = new StringBuilder("");
            while (j > 0) {
                j = a(j, sb);
            }
            return sb.reverse().toString();
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Failed to convert to base 62", e);
            return null;
        }
    }

    private static long a(long j, StringBuilder sb) {
        sb.append(ALPHABET.charAt((int) (j % BASE)));
        return j / BASE;
    }

    public static int toBase10(String str) {
        return a(new StringBuilder(str).reverse().toString().toCharArray());
    }

    private static int a(char[] cArr) {
        int i = 0;
        for (int length = cArr.length - 1; length >= 0; length--) {
            i += a(ALPHABET.indexOf(cArr[length]), length);
        }
        return i;
    }

    private static int a(int i, int i2) {
        return ((int) Math.pow(BASE, i2)) * i;
    }
}
