package com.revmob.internal;

import android.util.Log;
/* loaded from: classes3.dex */
public class RMLog {
    public static void d(String str) {
    }

    public static void d(String str, Throwable th) {
    }

    public static void e(String str) {
        Log.e("[RevMob]", str);
    }

    public static void e(String str, Throwable th) {
        Log.d("[RevMob]", str, th);
    }

    public static void i(String str) {
        Log.i("[RevMob]", str);
    }

    public static void i(String str, Throwable th) {
        Log.d("[RevMob]", str, th);
    }

    public static void w(String str) {
        Log.w("[RevMob]", str);
    }

    public static void w(String str, Throwable th) {
        Log.d("[RevMob]", str, th);
    }
}
