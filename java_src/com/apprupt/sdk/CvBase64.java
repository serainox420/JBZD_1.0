package com.apprupt.sdk;

import com.flurry.android.Constants;
/* loaded from: classes.dex */
class CvBase64 {

    /* renamed from: a  reason: collision with root package name */
    private static final char[] f1751a = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".toCharArray();
    private static int[] b = new int[128];

    CvBase64() {
    }

    static {
        for (int i = 0; i < f1751a.length; i++) {
            b[f1751a[i]] = i;
        }
    }

    public static String a(byte[] bArr) {
        int i;
        byte b2;
        byte b3;
        int length = bArr.length;
        char[] cArr = new char[((length + 2) / 3) * 4];
        int i2 = 0;
        int i3 = 0;
        while (i2 < length) {
            int i4 = i2 + 1;
            byte b4 = bArr[i2];
            if (i4 < length) {
                b2 = bArr[i4];
                i4++;
            } else {
                b2 = 0;
            }
            if (i4 < length) {
                i2 = i4 + 1;
                b3 = bArr[i4];
            } else {
                i2 = i4;
                b3 = 0;
            }
            int i5 = i3 + 1;
            cArr[i3] = f1751a[(b4 >> 2) & 63];
            int i6 = i5 + 1;
            cArr[i5] = f1751a[((b4 << 4) | ((b2 & Constants.UNKNOWN) >> 4)) & 63];
            int i7 = i6 + 1;
            cArr[i6] = f1751a[((b2 << 2) | ((b3 & Constants.UNKNOWN) >> 6)) & 63];
            i3 = i7 + 1;
            cArr[i7] = f1751a[b3 & 63];
        }
        switch (length % 3) {
            case 1:
                i = i3 - 1;
                cArr[i] = '=';
                break;
            case 2:
                i = i3;
                break;
            default:
                return new String(cArr);
        }
        cArr[i - 1] = '=';
        return new String(cArr);
    }

    public static String b(byte[] bArr) {
        char[] charArray = a(bArr).toCharArray();
        for (int i = 0; i < charArray.length; i++) {
            switch (charArray[i]) {
                case '+':
                    charArray[i] = '-';
                    break;
                case '/':
                    charArray[i] = '_';
                    break;
                case '=':
                    charArray[i] = '~';
                    break;
            }
        }
        return new String(charArray);
    }

    public static byte[] a(String str) {
        int i;
        try {
            if (str.endsWith("==")) {
                i = 2;
            } else {
                i = str.endsWith("=") ? 1 : 0;
            }
            byte[] bArr = new byte[((str.length() * 3) / 4) - i];
            int i2 = 0;
            for (int i3 = 0; i3 < str.length(); i3 += 4) {
                int i4 = b[str.charAt(i3)];
                int i5 = b[str.charAt(i3 + 1)];
                int i6 = i2 + 1;
                bArr[i2] = (byte) (((i4 << 2) | (i5 >> 4)) & 255);
                if (i6 < bArr.length) {
                    int i7 = b[str.charAt(i3 + 2)];
                    int i8 = i6 + 1;
                    bArr[i6] = (byte) (((i5 << 4) | (i7 >> 2)) & 255);
                    if (i8 < bArr.length) {
                        i2 = i8 + 1;
                        bArr[i8] = (byte) (((i7 << 6) | b[str.charAt(i3 + 3)]) & 255);
                    } else {
                        return bArr;
                    }
                } else {
                    return bArr;
                }
            }
            return bArr;
        } catch (StringIndexOutOfBoundsException e) {
            return null;
        }
    }

    public static byte[] b(String str) {
        char[] charArray = str.toCharArray();
        for (int i = 0; i < charArray.length; i++) {
            switch (charArray[i]) {
                case '-':
                    charArray[i] = '+';
                    break;
                case '_':
                    charArray[i] = '/';
                    break;
                case '~':
                    charArray[i] = '=';
                    break;
            }
        }
        return a(new String(charArray));
    }
}
