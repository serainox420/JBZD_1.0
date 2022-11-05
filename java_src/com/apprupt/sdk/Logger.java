package com.apprupt.sdk;

import android.util.Log;
import com.fasterxml.jackson.core.util.MinimalPrettyPrinter;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
/* loaded from: classes.dex */
public class Logger {
    private static final Dummy b = new Dummy();
    private static final HashMap<String, log> c = new HashMap<>();
    private static int d = 0;

    /* renamed from: a  reason: collision with root package name */
    static final HashSet<String> f1916a = new HashSet<>(Arrays.asList("FLOW"));

    /* loaded from: classes.dex */
    public interface log {
        void a(Throwable th, Object... objArr);

        void a(Object... objArr);

        void b(Throwable th, Object... objArr);

        void b(Object... objArr);

        void c(Throwable th, Object... objArr);

        void c(Object... objArr);

        void d(Object... objArr);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class Dummy implements log {
        private Dummy() {
        }

        @Override // com.apprupt.sdk.Logger.log
        public void a(Throwable th, Object... objArr) {
        }

        @Override // com.apprupt.sdk.Logger.log
        public void a(Object... objArr) {
        }

        @Override // com.apprupt.sdk.Logger.log
        public void b(Object... objArr) {
        }

        @Override // com.apprupt.sdk.Logger.log
        public void b(Throwable th, Object... objArr) {
        }

        @Override // com.apprupt.sdk.Logger.log
        public void c(Object... objArr) {
        }

        @Override // com.apprupt.sdk.Logger.log
        public void c(Throwable th, Object... objArr) {
        }

        @Override // com.apprupt.sdk.Logger.log
        public void d(Object... objArr) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class Basic implements log {

        /* renamed from: a  reason: collision with root package name */
        private final String f1917a;
        private int b;

        private Basic(String str) {
            this.b = -1;
            this.f1917a = "CV_SDK" + (str.length() > 0 ? "." : "") + str;
        }

        private void a(int i, Object[] objArr, Throwable th) {
            int i2 = this.b;
            if (i2 == -1) {
                i2 = Logger.d;
            }
            if (i2 > 0 && (i2 & i) > 0) {
                StringBuilder sb = new StringBuilder();
                for (Object obj : objArr) {
                    if (sb.length() > 0) {
                        sb.append(MinimalPrettyPrinter.DEFAULT_ROOT_VALUE_SEPARATOR);
                    }
                    sb.append(obj);
                }
                if (th != null) {
                    sb.append("\n");
                    sb.append("Exception: ");
                    sb.append(th.getClass().getName());
                    sb.append("\n");
                    sb.append(th.getMessage());
                    sb.append("\n");
                    sb.append(Log.getStackTraceString(th));
                }
                switch (i) {
                    case 2:
                        Log.i(this.f1917a, sb.toString());
                        return;
                    case 4:
                        Log.w(this.f1917a, sb.toString());
                        return;
                    case 8:
                        Log.e(this.f1917a, sb.toString());
                        return;
                    default:
                        Log.v(this.f1917a, sb.toString());
                        return;
                }
            }
        }

        @Override // com.apprupt.sdk.Logger.log
        public void a(Throwable th, Object... objArr) {
            a(1, objArr, th);
        }

        @Override // com.apprupt.sdk.Logger.log
        public void a(Object... objArr) {
            a(1, objArr, null);
        }

        @Override // com.apprupt.sdk.Logger.log
        public void b(Object... objArr) {
            a(2, objArr, null);
        }

        @Override // com.apprupt.sdk.Logger.log
        public void b(Throwable th, Object... objArr) {
            a(4, objArr, th);
        }

        @Override // com.apprupt.sdk.Logger.log
        public void c(Object... objArr) {
            a(4, objArr, null);
        }

        @Override // com.apprupt.sdk.Logger.log
        public void c(Throwable th, Object... objArr) {
            a(8, objArr, th);
        }

        @Override // com.apprupt.sdk.Logger.log
        public void d(Object... objArr) {
            a(8, objArr, null);
        }
    }

    public static log a() {
        return a(null);
    }

    public static log a(String str) {
        if (str == null) {
            str = "";
        }
        log logVar = c.get(str);
        if (logVar == null) {
            logVar = (str.length() > 0 || f1916a.contains(str)) ? b : new Basic(str);
            c.put(str, logVar);
        }
        return logVar;
    }

    public static int b() {
        return d;
    }
}
