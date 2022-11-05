package io.realm.log;

import android.util.Log;
/* loaded from: classes3.dex */
public final class RealmLog {

    /* renamed from: a  reason: collision with root package name */
    private static String f5807a = "REALM_JAVA";

    private static native void nativeAddLogger(RealmLogger realmLogger);

    private static native void nativeClearLoggers();

    private static native int nativeGetLogLevel();

    private static native void nativeLog(int i, String str, Throwable th, String str2);

    private static native void nativeRegisterDefaultLogger();

    private static native void nativeRemoveLogger(RealmLogger realmLogger);

    private static native void nativeSetLogLevel(int i);

    public static void a(String str, Object... objArr) {
        a(null, str, objArr);
    }

    public static void a(Throwable th, String str, Object... objArr) {
        a(3, th, str, objArr);
    }

    public static void b(String str, Object... objArr) {
        b(null, str, objArr);
    }

    public static void b(Throwable th, String str, Object... objArr) {
        a(5, th, str, objArr);
    }

    public static void c(String str, Object... objArr) {
        c(null, str, objArr);
    }

    public static void c(Throwable th, String str, Object... objArr) {
        a(7, th, str, objArr);
    }

    private static void a(int i, Throwable th, String str, Object... objArr) {
        StringBuilder sb = new StringBuilder();
        if (objArr != null && objArr.length > 0) {
            str = String.format(str, objArr);
        }
        if (th != null) {
            sb.append(Log.getStackTraceString(th));
        }
        if (str != null) {
            if (th != null) {
                sb.append("\n");
            }
            sb.append(str);
        }
        nativeLog(i, f5807a, th, sb.toString());
    }
}
