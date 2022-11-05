package com.inmobi.commons.internal;

import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import com.inmobi.commons.thinICE.icedatacollector.BuildSettings;
/* loaded from: classes2.dex */
public class Log {

    /* renamed from: a  reason: collision with root package name */
    private static INTERNAL_LOG_LEVEL f3798a = INTERNAL_LOG_LEVEL.NOT_SET;

    /* loaded from: classes2.dex */
    public enum INTERNAL_LOG_LEVEL {
        NOT_SET(-1),
        NONE(0),
        DEBUG(1),
        VERBOSE(2),
        INTERNAL(3);
        

        /* renamed from: a  reason: collision with root package name */
        private final int f3800a;

        INTERNAL_LOG_LEVEL(int i) {
            this.f3800a = i;
        }

        public int getValue() {
            return this.f3800a;
        }
    }

    public static INTERNAL_LOG_LEVEL getLogLevel() {
        return f3798a;
    }

    public static INTERNAL_LOG_LEVEL getLogLevelValue(long j) {
        if (j == 2) {
            return INTERNAL_LOG_LEVEL.INTERNAL;
        }
        if (j == 1) {
            return INTERNAL_LOG_LEVEL.DEBUG;
        }
        return INTERNAL_LOG_LEVEL.NONE;
    }

    public static void setInternalLogLevel(INTERNAL_LOG_LEVEL internal_log_level) {
        f3798a = internal_log_level;
        if (f3798a == INTERNAL_LOG_LEVEL.INTERNAL) {
            BuildSettings.DEBUG = true;
        }
    }

    public static void debug(String str, String str2) {
        if (f3798a.getValue() >= INTERNAL_LOG_LEVEL.DEBUG.getValue() || (f3798a == INTERNAL_LOG_LEVEL.NOT_SET && CommonsConfig.getLogLevelConfig() >= INTERNAL_LOG_LEVEL.DEBUG.getValue())) {
            android.util.Log.d(str, str2);
        }
    }

    public static void debug(String str, String str2, Throwable th) {
        switch (f3798a) {
            case DEBUG:
                debug(str, str2);
                return;
            case INTERNAL:
                internal(str, str2, th);
                return;
            default:
                return;
        }
    }

    public static void verbose(String str, String str2) {
        if (f3798a.getValue() >= INTERNAL_LOG_LEVEL.VERBOSE.getValue() || (f3798a == INTERNAL_LOG_LEVEL.NOT_SET && CommonsConfig.getLogLevelConfig() >= INTERNAL_LOG_LEVEL.VERBOSE.getValue())) {
            android.util.Log.i(str, str2);
        }
    }

    public static void verbose(String str, String str2, Throwable th) {
        switch (f3798a) {
            case DEBUG:
            case VERBOSE:
                verbose(str, str2);
                return;
            case INTERNAL:
                internal(str, str2, th);
                return;
            default:
                return;
        }
    }

    public static void internal(String str, String str2) {
        if (f3798a.getValue() >= INTERNAL_LOG_LEVEL.INTERNAL.getValue() || (f3798a == INTERNAL_LOG_LEVEL.NOT_SET && CommonsConfig.getLogLevelConfig() >= INTERNAL_LOG_LEVEL.INTERNAL.getValue())) {
            StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
            android.util.Log.v(str, stackTraceElement.getFileName() + ": " + stackTraceElement.getMethodName() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + str2);
        }
    }

    public static void internal(String str, String str2, Throwable th) {
        if (f3798a.getValue() >= INTERNAL_LOG_LEVEL.INTERNAL.getValue() || (f3798a == INTERNAL_LOG_LEVEL.NOT_SET && CommonsConfig.getLogLevelConfig() >= INTERNAL_LOG_LEVEL.INTERNAL.getValue())) {
            StackTraceElement stackTraceElement = new Throwable().getStackTrace()[1];
            android.util.Log.e(str, stackTraceElement.getFileName() + ": " + stackTraceElement.getMethodName() + MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR + str2, th);
        }
    }
}
