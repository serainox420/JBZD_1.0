package com.millennialmedia;

import android.util.Log;
/* loaded from: classes3.dex */
public class MMLog {
    public static int logLevel = 4;

    public static void setLogLevel(int i) {
        logLevel = i;
    }

    public static boolean isVerboseEnabled() {
        return logLevel <= 2;
    }

    public static void v(String str, String str2) {
        if (logLevel <= 2) {
            a(str, str2);
        }
    }

    public static void v(String str, String str2, Throwable th) {
        if (logLevel <= 2) {
            a(str, str2 + ": " + Log.getStackTraceString(th));
        }
    }

    private static void a(String str, String str2) {
        Log.v(a(str), str2);
    }

    public static boolean isDebugEnabled() {
        return logLevel <= 3;
    }

    public static void d(String str, String str2) {
        if (logLevel <= 3) {
            b(str, str2);
        }
    }

    public static void d(String str, String str2, Throwable th) {
        if (logLevel <= 3) {
            b(str, str2 + ": " + Log.getStackTraceString(th));
        }
    }

    private static void b(String str, String str2) {
        Log.d(a(str), str2);
    }

    public static void i(String str, String str2) {
        if (logLevel <= 4) {
            c(str, str2);
        }
    }

    public static void i(String str, String str2, Throwable th) {
        if (logLevel <= 4) {
            c(str, str2 + ": " + Log.getStackTraceString(th));
        }
    }

    private static void c(String str, String str2) {
        Log.i(a(str), str2);
    }

    public static void w(String str, String str2) {
        if (logLevel <= 5) {
            f(str, str2);
        }
    }

    public static void w(String str, String str2, Throwable th) {
        if (logLevel <= 5) {
            f(str, str2 + ": " + Log.getStackTraceString(th));
        }
    }

    private static void f(String str, String str2) {
        Log.w(a(str), str2);
    }

    public static void e(String str, String str2) {
        if (logLevel <= 6) {
            g(str, str2);
        }
    }

    public static void e(String str, String str2, Throwable th) {
        if (logLevel <= 6) {
            g(str, str2 + ": " + Log.getStackTraceString(th));
        }
    }

    private static void g(String str, String str2) {
        Log.e(a(str), str2);
    }

    private static String a(String str) {
        return "MMSDK-" + str + " <" + Thread.currentThread().getId() + ":" + System.currentTimeMillis() + ">";
    }
}
