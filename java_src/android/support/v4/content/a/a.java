package android.support.v4.content.a;

import android.content.res.Resources;
import android.os.Build;
/* compiled from: ConfigurationHelper.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final InterfaceC0018a f296a;

    /* compiled from: ConfigurationHelper.java */
    /* renamed from: android.support.v4.content.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    private interface InterfaceC0018a {
        int a(Resources resources);

        int b(Resources resources);

        int c(Resources resources);
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 17) {
            f296a = new d();
        } else if (i >= 13) {
            f296a = new c();
        } else {
            f296a = new b();
        }
    }

    /* compiled from: ConfigurationHelper.java */
    /* loaded from: classes.dex */
    private static class b implements InterfaceC0018a {
        b() {
        }

        @Override // android.support.v4.content.a.a.InterfaceC0018a
        public int a(Resources resources) {
            return android.support.v4.content.a.b.a(resources);
        }

        @Override // android.support.v4.content.a.a.InterfaceC0018a
        public int b(Resources resources) {
            return android.support.v4.content.a.b.b(resources);
        }

        @Override // android.support.v4.content.a.a.InterfaceC0018a
        public int c(Resources resources) {
            return android.support.v4.content.a.b.c(resources);
        }
    }

    /* compiled from: ConfigurationHelper.java */
    /* loaded from: classes.dex */
    private static class c extends b {
        c() {
        }

        @Override // android.support.v4.content.a.a.b, android.support.v4.content.a.a.InterfaceC0018a
        public int a(Resources resources) {
            return android.support.v4.content.a.c.a(resources);
        }

        @Override // android.support.v4.content.a.a.b, android.support.v4.content.a.a.InterfaceC0018a
        public int b(Resources resources) {
            return android.support.v4.content.a.c.b(resources);
        }

        @Override // android.support.v4.content.a.a.b, android.support.v4.content.a.a.InterfaceC0018a
        public int c(Resources resources) {
            return android.support.v4.content.a.c.c(resources);
        }
    }

    /* compiled from: ConfigurationHelper.java */
    /* loaded from: classes.dex */
    private static class d extends c {
        d() {
        }
    }

    public static int a(Resources resources) {
        return f296a.a(resources);
    }

    public static int b(Resources resources) {
        return f296a.b(resources);
    }

    public static int c(Resources resources) {
        return f296a.c(resources);
    }
}
