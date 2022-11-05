package android.support.v4.os;

import android.os.Build;
/* compiled from: TraceCompat.java */
/* loaded from: classes.dex */
public final class i {
    public static void a(String str) {
        if (Build.VERSION.SDK_INT >= 18) {
            j.a(str);
        }
    }

    public static void a() {
        if (Build.VERSION.SDK_INT >= 18) {
            j.a();
        }
    }
}
