package com.mopub.volley;

import android.os.SystemClock;
import android.util.Log;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
/* loaded from: classes3.dex */
public class VolleyLog {
    public static String TAG = "Volley";
    public static boolean DEBUG = Log.isLoggable(TAG, 2);

    public static void setTag(String str) {
        d("Changing log tag to %s", str);
        TAG = str;
        DEBUG = Log.isLoggable(TAG, 2);
    }

    public static void v(String str, Object... objArr) {
        if (DEBUG) {
            Log.v(TAG, a(str, objArr));
        }
    }

    public static void d(String str, Object... objArr) {
        Log.d(TAG, a(str, objArr));
    }

    public static void e(String str, Object... objArr) {
        Log.e(TAG, a(str, objArr));
    }

    public static void e(Throwable th, String str, Object... objArr) {
        Log.e(TAG, a(str, objArr), th);
    }

    public static void wtf(String str, Object... objArr) {
        Log.wtf(TAG, a(str, objArr));
    }

    public static void wtf(Throwable th, String str, Object... objArr) {
        Log.wtf(TAG, a(str, objArr), th);
    }

    private static String a(String str, Object... objArr) {
        String str2;
        if (objArr != null) {
            str = String.format(Locale.US, str, objArr);
        }
        StackTraceElement[] stackTrace = new Throwable().fillInStackTrace().getStackTrace();
        int i = 2;
        while (true) {
            if (i >= stackTrace.length) {
                str2 = "<unknown>";
                break;
            } else if (stackTrace[i].getClass().equals(VolleyLog.class)) {
                i++;
            } else {
                String className = stackTrace[i].getClassName();
                String substring = className.substring(className.lastIndexOf(46) + 1);
                str2 = substring.substring(substring.lastIndexOf(36) + 1) + "." + stackTrace[i].getMethodName();
                break;
            }
        }
        return String.format(Locale.US, "[%d] %s: %s", Long.valueOf(Thread.currentThread().getId()), str2, str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public static class a {
        public static final boolean ENABLED = VolleyLog.DEBUG;

        /* renamed from: a  reason: collision with root package name */
        private final List<C0528a> f4683a = new ArrayList();
        private boolean b = false;

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: com.mopub.volley.VolleyLog$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static class C0528a {
            public final String name;
            public final long thread;
            public final long time;

            public C0528a(String str, long j, long j2) {
                this.name = str;
                this.thread = j;
                this.time = j2;
            }
        }

        public synchronized void add(String str, long j) {
            if (this.b) {
                throw new IllegalStateException("Marker added to finished log");
            }
            this.f4683a.add(new C0528a(str, j, SystemClock.elapsedRealtime()));
        }

        public synchronized void finish(String str) {
            this.b = true;
            long a2 = a();
            if (a2 > 0) {
                long j = this.f4683a.get(0).time;
                VolleyLog.d("(%-4d ms) %s", Long.valueOf(a2), str);
                long j2 = j;
                for (C0528a c0528a : this.f4683a) {
                    long j3 = c0528a.time;
                    VolleyLog.d("(+%-4d) [%2d] %s", Long.valueOf(j3 - j2), Long.valueOf(c0528a.thread), c0528a.name);
                    j2 = j3;
                }
            }
        }

        protected void finalize() throws Throwable {
            if (!this.b) {
                finish("Request on the loose");
                VolleyLog.e("Marker log finalized without finish() - uncaught exit point for request", new Object[0]);
            }
        }

        private long a() {
            if (this.f4683a.size() == 0) {
                return 0L;
            }
            return this.f4683a.get(this.f4683a.size() - 1).time - this.f4683a.get(0).time;
        }
    }
}
