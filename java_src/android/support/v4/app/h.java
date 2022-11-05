package android.support.v4.app;

import android.content.Context;
import android.os.Build;
/* compiled from: AppOpsManagerCompat.java */
/* loaded from: classes.dex */
public final class h {

    /* renamed from: a  reason: collision with root package name */
    private static final b f256a;

    /* compiled from: AppOpsManagerCompat.java */
    /* loaded from: classes.dex */
    private static class b {
        b() {
        }

        public String a(String str) {
            return null;
        }

        public int a(Context context, String str, String str2) {
            return 1;
        }
    }

    /* compiled from: AppOpsManagerCompat.java */
    /* loaded from: classes.dex */
    private static class a extends b {
        a() {
        }

        @Override // android.support.v4.app.h.b
        public String a(String str) {
            return i.a(str);
        }

        @Override // android.support.v4.app.h.b
        public int a(Context context, String str, String str2) {
            return i.a(context, str, str2);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 23) {
            f256a = new a();
        } else {
            f256a = new b();
        }
    }

    public static String a(String str) {
        return f256a.a(str);
    }

    public static int a(Context context, String str, String str2) {
        return f256a.a(context, str, str2);
    }
}
