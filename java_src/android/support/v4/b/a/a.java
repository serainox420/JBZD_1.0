package android.support.v4.b.a;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import java.io.IOException;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
/* compiled from: DrawableCompat.java */
/* loaded from: classes.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    static final b f279a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: DrawableCompat.java */
    /* loaded from: classes.dex */
    public interface b {
        void a(Drawable drawable);

        void a(Drawable drawable, float f, float f2);

        void a(Drawable drawable, int i);

        void a(Drawable drawable, int i, int i2, int i3, int i4);

        void a(Drawable drawable, ColorStateList colorStateList);

        void a(Drawable drawable, Resources.Theme theme);

        void a(Drawable drawable, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws IOException, XmlPullParserException;

        void a(Drawable drawable, PorterDuff.Mode mode);

        void a(Drawable drawable, boolean z);

        boolean b(Drawable drawable);

        boolean b(Drawable drawable, int i);

        Drawable c(Drawable drawable);

        int d(Drawable drawable);

        int e(Drawable drawable);

        boolean f(Drawable drawable);

        ColorFilter g(Drawable drawable);

        void h(Drawable drawable);
    }

    /* compiled from: DrawableCompat.java */
    /* renamed from: android.support.v4.b.a.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    static class C0015a implements b {
        C0015a() {
        }

        @Override // android.support.v4.b.a.a.b
        public void a(Drawable drawable) {
        }

        @Override // android.support.v4.b.a.a.b
        public void a(Drawable drawable, boolean z) {
        }

        @Override // android.support.v4.b.a.a.b
        public boolean b(Drawable drawable) {
            return false;
        }

        @Override // android.support.v4.b.a.a.b
        public void a(Drawable drawable, float f, float f2) {
        }

        @Override // android.support.v4.b.a.a.b
        public void a(Drawable drawable, int i, int i2, int i3, int i4) {
        }

        @Override // android.support.v4.b.a.a.b
        public void a(Drawable drawable, int i) {
            android.support.v4.b.a.c.a(drawable, i);
        }

        @Override // android.support.v4.b.a.a.b
        public void a(Drawable drawable, ColorStateList colorStateList) {
            android.support.v4.b.a.c.a(drawable, colorStateList);
        }

        @Override // android.support.v4.b.a.a.b
        public void a(Drawable drawable, PorterDuff.Mode mode) {
            android.support.v4.b.a.c.a(drawable, mode);
        }

        @Override // android.support.v4.b.a.a.b
        public Drawable c(Drawable drawable) {
            return android.support.v4.b.a.c.a(drawable);
        }

        @Override // android.support.v4.b.a.a.b
        public boolean b(Drawable drawable, int i) {
            return false;
        }

        @Override // android.support.v4.b.a.a.b
        public int d(Drawable drawable) {
            return 0;
        }

        @Override // android.support.v4.b.a.a.b
        public int e(Drawable drawable) {
            return 0;
        }

        @Override // android.support.v4.b.a.a.b
        public void a(Drawable drawable, Resources.Theme theme) {
        }

        @Override // android.support.v4.b.a.a.b
        public boolean f(Drawable drawable) {
            return false;
        }

        @Override // android.support.v4.b.a.a.b
        public ColorFilter g(Drawable drawable) {
            return null;
        }

        @Override // android.support.v4.b.a.a.b
        public void h(Drawable drawable) {
            drawable.clearColorFilter();
        }

        @Override // android.support.v4.b.a.a.b
        public void a(Drawable drawable, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws IOException, XmlPullParserException {
            android.support.v4.b.a.c.a(drawable, resources, xmlPullParser, attributeSet, theme);
        }
    }

    /* compiled from: DrawableCompat.java */
    /* loaded from: classes.dex */
    static class c extends C0015a {
        c() {
        }

        @Override // android.support.v4.b.a.a.C0015a, android.support.v4.b.a.a.b
        public void a(Drawable drawable) {
            android.support.v4.b.a.d.a(drawable);
        }

        @Override // android.support.v4.b.a.a.C0015a, android.support.v4.b.a.a.b
        public Drawable c(Drawable drawable) {
            return android.support.v4.b.a.d.b(drawable);
        }
    }

    /* compiled from: DrawableCompat.java */
    /* loaded from: classes.dex */
    static class d extends c {
        d() {
        }

        @Override // android.support.v4.b.a.a.C0015a, android.support.v4.b.a.a.b
        public boolean b(Drawable drawable, int i) {
            return android.support.v4.b.a.e.a(drawable, i);
        }

        @Override // android.support.v4.b.a.a.C0015a, android.support.v4.b.a.a.b
        public int d(Drawable drawable) {
            int a2 = android.support.v4.b.a.e.a(drawable);
            if (a2 >= 0) {
                return a2;
            }
            return 0;
        }
    }

    /* compiled from: DrawableCompat.java */
    /* loaded from: classes.dex */
    static class e extends d {
        e() {
        }

        @Override // android.support.v4.b.a.a.C0015a, android.support.v4.b.a.a.b
        public void a(Drawable drawable, boolean z) {
            android.support.v4.b.a.f.a(drawable, z);
        }

        @Override // android.support.v4.b.a.a.C0015a, android.support.v4.b.a.a.b
        public boolean b(Drawable drawable) {
            return android.support.v4.b.a.f.a(drawable);
        }

        @Override // android.support.v4.b.a.a.c, android.support.v4.b.a.a.C0015a, android.support.v4.b.a.a.b
        public Drawable c(Drawable drawable) {
            return android.support.v4.b.a.f.b(drawable);
        }

        @Override // android.support.v4.b.a.a.C0015a, android.support.v4.b.a.a.b
        public int e(Drawable drawable) {
            return android.support.v4.b.a.f.c(drawable);
        }
    }

    /* compiled from: DrawableCompat.java */
    /* loaded from: classes.dex */
    static class f extends e {
        f() {
        }

        @Override // android.support.v4.b.a.a.C0015a, android.support.v4.b.a.a.b
        public void a(Drawable drawable, float f, float f2) {
            android.support.v4.b.a.g.a(drawable, f, f2);
        }

        @Override // android.support.v4.b.a.a.C0015a, android.support.v4.b.a.a.b
        public void a(Drawable drawable, int i, int i2, int i3, int i4) {
            android.support.v4.b.a.g.a(drawable, i, i2, i3, i4);
        }

        @Override // android.support.v4.b.a.a.C0015a, android.support.v4.b.a.a.b
        public void a(Drawable drawable, int i) {
            android.support.v4.b.a.g.a(drawable, i);
        }

        @Override // android.support.v4.b.a.a.C0015a, android.support.v4.b.a.a.b
        public void a(Drawable drawable, ColorStateList colorStateList) {
            android.support.v4.b.a.g.a(drawable, colorStateList);
        }

        @Override // android.support.v4.b.a.a.C0015a, android.support.v4.b.a.a.b
        public void a(Drawable drawable, PorterDuff.Mode mode) {
            android.support.v4.b.a.g.a(drawable, mode);
        }

        @Override // android.support.v4.b.a.a.e, android.support.v4.b.a.a.c, android.support.v4.b.a.a.C0015a, android.support.v4.b.a.a.b
        public Drawable c(Drawable drawable) {
            return android.support.v4.b.a.g.a(drawable);
        }

        @Override // android.support.v4.b.a.a.C0015a, android.support.v4.b.a.a.b
        public void a(Drawable drawable, Resources.Theme theme) {
            android.support.v4.b.a.g.a(drawable, theme);
        }

        @Override // android.support.v4.b.a.a.C0015a, android.support.v4.b.a.a.b
        public boolean f(Drawable drawable) {
            return android.support.v4.b.a.g.b(drawable);
        }

        @Override // android.support.v4.b.a.a.C0015a, android.support.v4.b.a.a.b
        public ColorFilter g(Drawable drawable) {
            return android.support.v4.b.a.g.c(drawable);
        }

        @Override // android.support.v4.b.a.a.C0015a, android.support.v4.b.a.a.b
        public void h(Drawable drawable) {
            android.support.v4.b.a.g.d(drawable);
        }

        @Override // android.support.v4.b.a.a.C0015a, android.support.v4.b.a.a.b
        public void a(Drawable drawable, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws IOException, XmlPullParserException {
            android.support.v4.b.a.g.a(drawable, resources, xmlPullParser, attributeSet, theme);
        }
    }

    /* compiled from: DrawableCompat.java */
    /* loaded from: classes.dex */
    static class g extends f {
        g() {
        }

        @Override // android.support.v4.b.a.a.d, android.support.v4.b.a.a.C0015a, android.support.v4.b.a.a.b
        public boolean b(Drawable drawable, int i) {
            return android.support.v4.b.a.b.a(drawable, i);
        }

        @Override // android.support.v4.b.a.a.d, android.support.v4.b.a.a.C0015a, android.support.v4.b.a.a.b
        public int d(Drawable drawable) {
            return android.support.v4.b.a.b.a(drawable);
        }

        @Override // android.support.v4.b.a.a.f, android.support.v4.b.a.a.e, android.support.v4.b.a.a.c, android.support.v4.b.a.a.C0015a, android.support.v4.b.a.a.b
        public Drawable c(Drawable drawable) {
            return drawable;
        }

        @Override // android.support.v4.b.a.a.f, android.support.v4.b.a.a.C0015a, android.support.v4.b.a.a.b
        public void h(Drawable drawable) {
            drawable.clearColorFilter();
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            f279a = new g();
        } else if (i >= 21) {
            f279a = new f();
        } else if (i >= 19) {
            f279a = new e();
        } else if (i >= 17) {
            f279a = new d();
        } else if (i >= 11) {
            f279a = new c();
        } else {
            f279a = new C0015a();
        }
    }

    public static void a(Drawable drawable) {
        f279a.a(drawable);
    }

    public static void a(Drawable drawable, boolean z) {
        f279a.a(drawable, z);
    }

    public static boolean b(Drawable drawable) {
        return f279a.b(drawable);
    }

    public static void a(Drawable drawable, float f2, float f3) {
        f279a.a(drawable, f2, f3);
    }

    public static void a(Drawable drawable, int i, int i2, int i3, int i4) {
        f279a.a(drawable, i, i2, i3, i4);
    }

    public static void a(Drawable drawable, int i) {
        f279a.a(drawable, i);
    }

    public static void a(Drawable drawable, ColorStateList colorStateList) {
        f279a.a(drawable, colorStateList);
    }

    public static void a(Drawable drawable, PorterDuff.Mode mode) {
        f279a.a(drawable, mode);
    }

    public static int c(Drawable drawable) {
        return f279a.e(drawable);
    }

    public static void a(Drawable drawable, Resources.Theme theme) {
        f279a.a(drawable, theme);
    }

    public static boolean d(Drawable drawable) {
        return f279a.f(drawable);
    }

    public static ColorFilter e(Drawable drawable) {
        return f279a.g(drawable);
    }

    public static void f(Drawable drawable) {
        f279a.h(drawable);
    }

    public static void a(Drawable drawable, Resources resources, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme) throws XmlPullParserException, IOException {
        f279a.a(drawable, resources, xmlPullParser, attributeSet, theme);
    }

    public static Drawable g(Drawable drawable) {
        return f279a.c(drawable);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T extends Drawable> T h(Drawable drawable) {
        if (drawable instanceof h) {
            return (T) ((h) drawable).a();
        }
        return drawable;
    }

    public static boolean b(Drawable drawable, int i) {
        return f279a.b(drawable, i);
    }

    public static int i(Drawable drawable) {
        return f279a.d(drawable);
    }
}
