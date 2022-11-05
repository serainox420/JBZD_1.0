package com.pubmatic.sdk.common;

import android.util.Log;
/* loaded from: classes3.dex */
public class PMLogger {
    private static LogLevel logLevel = LogLevel.Error;

    /* loaded from: classes3.dex */
    public enum LogLevel {
        None,
        Error,
        Debug
    }

    /* loaded from: classes3.dex */
    public interface LogListener {
        void onLogEvent(String str, LogLevel logLevel);
    }

    public static void setLogLevel(LogLevel logLevel2) {
        logLevel = logLevel2;
    }

    public LogLevel getLogLevel() {
        return logLevel;
    }

    public static void logEvent(String str, LogLevel logLevel2) {
        if (logLevel2.ordinal() <= logLevel.ordinal()) {
            switch (logLevel2) {
                case Debug:
                    Log.d("PubMatic SDK", str);
                    return;
                case Error:
                    Log.e("PubMatic SDK", str);
                    return;
                default:
                    return;
            }
        }
    }
}
