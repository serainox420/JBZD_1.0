package io.realm.internal;

import android.content.Context;
import java.io.File;
/* compiled from: RealmCore.java */
/* loaded from: classes3.dex */
public class k {

    /* renamed from: a  reason: collision with root package name */
    private static final String f5800a = File.separator;
    private static final String b = File.pathSeparator;
    private static final String c = "lib" + b + ".." + f5800a + "lib";
    private static volatile boolean d = false;

    public static synchronized void a(Context context) {
        synchronized (k.class) {
            if (!d) {
                com.getkeepsafe.relinker.b.a(context, "realm-jni", "3.0.0");
                d = true;
            }
        }
    }
}
