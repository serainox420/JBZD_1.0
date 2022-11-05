package io.realm.internal;

import io.realm.log.RealmLog;
import io.realm.t;
import io.realm.u;
import java.io.File;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes3.dex */
public class Util {
    static native long nativeGetMemUsage();

    static native String nativeGetTablePrefix();

    public static String a() {
        return nativeGetTablePrefix();
    }

    public static Class<? extends t> a(Class<? extends t> cls) {
        Class superclass = cls.getSuperclass();
        return (superclass.equals(Object.class) || superclass.equals(u.class)) ? cls : superclass;
    }

    public static boolean a(String str, File file, String str2) {
        boolean z;
        File file2 = new File(file, str2 + ".management");
        File[] listFiles = file2.listFiles();
        if (listFiles != null) {
            z = true;
            for (File file3 : listFiles) {
                z = z && file3.delete();
            }
        } else {
            z = true;
        }
        return (z && file2.delete()) && b(str, file, str2);
    }

    private static boolean b(String str, File file, String str2) {
        AtomicBoolean atomicBoolean = new AtomicBoolean(true);
        for (File file2 : Arrays.asList(new File(file, str2), new File(file, str2 + ".lock"), new File(file, str2 + ".log_a"), new File(file, str2 + ".log_b"), new File(file, str2 + ".log"), new File(str))) {
            if (file2.exists() && !file2.delete()) {
                atomicBoolean.set(false);
                RealmLog.b("Could not delete the file %s", file2);
            }
        }
        return atomicBoolean.get();
    }
}
