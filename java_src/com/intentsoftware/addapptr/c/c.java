package com.intentsoftware.addapptr.c;

import android.util.Log;
import com.facebook.internal.AnalyticsEvents;
/* compiled from: Logger.java */
/* loaded from: classes2.dex */
public class c {
    private static final int MAX_LOG_LENGTH = 4000;
    private static final String TAG = "AATKit";
    private static int userSetLogLevel = 7;

    public static boolean isLoggable(int i) {
        return Log.isLoggable(TAG, i) || Log.isLoggable(TAG, i) || userSetLogLevel <= i;
    }

    public static void v(Object obj, String str) {
        log(2, formatMessage(obj, str));
    }

    public static void v(Object obj, String str, Throwable th) {
        log(2, formatMessage(obj, str), th);
    }

    public static void d(Object obj, String str) {
        log(3, formatMessage(obj, str));
    }

    public static void d(Object obj, String str, Throwable th) {
        log(3, formatMessage(obj, str), th);
    }

    public static void i(Object obj, String str) {
        log(4, formatMessage(obj, str));
    }

    public static void i(Object obj, String str, Throwable th) {
        log(4, formatMessage(obj, str), th);
    }

    public static void w(Object obj, String str) {
        log(5, formatMessage(obj, str));
    }

    public static void w(Object obj, String str, Throwable th) {
        log(5, formatMessage(obj, str), th);
    }

    public static void e(Object obj, String str) {
        log(6, formatMessage(obj, str));
    }

    public static void e(Object obj, String str, Throwable th) {
        log(6, formatMessage(obj, str), th);
    }

    private static void log(int i, String str, Throwable th) {
        if (th != null) {
            if (str != null) {
                str = str + "\n" + Log.getStackTraceString(th);
            } else {
                str = Log.getStackTraceString(th);
            }
        }
        log(i, str);
    }

    private static void log(int i, String str) {
        while (str.length() > 4000) {
            int lastIndexOf = str.lastIndexOf("\n", 4000);
            if (lastIndexOf == -1) {
                lastIndexOf = 4000;
            }
            Log.println(i, TAG, str.substring(0, lastIndexOf));
            str = str.substring(lastIndexOf).trim();
        }
        Log.println(i, TAG, str);
    }

    private static String formatMessage(Object obj, String str) {
        String str2;
        if (obj != null) {
            if (obj instanceof String) {
                str2 = (String) obj;
            } else if (obj instanceof Class) {
                str2 = ((Class) obj).getSimpleName();
            } else {
                str2 = obj.getClass().getSimpleName();
            }
        } else {
            str2 = AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN;
        }
        return str2 + ": " + str;
    }

    public static void setUserSetLogLevel(int i) {
        userSetLogLevel = i;
    }
}
