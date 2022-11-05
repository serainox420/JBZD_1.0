package io.fabric.sdk.android.services.common;

import android.app.ActivityManager;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.hardware.SensorManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.os.Debug;
import android.os.StatFs;
import android.provider.Settings;
import android.text.TextUtils;
import com.applovin.sdk.AppLovinTargetingData;
import com.facebook.common.util.ByteConstants;
import com.facebook.internal.ServerProtocol;
import com.flurry.android.Constants;
import java.io.BufferedReader;
import java.io.Closeable;
import java.io.File;
import java.io.FileReader;
import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Scanner;
import java.util.regex.Pattern;
/* compiled from: CommonUtils.java */
/* loaded from: classes3.dex */
public class i {
    private static Boolean b = null;
    private static final char[] c = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', AppLovinTargetingData.GENDER_FEMALE};
    private static long d = -1;

    /* renamed from: a  reason: collision with root package name */
    public static final Comparator<File> f5669a = new Comparator<File>() { // from class: io.fabric.sdk.android.services.common.i.1
        @Override // java.util.Comparator
        /* renamed from: a */
        public int compare(File file, File file2) {
            return (int) (file.lastModified() - file2.lastModified());
        }
    };

    public static SharedPreferences a(Context context) {
        return context.getSharedPreferences("com.crashlytics.prefs", 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0031, code lost:
        r0 = r1[1];
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static String a(File file, String str) {
        BufferedReader bufferedReader;
        Throwable th;
        String str2 = null;
        if (file.exists()) {
            try {
                bufferedReader = new BufferedReader(new FileReader(file), 1024);
                while (true) {
                    try {
                        try {
                            String readLine = bufferedReader.readLine();
                            if (readLine == null) {
                                break;
                            }
                            String[] split = Pattern.compile("\\s*:\\s*").split(readLine, 2);
                            if (split.length > 1 && split[0].equals(str)) {
                                break;
                            }
                        } catch (Exception e) {
                            e = e;
                            io.fabric.sdk.android.c.h().e("Fabric", "Error parsing " + file, e);
                            a(bufferedReader, "Failed to close system file reader.");
                            return str2;
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        a(bufferedReader, "Failed to close system file reader.");
                        throw th;
                    }
                }
                a(bufferedReader, "Failed to close system file reader.");
            } catch (Exception e2) {
                e = e2;
                bufferedReader = null;
            } catch (Throwable th3) {
                bufferedReader = null;
                th = th3;
                a(bufferedReader, "Failed to close system file reader.");
                throw th;
            }
        }
        return str2;
    }

    public static int a() {
        return a.a().ordinal();
    }

    /* compiled from: CommonUtils.java */
    /* loaded from: classes3.dex */
    enum a {
        X86_32,
        X86_64,
        ARM_UNKNOWN,
        PPC,
        PPC64,
        ARMV6,
        ARMV7,
        UNKNOWN,
        ARMV7S,
        ARM64;
        
        private static final Map<String, a> k = new HashMap(4);

        static {
            k.put("armeabi-v7a", ARMV7);
            k.put("armeabi", ARMV6);
            k.put("arm64-v8a", ARM64);
            k.put("x86", X86_32);
        }

        static a a() {
            String str = Build.CPU_ABI;
            if (TextUtils.isEmpty(str)) {
                io.fabric.sdk.android.c.h().a("Fabric", "Architecture#getValue()::Build.CPU_ABI returned null or empty");
                return UNKNOWN;
            }
            a aVar = k.get(str.toLowerCase(Locale.US));
            if (aVar == null) {
                return UNKNOWN;
            }
            return aVar;
        }
    }

    public static synchronized long b() {
        long j;
        synchronized (i.class) {
            if (d == -1) {
                long j2 = 0;
                String a2 = a(new File("/proc/meminfo"), "MemTotal");
                if (!TextUtils.isEmpty(a2)) {
                    String upperCase = a2.toUpperCase(Locale.US);
                    try {
                        if (upperCase.endsWith("KB")) {
                            j2 = a(upperCase, "KB", 1024);
                        } else if (upperCase.endsWith("MB")) {
                            j2 = a(upperCase, "MB", (int) ByteConstants.MB);
                        } else if (upperCase.endsWith("GB")) {
                            j2 = a(upperCase, "GB", 1073741824);
                        } else {
                            io.fabric.sdk.android.c.h().a("Fabric", "Unexpected meminfo format while computing RAM: " + upperCase);
                        }
                    } catch (NumberFormatException e) {
                        io.fabric.sdk.android.c.h().e("Fabric", "Unexpected meminfo format while computing RAM: " + upperCase, e);
                    }
                }
                d = j2;
            }
            j = d;
        }
        return j;
    }

    static long a(String str, String str2, int i) {
        return Long.parseLong(str.split(str2)[0].trim()) * i;
    }

    public static ActivityManager.RunningAppProcessInfo a(String str, Context context) {
        List<ActivityManager.RunningAppProcessInfo> runningAppProcesses = ((ActivityManager) context.getSystemService("activity")).getRunningAppProcesses();
        if (runningAppProcesses != null) {
            for (ActivityManager.RunningAppProcessInfo runningAppProcessInfo : runningAppProcesses) {
                if (runningAppProcessInfo.processName.equals(str)) {
                    return runningAppProcessInfo;
                }
            }
        }
        return null;
    }

    public static String a(InputStream inputStream) throws IOException {
        Scanner useDelimiter = new Scanner(inputStream).useDelimiter("\\A");
        return useDelimiter.hasNext() ? useDelimiter.next() : "";
    }

    public static String a(String str) {
        return a(str, "SHA-1");
    }

    public static String b(InputStream inputStream) {
        return a(inputStream, "SHA-1");
    }

    private static String a(InputStream inputStream, String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-1");
            byte[] bArr = new byte[1024];
            while (true) {
                int read = inputStream.read(bArr);
                if (read != -1) {
                    messageDigest.update(bArr, 0, read);
                } else {
                    return a(messageDigest.digest());
                }
            }
        } catch (Exception e) {
            io.fabric.sdk.android.c.h().e("Fabric", "Could not calculate hash for app icon.", e);
            return "";
        }
    }

    private static String a(byte[] bArr, String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            messageDigest.update(bArr);
            return a(messageDigest.digest());
        } catch (NoSuchAlgorithmException e) {
            io.fabric.sdk.android.c.h().e("Fabric", "Could not create hashing algorithm: " + str + ", returning empty string.", e);
            return "";
        }
    }

    private static String a(String str, String str2) {
        return a(str.getBytes(), str2);
    }

    public static String a(String... strArr) {
        if (strArr == null || strArr.length == 0) {
            return null;
        }
        ArrayList<String> arrayList = new ArrayList();
        for (String str : strArr) {
            if (str != null) {
                arrayList.add(str.replace("-", "").toLowerCase(Locale.US));
            }
        }
        Collections.sort(arrayList);
        StringBuilder sb = new StringBuilder();
        for (String str2 : arrayList) {
            sb.append(str2);
        }
        String sb2 = sb.toString();
        if (sb2.length() <= 0) {
            return null;
        }
        return a(sb2);
    }

    public static long b(Context context) {
        ActivityManager.MemoryInfo memoryInfo = new ActivityManager.MemoryInfo();
        ((ActivityManager) context.getSystemService("activity")).getMemoryInfo(memoryInfo);
        return memoryInfo.availMem;
    }

    public static long b(String str) {
        StatFs statFs;
        long blockSize = new StatFs(str).getBlockSize();
        return (statFs.getBlockCount() * blockSize) - (statFs.getAvailableBlocks() * blockSize);
    }

    public static Float c(Context context) {
        Intent registerReceiver = context.registerReceiver(null, new IntentFilter("android.intent.action.BATTERY_CHANGED"));
        if (registerReceiver == null) {
            return null;
        }
        return Float.valueOf(registerReceiver.getIntExtra("level", -1) / registerReceiver.getIntExtra("scale", -1));
    }

    public static boolean d(Context context) {
        if (f(context)) {
            return false;
        }
        return ((SensorManager) context.getSystemService("sensor")).getDefaultSensor(8) != null;
    }

    public static void a(Context context, String str) {
        if (e(context)) {
            io.fabric.sdk.android.c.h().a("Fabric", str);
        }
    }

    public static void a(Context context, String str, Throwable th) {
        if (e(context)) {
            io.fabric.sdk.android.c.h().e("Fabric", str);
        }
    }

    public static void a(Context context, int i, String str, String str2) {
        if (e(context)) {
            io.fabric.sdk.android.c.h().a(i, "Fabric", str2);
        }
    }

    public static boolean e(Context context) {
        if (b == null) {
            b = Boolean.valueOf(a(context, "com.crashlytics.Trace", false));
        }
        return b.booleanValue();
    }

    public static boolean a(Context context, String str, boolean z) {
        Resources resources;
        if (context != null && (resources = context.getResources()) != null) {
            int a2 = a(context, str, "bool");
            if (a2 > 0) {
                return resources.getBoolean(a2);
            }
            int a3 = a(context, str, "string");
            if (a3 > 0) {
                return Boolean.parseBoolean(context.getString(a3));
            }
            return z;
        }
        return z;
    }

    public static int a(Context context, String str, String str2) {
        return context.getResources().getIdentifier(str, str2, j(context));
    }

    public static boolean f(Context context) {
        return ServerProtocol.DIALOG_PARAM_SDK_VERSION.equals(Build.PRODUCT) || "google_sdk".equals(Build.PRODUCT) || Settings.Secure.getString(context.getContentResolver(), "android_id") == null;
    }

    public static boolean g(Context context) {
        boolean f = f(context);
        String str = Build.TAGS;
        if ((f || str == null || !str.contains("test-keys")) && !new File("/system/app/Superuser.apk").exists()) {
            return !f && new File("/system/xbin/su").exists();
        }
        return true;
    }

    public static boolean c() {
        return Debug.isDebuggerConnected() || Debug.waitingForDebugger();
    }

    public static int h(Context context) {
        int i = 0;
        if (f(context)) {
            i = 1;
        }
        if (g(context)) {
            i |= 2;
        }
        if (c()) {
            return i | 4;
        }
        return i;
    }

    public static int a(Context context, boolean z) {
        Float c2 = c(context);
        if (!z || c2 == null) {
            return 1;
        }
        if (c2.floatValue() >= 99.0d) {
            return 3;
        }
        if (c2.floatValue() < 99.0d) {
            return 2;
        }
        return 0;
    }

    public static String a(byte[] bArr) {
        char[] cArr = new char[bArr.length * 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = bArr[i] & Constants.UNKNOWN;
            cArr[i * 2] = c[i2 >>> 4];
            cArr[(i * 2) + 1] = c[i2 & 15];
        }
        return new String(cArr);
    }

    public static boolean i(Context context) {
        return (context.getApplicationInfo().flags & 2) != 0;
    }

    public static String b(Context context, String str) {
        int a2 = a(context, str, "string");
        return a2 > 0 ? context.getString(a2) : "";
    }

    public static void a(Closeable closeable, String str) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (IOException e) {
                io.fabric.sdk.android.c.h().e("Fabric", str, e);
            }
        }
    }

    public static void a(Flushable flushable, String str) {
        if (flushable != null) {
            try {
                flushable.flush();
            } catch (IOException e) {
                io.fabric.sdk.android.c.h().e("Fabric", str, e);
            }
        }
    }

    public static boolean c(String str) {
        return str == null || str.length() == 0;
    }

    public static String a(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("value must be zero or greater");
        }
        return String.format(Locale.US, "%1$10s", Integer.valueOf(i)).replace(' ', '0');
    }

    public static String j(Context context) {
        int i = context.getApplicationContext().getApplicationInfo().icon;
        return i > 0 ? context.getResources().getResourcePackageName(i) : context.getPackageName();
    }

    public static void a(InputStream inputStream, OutputStream outputStream, byte[] bArr) throws IOException {
        while (true) {
            int read = inputStream.read(bArr);
            if (read != -1) {
                outputStream.write(bArr, 0, read);
            } else {
                return;
            }
        }
    }

    public static String b(int i) {
        switch (i) {
            case 2:
                return "V";
            case 3:
                return "D";
            case 4:
                return "I";
            case 5:
                return "W";
            case 6:
                return "E";
            case 7:
                return "A";
            default:
                return "?";
        }
    }

    public static String k(Context context) {
        InputStream inputStream;
        Throwable th;
        String str = null;
        try {
            inputStream = context.getResources().openRawResource(l(context));
            try {
                try {
                    String b2 = b(inputStream);
                    if (!c(b2)) {
                        str = b2;
                    }
                    a((Closeable) inputStream, "Failed to close icon input stream.");
                } catch (Exception e) {
                    e = e;
                    io.fabric.sdk.android.c.h().e("Fabric", "Could not calculate hash for app icon.", e);
                    a((Closeable) inputStream, "Failed to close icon input stream.");
                    return str;
                }
            } catch (Throwable th2) {
                th = th2;
                a((Closeable) inputStream, "Failed to close icon input stream.");
                throw th;
            }
        } catch (Exception e2) {
            e = e2;
            inputStream = null;
        } catch (Throwable th3) {
            inputStream = null;
            th = th3;
            a((Closeable) inputStream, "Failed to close icon input stream.");
            throw th;
        }
        return str;
    }

    public static int l(Context context) {
        return context.getApplicationContext().getApplicationInfo().icon;
    }

    public static String m(Context context) {
        int a2 = a(context, "io.fabric.android.build_id", "string");
        if (a2 == 0) {
            a2 = a(context, "com.crashlytics.android.build_id", "string");
        }
        if (a2 == 0) {
            return null;
        }
        String string = context.getResources().getString(a2);
        io.fabric.sdk.android.c.h().a("Fabric", "Build ID is: " + string);
        return string;
    }

    public static void a(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
            }
        }
    }

    public static boolean c(Context context, String str) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    public static boolean n(Context context) {
        if (c(context, "android.permission.ACCESS_NETWORK_STATE")) {
            NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
            return activeNetworkInfo != null && activeNetworkInfo.isConnectedOrConnecting();
        }
        return true;
    }
}
