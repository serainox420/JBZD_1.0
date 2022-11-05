package com.mdotm.android.utils;

import android.util.Log;
/* loaded from: classes3.dex */
public class MdotMLogger {
    private static final String TAG = "MdotM";

    public static void time(Object obj, String str) {
    }

    public static void debug(Object obj, String str) {
        if (MdotMConfiguration.LOG_LEVEL <= 3) {
            Log.d(TAG, String.valueOf(obj.getClass().getSimpleName()) + ": " + str);
        }
    }

    public static void error(Object obj, String str) {
        if (MdotMConfiguration.LOG_LEVEL <= 6) {
            Log.e(TAG, String.valueOf(obj.getClass().getSimpleName()) + ": " + str);
        }
    }

    public static void e(Object obj, String str) {
        if (MdotMConfiguration.LOG_LEVEL <= 6) {
            Log.e(TAG, String.valueOf(obj.getClass().getSimpleName()) + ": " + str);
        }
    }

    public static void w(Object obj, String str) {
        if (MdotMConfiguration.LOG_LEVEL <= 5) {
            Log.w(TAG, String.valueOf(obj.getClass().getSimpleName()) + ": " + str);
        }
    }

    public static void i(Object obj, String str) {
        if (MdotMConfiguration.LOG_LEVEL <= 4) {
            Log.i(TAG, String.valueOf(obj.getClass().getSimpleName()) + ": " + str);
        }
    }

    public static void d(Object obj, String str) {
        if (MdotMConfiguration.LOG_LEVEL <= 3) {
            Log.d(TAG, String.valueOf(obj.getClass().getSimpleName()) + ": " + str);
        }
    }

    public static void e(Object obj, String str, Exception exc) {
        if (MdotMConfiguration.LOG_LEVEL <= 6) {
            Log.e(TAG, String.valueOf(obj.getClass().getSimpleName()) + ": " + str, exc);
        }
    }
}
