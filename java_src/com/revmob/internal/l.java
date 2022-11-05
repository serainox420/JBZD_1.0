package com.revmob.internal;

import android.util.Base64;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes3.dex */
public final class l {

    /* renamed from: a  reason: collision with root package name */
    public static Boolean f4806a = true;
    public static String b = "1";
    private int c = 24;

    public static String a(String str) {
        byte[] bArr = null;
        if (!f4806a.booleanValue() || str.length() <= 0) {
            return str;
        }
        byte[] c = c("f188c2f6176602368ab346d0b40f1098ed350c3c46595e9981a8db1db9d865b7");
        byte[] c2 = c("3066546c3043314e614c4b764f433338");
        SecretKeySpec secretKeySpec = new SecretKeySpec(c, "AES/CBC/PKCS5Padding");
        try {
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(1, secretKeySpec, new IvParameterSpec(c2));
            bArr = cipher.doFinal(str.getBytes());
        } catch (Exception e) {
            u.a(e, null, w.b, null, "encrypt");
            e.printStackTrace();
        }
        return Base64.encodeToString(bArr, 2);
    }

    private static byte[] c(String str) {
        int length = str.length();
        byte[] bArr = new byte[length / 2];
        for (int i = 0; i < length; i += 2) {
            bArr[i / 2] = (byte) ((Character.digit(str.charAt(i), 16) << 4) + Character.digit(str.charAt(i + 1), 16));
        }
        return bArr;
    }

    public final String b(String str) {
        byte[] bArr = null;
        if (!f4806a.booleanValue() || str.length() < this.c) {
            return str;
        }
        byte[] c = c("f188c2f6176602368ab346d0b40f1098ed350c3c46595e9981a8db1db9d865b7");
        byte[] c2 = c("3066546c3043314e614c4b764f433338");
        SecretKeySpec secretKeySpec = new SecretKeySpec(c, "AES/CBC/PKCS5Padding");
        try {
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(2, secretKeySpec, new IvParameterSpec(c2));
            bArr = cipher.doFinal(Base64.decode(str, 2));
        } catch (Exception e) {
            e.printStackTrace();
            u.a(e, null, w.b, null, "decrypt");
        }
        return new String(bArr);
    }
}
