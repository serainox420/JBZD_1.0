package com.adcolony.sdk;

import android.content.Context;
import android.content.pm.PackageManager;
import android.media.AudioManager;
import android.os.Build;
import com.facebook.internal.Utility;
import com.mopub.mobileads.resource.DrawableConstants;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.math.BigInteger;
import java.net.URLDecoder;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.zip.CRC32;
import org.json.JSONArray;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class au {

    /* renamed from: a  reason: collision with root package name */
    static final int f1079a = 128;
    static ExecutorService b = Executors.newSingleThreadExecutor();

    au() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(String str) {
        if (com.adcolony.sdk.a.l == null) {
            return false;
        }
        try {
            com.adcolony.sdk.a.l.getApplication().getPackageManager().getApplicationInfo(str, 0);
            return true;
        } catch (Exception e) {
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a() {
        if (com.adcolony.sdk.a.l == null) {
            return "1.0";
        }
        try {
            return com.adcolony.sdk.a.l.getPackageManager().getPackageInfo(com.adcolony.sdk.a.l.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e) {
            u.h.b("Failed to retrieve package info.");
            return "1.0";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(String str) {
        CRC32 crc32 = new CRC32();
        int length = str.length();
        for (int i = 0; i < length; i++) {
            crc32.update(str.charAt(i));
        }
        return (int) crc32.getValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String c(String str) {
        try {
            return bb.a(str);
        } catch (Exception e) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String b() {
        return UUID.randomUUID().toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static JSONArray a(int i) {
        JSONArray b2 = s.b();
        for (int i2 = 0; i2 < i; i2++) {
            s.a(b2, b());
        }
        return b2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Runnable runnable) {
        if (com.adcolony.sdk.a.l == null) {
            return false;
        }
        com.adcolony.sdk.a.l.runOnUiThread(runnable);
        return true;
    }

    static double c() {
        return System.currentTimeMillis() / 1000.0d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean d(String str) {
        if (str != null && str.length() <= 128) {
            return true;
        }
        u.e.b("String must be non-null and the max length is 128 characters.");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(AudioManager audioManager) {
        if (audioManager != null) {
            return audioManager.getStreamVolume(3) > 0;
        }
        u.h.b("is_audio_enabled() called with a null AudioManager");
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static AudioManager a(Context context) {
        return (AudioManager) context.getSystemService("audio");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void e(String str) {
        File[] listFiles = new File(str).listFiles();
        if (listFiles != null) {
            for (File file : listFiles) {
                if (file.isDirectory()) {
                    u.b.a(">").b(file.getAbsolutePath());
                    e(file.getAbsolutePath());
                } else {
                    u.b.b(file.getAbsolutePath());
                }
            }
        }
    }

    static String a(double d, int i) {
        StringBuilder sb = new StringBuilder();
        a(d, i, sb);
        return sb.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(double d, int i, StringBuilder sb) {
        if (Double.isNaN(d) || Double.isInfinite(d)) {
            sb.append(d);
            return;
        }
        if (d < 0.0d) {
            d = -d;
            sb.append('-');
        }
        if (i == 0) {
            sb.append(Math.round(d));
            return;
        }
        long pow = (long) Math.pow(10.0d, i);
        long round = Math.round(pow * d);
        sb.append(round / pow);
        sb.append('.');
        long j = round % pow;
        if (j == 0) {
            for (int i2 = 0; i2 < i; i2++) {
                sb.append('0');
            }
            return;
        }
        for (long j2 = j * 10; j2 < pow; j2 *= 10) {
            sb.append('0');
        }
        sb.append(j);
    }

    static String f(String str) {
        return str == null ? "" : URLDecoder.decode(str);
    }

    static String d() {
        return com.adcolony.sdk.a.l == null ? "" : com.adcolony.sdk.a.l.getPackageName();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String a(Exception exc) {
        StringWriter stringWriter = new StringWriter();
        exc.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int g(String str) {
        try {
            return (int) Long.parseLong(str, 16);
        } catch (NumberFormatException e) {
            u.f.b("Unable to parse '" + str + "' as a color.");
            return DrawableConstants.CtaButton.BACKGROUND_COLOR;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e() {
        int identifier;
        if (com.adcolony.sdk.a.l != null && (identifier = com.adcolony.sdk.a.l.getResources().getIdentifier("status_bar_height", "dimen", io.fabric.sdk.android.services.common.a.ANDROID_CLIENT_TYPE)) > 0) {
            return com.adcolony.sdk.a.l.getResources().getDimensionPixelSize(identifier);
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean f() {
        return com.adcolony.sdk.a.l != null && Build.VERSION.SDK_INT >= 24 && com.adcolony.sdk.a.l.isInMultiWindowMode();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(String str, File file) {
        boolean z = false;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA1");
            try {
                FileInputStream fileInputStream = new FileInputStream(file);
                byte[] bArr = new byte[Utility.DEFAULT_STREAM_BUFFER_SIZE];
                while (true) {
                    try {
                        try {
                            int read = fileInputStream.read(bArr);
                            if (read <= 0) {
                                break;
                            }
                            messageDigest.update(bArr, 0, read);
                        } finally {
                            try {
                                fileInputStream.close();
                            } catch (IOException e) {
                                u.h.b("Exception on closing MD5 input stream");
                            }
                        }
                    } catch (IOException e2) {
                        throw new RuntimeException("Unable to process file for MD5", e2);
                    }
                }
                z = str.equals(String.format("%40s", new BigInteger(1, messageDigest.digest()).toString(16)).replace(' ', '0'));
            } catch (FileNotFoundException e3) {
                u.h.b("Exception while getting FileInputStream");
            }
        } catch (NoSuchAlgorithmException e4) {
            u.h.b("Exception while getting Digest");
        }
        return z;
    }

    /* loaded from: classes.dex */
    static class a {

        /* renamed from: a  reason: collision with root package name */
        long f1080a = System.currentTimeMillis();

        a() {
        }

        void a() {
            this.f1080a = System.currentTimeMillis();
        }

        double b() {
            return (System.currentTimeMillis() - this.f1080a) / 1000.0d;
        }

        public String toString() {
            return au.a(b(), 2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class b {

        /* renamed from: a  reason: collision with root package name */
        double f1081a;
        double b = System.currentTimeMillis();

        /* JADX INFO: Access modifiers changed from: package-private */
        public b(double d) {
            a(d);
        }

        void a() {
            a(this.f1081a);
        }

        void a(double d) {
            this.f1081a = d;
            this.b = (System.currentTimeMillis() / 1000.0d) + this.f1081a;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public boolean b() {
            return c() == 0.0d;
        }

        double c() {
            double currentTimeMillis = this.b - (System.currentTimeMillis() / 1000.0d);
            if (currentTimeMillis <= 0.0d) {
                return 0.0d;
            }
            return currentTimeMillis;
        }

        public String toString() {
            return au.a(c(), 2);
        }
    }
}
