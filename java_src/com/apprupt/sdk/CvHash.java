package com.apprupt.sdk;

import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.flurry.android.Constants;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes.dex */
class CvHash {
    CvHash() {
    }

    public static String a(String str) {
        return a(str.getBytes());
    }

    public static String a(byte[] bArr) {
        return a("MD5", bArr);
    }

    public static String b(String str) {
        return b(str.getBytes());
    }

    public static String b(byte[] bArr) {
        return a("SHA1", bArr);
    }

    private static String a(String str, byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            messageDigest.update(bArr);
            byte[] digest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (int i = 0; i < digest.length; i++) {
                sb.append(String.format("%02x", Integer.valueOf(digest[i] & Constants.UNKNOWN)));
            }
            String sb2 = sb.toString();
            Logger.a("HASH").a("Generated hash " + str + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + sb2 + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + sb2.length());
            return sb2;
        } catch (NoSuchAlgorithmException e) {
            Logger.a("HASH").d("Cannot find hash algorithm: " + str, e);
            return "";
        }
    }
}
