package com.facebook.common.util;

import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.flurry.android.Constants;
/* loaded from: classes.dex */
public class Hex {
    private static final byte[] DIGITS;
    private static final char[] HEX_DIGITS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    private static final char[] FIRST_CHAR = new char[256];
    private static final char[] SECOND_CHAR = new char[256];

    static {
        for (int i = 0; i < 256; i++) {
            FIRST_CHAR[i] = HEX_DIGITS[(i >> 4) & 15];
            SECOND_CHAR[i] = HEX_DIGITS[i & 15];
        }
        DIGITS = new byte[103];
        for (int i2 = 0; i2 <= 70; i2++) {
            DIGITS[i2] = -1;
        }
        for (byte b = 0; b < 10; b = (byte) (b + 1)) {
            DIGITS[b + 48] = b;
        }
        for (byte b2 = 0; b2 < 6; b2 = (byte) (b2 + 1)) {
            DIGITS[b2 + 65] = (byte) (b2 + 10);
            DIGITS[b2 + 97] = (byte) (b2 + 10);
        }
    }

    public static String byte2Hex(int i) {
        if (i > 255 || i < 0) {
            throw new IllegalArgumentException("The int converting to hex should be in range 0~255");
        }
        return String.valueOf(FIRST_CHAR[i]) + String.valueOf(SECOND_CHAR[i]);
    }

    public static String encodeHex(byte[] bArr, boolean z) {
        int i;
        char[] cArr = new char[bArr.length * 2];
        int i2 = 0;
        for (int i3 = 0; i3 < bArr.length && ((i = bArr[i3] & Constants.UNKNOWN) != 0 || !z); i3++) {
            int i4 = i2 + 1;
            cArr[i2] = FIRST_CHAR[i];
            i2 = i4 + 1;
            cArr[i4] = SECOND_CHAR[i];
        }
        return new String(cArr, 0, i2);
    }

    public static byte[] decodeHex(String str) {
        byte b;
        byte b2;
        boolean z = true;
        int length = str.length();
        if ((length & 1) != 0) {
            throw new IllegalArgumentException("Odd number of characters.");
        }
        byte[] bArr = new byte[length >> 1];
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i >= length) {
                z = false;
                break;
            }
            int i3 = i + 1;
            char charAt = str.charAt(i);
            if (charAt > 'f' || (b = DIGITS[charAt]) == -1) {
                break;
            }
            i = i3 + 1;
            char charAt2 = str.charAt(i3);
            if (charAt2 > 'f' || (b2 = DIGITS[charAt2]) == -1) {
                break;
            }
            bArr[i2] = (byte) (b2 | (b << 4));
            i2++;
        }
        if (z) {
            throw new IllegalArgumentException("Invalid hexadecimal digit: " + str);
        }
        return bArr;
    }

    public static byte[] hexStringToByteArray(String str) {
        return decodeHex(str.replaceAll(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR, ""));
    }
}
