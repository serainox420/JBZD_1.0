package com.flurry.sdk;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Looper;
import android.text.TextUtils;
import com.applovin.sdk.AppLovinTargetingData;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class ly {

    /* renamed from: a  reason: collision with root package name */
    private static final String f3045a = ly.class.getSimpleName();

    public static void a() {
        if (Looper.getMainLooper().getThread() != Thread.currentThread()) {
            throw new IllegalStateException("Must be called from the main thread!");
        }
    }

    public static void b() {
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            throw new IllegalStateException("Must be called from a background thread!");
        }
    }

    public static String a(String str) {
        Uri parse;
        if (!TextUtils.isEmpty(str) && (parse = Uri.parse(str)) != null && parse.getScheme() == null) {
            return "http://" + str;
        }
        return str;
    }

    public static String c(String str) {
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            km.a(5, f3045a, "Cannot encode '" + str + "'");
            return "";
        }
    }

    public static String d(String str) {
        try {
            return URLDecoder.decode(str, "UTF-8");
        } catch (UnsupportedEncodingException e) {
            km.a(5, f3045a, "Cannot decode '" + str + "'");
            return "";
        }
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable th) {
            }
        }
    }

    public static byte[] e(String str) {
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        try {
            return str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException e) {
            km.a(5, f3045a, "Unsupported UTF-8: " + e.getMessage());
            return null;
        }
    }

    public static byte[] f(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            messageDigest.update(str.getBytes(), 0, str.length());
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException e) {
            km.a(6, f3045a, "Unsupported SHA1: " + e.getMessage());
            return null;
        }
    }

    public static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder(bArr.length * 2);
        char[] cArr = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', AppLovinTargetingData.GENDER_FEMALE};
        for (byte b : bArr) {
            sb.append(cArr[(byte) ((b & 240) >> 4)]);
            sb.append(cArr[(byte) (b & 15)]);
        }
        return sb.toString();
    }

    public static String b(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            return new String(bArr, "ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            km.a(5, f3045a, "Unsupported ISO-8859-1:" + e.getMessage());
            return null;
        }
    }

    public static boolean a(long j) {
        if (j != 0 && System.currentTimeMillis() > j) {
            return false;
        }
        return true;
    }

    public static boolean a(Intent intent) {
        return jy.a().f2947a.getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
    }

    public static String g(String str) {
        return str.replace("\\b", "").replace("\\n", "").replace("\\r", "").replace("\\t", "").replace("\\", "\\\\").replace("'", "\\'").replace("\"", "\\\"");
    }

    public static Map<String, String> h(String str) {
        HashMap hashMap = new HashMap();
        if (!TextUtils.isEmpty(str)) {
            for (String str2 : str.split("&")) {
                String[] split = str2.split("=");
                if (!split[0].equals("event")) {
                    hashMap.put(d(split[0]), d(split[1]));
                }
            }
        }
        return hashMap;
    }

    public static long i(String str) {
        if (str == null) {
            return 0L;
        }
        long j = 1125899906842597L;
        int i = 0;
        while (i < str.length()) {
            i++;
            j = str.charAt(i) + (j * 31);
        }
        return j;
    }

    public static long a(InputStream inputStream, OutputStream outputStream) throws IOException {
        byte[] bArr = new byte[1024];
        long j = 0;
        while (true) {
            int read = inputStream.read(bArr);
            if (read >= 0) {
                outputStream.write(bArr, 0, read);
                j += read;
            } else {
                return j;
            }
        }
    }

    public static byte[] a(InputStream inputStream) throws IOException {
        if (inputStream == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        a(inputStream, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    public static double a(double d, int i) {
        if (i != -1) {
            return Math.round(Math.pow(10.0d, i) * d) / Math.pow(10.0d, i);
        }
        return d;
    }

    public static boolean a(Context context, String str) {
        if (context == null || TextUtils.isEmpty(str)) {
            return false;
        }
        try {
            return context.getPackageManager().checkPermission(str, context.getPackageName()) == 0;
        } catch (Exception e) {
            km.a(6, f3045a, "Error occured when checking if app has permission.  Error: " + e.getMessage());
            return false;
        }
    }

    public static String b(String str) {
        if (str == null) {
            return "";
        }
        if (str.length() <= 255) {
            return str;
        }
        return str.substring(0, 255);
    }
}
