package com.mopub.common.logging;

import android.annotation.SuppressLint;
import android.util.Log;
import com.mopub.common.VisibleForTesting;
import java.util.HashMap;
import java.util.Map;
import java.util.logging.Handler;
import java.util.logging.Level;
import java.util.logging.LogManager;
import java.util.logging.LogRecord;
import java.util.logging.Logger;
/* loaded from: classes3.dex */
public class MoPubLog {
    public static final String LOGGER_NAMESPACE = "com.mopub";

    /* renamed from: a  reason: collision with root package name */
    private static final Logger f4384a = Logger.getLogger(LOGGER_NAMESPACE);
    private static final a b = new a();

    static {
        f4384a.setUseParentHandlers(false);
        f4384a.setLevel(Level.ALL);
        b.setLevel(Level.FINE);
        LogManager.getLogManager().addLogger(f4384a);
        a(f4384a, b);
    }

    private MoPubLog() {
    }

    public static void c(String str) {
        c(str, null);
    }

    public static void v(String str) {
        v(str, null);
    }

    public static void d(String str) {
        d(str, null);
    }

    public static void i(String str) {
        i(str, null);
    }

    public static void w(String str) {
        w(str, null);
    }

    public static void e(String str) {
        e(str, null);
    }

    public static void c(String str, Throwable th) {
        f4384a.log(Level.FINEST, str, th);
    }

    public static void v(String str, Throwable th) {
        f4384a.log(Level.FINE, str, th);
    }

    public static void d(String str, Throwable th) {
        f4384a.log(Level.CONFIG, str, th);
    }

    public static void i(String str, Throwable th) {
        f4384a.log(Level.INFO, str, th);
    }

    public static void w(String str, Throwable th) {
        f4384a.log(Level.WARNING, str, th);
    }

    public static void e(String str, Throwable th) {
        f4384a.log(Level.SEVERE, str, th);
    }

    @VisibleForTesting
    public static void setSdkHandlerLevel(Level level) {
        b.setLevel(level);
    }

    private static void a(Logger logger, Handler handler) {
        for (Handler handler2 : logger.getHandlers()) {
            if (handler2.equals(handler)) {
                return;
            }
        }
        logger.addHandler(handler);
    }

    /* loaded from: classes3.dex */
    private static final class a extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private static final Map<Level, Integer> f4385a = new HashMap(7);

        private a() {
        }

        static {
            f4385a.put(Level.FINEST, 2);
            f4385a.put(Level.FINER, 2);
            f4385a.put(Level.FINE, 2);
            f4385a.put(Level.CONFIG, 3);
            f4385a.put(Level.INFO, 4);
            f4385a.put(Level.WARNING, 5);
            f4385a.put(Level.SEVERE, 6);
        }

        @Override // java.util.logging.Handler
        @SuppressLint({"LogTagMismatch"})
        public void publish(LogRecord logRecord) {
            int i;
            Throwable thrown;
            if (isLoggable(logRecord)) {
                if (f4385a.containsKey(logRecord.getLevel())) {
                    i = f4385a.get(logRecord.getLevel()).intValue();
                } else {
                    i = 2;
                }
                String str = logRecord.getMessage() + "\n";
                if (logRecord.getThrown() != null) {
                    str = str + Log.getStackTraceString(thrown);
                }
                Log.println(i, "MoPub", str);
            }
        }

        @Override // java.util.logging.Handler
        public void close() {
        }

        @Override // java.util.logging.Handler
        public void flush() {
        }
    }
}
