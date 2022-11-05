package com.inmobi.commons.internal;

import android.content.SharedPreferences;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.KeyFactory;
import java.security.NoSuchAlgorithmException;
import java.security.NoSuchProviderException;
import java.security.SecureRandom;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.RSAPublicKeySpec;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.Mac;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes2.dex */
public class EncryptionUtils {

    /* renamed from: a  reason: collision with root package name */
    private static byte[] f3796a = new byte[16];
    private static String b = "SHA1PRNG";
    private static String c = "Crypto";
    private static String d = "HmacSHA1";
    private static String e = "RSA";
    private static String f = "RSA/ECB/nopadding";
    private static String g = "aeskeygenerate";
    private static String h = "last_key_generate";
    private static String i = "AES/CBC/PKCS7Padding";
    private static String j = "AES";

    private static String a(String str, byte[] bArr, byte[] bArr2, byte[] bArr3, String str2, String str3) {
        try {
            byte[] a2 = a(str.getBytes("UTF-8"), bArr, bArr2);
            byte[] a3 = a(a2, bArr3);
            byte[] a4 = a(a2);
            byte[] a5 = a(a3);
            return new String(Base64.encode(b(a(a(b(b(a(bArr), a(bArr3)), a(bArr2)), str3, str2)), b(a4, a5)), 8));
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class a extends IvParameterSpec {
        public a(byte[] bArr) {
            super(bArr);
        }
    }

    private static byte[] a(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        c cVar = new c(bArr2, j);
        a aVar = new a(bArr3);
        try {
            Cipher cipher = Cipher.getInstance(i);
            cipher.init(1, cVar, aVar);
            return cipher.doFinal(bArr);
        } catch (InvalidAlgorithmParameterException e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "InvalidAlgorithmParameterException");
            return null;
        } catch (InvalidKeyException e3) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "InvalidKeyException");
            return null;
        } catch (NoSuchAlgorithmException e4) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "NoSuchAlgorithmException");
            return null;
        } catch (BadPaddingException e5) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "BadPaddingException");
            return null;
        } catch (IllegalBlockSizeException e6) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "IllegalBlockSizeException");
            return null;
        } catch (NoSuchPaddingException e7) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "NoSuchPaddingException");
            return null;
        }
    }

    public static byte[] DeAe(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        return b(bArr, bArr2, bArr3);
    }

    private static byte[] a() {
        try {
            SecureRandom.getInstance(b, c).nextBytes(f3796a);
        } catch (NoSuchAlgorithmException e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "NoSuchAlgorithmException");
        } catch (NoSuchProviderException e3) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "NoSuchProviderException");
        }
        return f3796a;
    }

    private static byte[] a(byte[] bArr, byte[] bArr2) {
        c cVar = new c(bArr2, 0, bArr2.length, d);
        try {
            Mac mac = Mac.getInstance(d);
            mac.init(cVar);
            return mac.doFinal(bArr);
        } catch (InvalidKeyException e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "InvalidKeyException");
            return null;
        } catch (NoSuchAlgorithmException e3) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "NoSuchAlgorithmException");
            return null;
        }
    }

    private static byte[] a(byte[] bArr) {
        ByteBuffer allocate = ByteBuffer.allocate(8);
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        allocate.putLong(bArr.length);
        byte[] array = allocate.array();
        byte[] bArr2 = new byte[array.length + bArr.length];
        System.arraycopy(array, 0, bArr2, 0, array.length);
        System.arraycopy(bArr, 0, bArr2, array.length, bArr.length);
        return bArr2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class b extends RSAPublicKeySpec {
        public b(BigInteger bigInteger, BigInteger bigInteger2) {
            super(bigInteger, bigInteger2);
        }
    }

    private static byte[] a(byte[] bArr, String str, String str2) {
        BigInteger bigInteger = new BigInteger(str2, 16);
        BigInteger bigInteger2 = new BigInteger(str, 16);
        try {
            Cipher cipher = Cipher.getInstance(f);
            cipher.init(1, (RSAPublicKey) KeyFactory.getInstance(e).generatePublic(new b(bigInteger, bigInteger2)));
            return cipher.doFinal(bArr);
        } catch (InvalidKeyException e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "InvalidKeyException");
            return null;
        } catch (NoSuchAlgorithmException e3) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "NoSuchAlgorithmException");
            return null;
        } catch (InvalidKeySpecException e4) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "InvalidKeySpecException");
            return null;
        } catch (BadPaddingException e5) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "BadPaddingException");
            return null;
        } catch (IllegalBlockSizeException e6) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "IllegalBlockSizeException");
            return null;
        } catch (NoSuchPaddingException e7) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "NoSuchPaddingException");
            return null;
        }
    }

    private static byte[] b(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = new byte[bArr.length + bArr2.length];
        System.arraycopy(bArr, 0, bArr3, 0, bArr.length);
        System.arraycopy(bArr2, 0, bArr3, bArr.length, bArr2.length);
        return bArr3;
    }

    public static byte[] keag() {
        return b();
    }

    private static byte[] b() {
        SharedPreferences sharedPreferences = InternalSDKUtil.getContext().getSharedPreferences(g, 0);
        long j2 = sharedPreferences.getLong(h, 0L);
        if (0 == j2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Generating for first time");
            SharedPreferences.Editor edit = sharedPreferences.edit();
            edit.putLong(h, System.currentTimeMillis());
            edit.commit();
            return a();
        }
        if ((j2 + 86400000) - System.currentTimeMillis() <= 0) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "generated again");
            SharedPreferences.Editor edit2 = sharedPreferences.edit();
            edit2.putLong(h, System.currentTimeMillis());
            edit2.commit();
            return a();
        }
        Log.internal(InternalSDKUtil.LOGGING_TAG, "already generated");
        return f3796a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class c extends SecretKeySpec {
        public c(byte[] bArr, String str) {
            super(bArr, str);
        }

        public c(byte[] bArr, int i, int i2, String str) {
            super(bArr, i, i2, str);
        }
    }

    public static String SeMeGe(String str, byte[] bArr, byte[] bArr2, byte[] bArr3, String str2, String str3) {
        return a(str, bArr, bArr2, bArr3, str2, str3);
    }

    private static byte[] b(byte[] bArr, byte[] bArr2, byte[] bArr3) {
        c cVar = new c(bArr2, j);
        try {
            Cipher cipher = Cipher.getInstance(i);
            cipher.init(2, cVar, new a(bArr3));
            return cipher.doFinal(bArr);
        } catch (InvalidAlgorithmParameterException e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "InvalidAlgorithmParameterException");
            return null;
        } catch (InvalidKeyException e3) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "InvalidKeyException");
            return null;
        } catch (NoSuchAlgorithmException e4) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "NoSuchAlgorithmException");
            return null;
        } catch (BadPaddingException e5) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "BadPaddingException");
            return null;
        } catch (IllegalBlockSizeException e6) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "IllegalBlockSizeException");
            return null;
        } catch (NoSuchPaddingException e7) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "NoSuchPaddingException");
            return null;
        }
    }

    public static byte[] generateKey(int i2) {
        try {
            byte[] bArr = new byte[i2];
            new SecureRandom().nextBytes(bArr);
            return bArr;
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
