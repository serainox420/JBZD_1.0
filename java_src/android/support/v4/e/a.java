package android.support.v4.e;

import android.os.Build;
import java.util.Locale;
/* compiled from: ICUCompat.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    private static final InterfaceC0019a f303a;

    /* compiled from: ICUCompat.java */
    /* renamed from: android.support.v4.e.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    interface InterfaceC0019a {
        String a(Locale locale);
    }

    /* compiled from: ICUCompat.java */
    /* loaded from: classes.dex */
    static class b implements InterfaceC0019a {
        b() {
        }

        @Override // android.support.v4.e.a.InterfaceC0019a
        public String a(Locale locale) {
            return null;
        }
    }

    /* compiled from: ICUCompat.java */
    /* loaded from: classes.dex */
    static class c implements InterfaceC0019a {
        c() {
        }

        @Override // android.support.v4.e.a.InterfaceC0019a
        public String a(Locale locale) {
            return android.support.v4.e.c.a(locale);
        }
    }

    /* compiled from: ICUCompat.java */
    /* loaded from: classes.dex */
    static class d implements InterfaceC0019a {
        d() {
        }

        @Override // android.support.v4.e.a.InterfaceC0019a
        public String a(Locale locale) {
            return android.support.v4.e.b.a(locale);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 21) {
            f303a = new d();
        } else if (i >= 14) {
            f303a = new c();
        } else {
            f303a = new b();
        }
    }

    public static String a(Locale locale) {
        return f303a.a(locale);
    }
}
