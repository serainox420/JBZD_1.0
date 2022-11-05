package com.adcolony.sdk;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes.dex */
class bb {
    bb() {
    }

    private static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b : bArr) {
            int i = (b >>> 4) & 15;
            int i2 = 0;
            while (true) {
                sb.append((i < 0 || i > 9) ? (char) ((i - 10) + 97) : (char) (i + 48));
                int i3 = b & 15;
                int i4 = i2 + 1;
                if (i2 >= 1) {
                    break;
                }
                i2 = i4;
                i = i3;
            }
        }
        return sb.toString();
    }

    public static String a(String str) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
        messageDigest.update(str.getBytes("iso-8859-1"), 0, str.length());
        return a(messageDigest.digest());
    }
}
