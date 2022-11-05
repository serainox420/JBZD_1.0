package android.support.v4.e;

import android.os.Build;
import java.util.Locale;
/* compiled from: TextUtilsCompat.java */
/* loaded from: classes.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    public static final Locale f312a;
    static String b;
    static String c;
    private static final a d;

    /* compiled from: TextUtilsCompat.java */
    /* loaded from: classes.dex */
    private static class a {
        a() {
        }

        public int a(Locale locale) {
            if (locale != null && !locale.equals(f.f312a)) {
                String a2 = android.support.v4.e.a.a(locale);
                if (a2 == null) {
                    return b(locale);
                }
                if (a2.equalsIgnoreCase(f.b) || a2.equalsIgnoreCase(f.c)) {
                    return 1;
                }
            }
            return 0;
        }

        private static int b(Locale locale) {
            switch (Character.getDirectionality(locale.getDisplayName(locale).charAt(0))) {
                case 1:
                case 2:
                    return 1;
                default:
                    return 0;
            }
        }
    }

    /* compiled from: TextUtilsCompat.java */
    /* loaded from: classes.dex */
    private static class b extends a {
        b() {
        }

        @Override // android.support.v4.e.f.a
        public int a(Locale locale) {
            return g.a(locale);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 17) {
            d = new b();
        } else {
            d = new a();
        }
        f312a = new Locale("", "");
        b = "Arab";
        c = "Hebr";
    }

    public static int a(Locale locale) {
        return d.a(locale);
    }
}
