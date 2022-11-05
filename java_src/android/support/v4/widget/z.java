package android.support.v4.widget;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.TextView;
/* compiled from: TextViewCompat.java */
/* loaded from: classes.dex */
public final class z {

    /* renamed from: a  reason: collision with root package name */
    static final f f526a;

    /* compiled from: TextViewCompat.java */
    /* loaded from: classes.dex */
    interface f {
        int a(TextView textView);

        void a(TextView textView, int i);

        void a(TextView textView, Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4);

        Drawable[] b(TextView textView);
    }

    /* compiled from: TextViewCompat.java */
    /* loaded from: classes.dex */
    static class b implements f {
        b() {
        }

        @Override // android.support.v4.widget.z.f
        public void a(TextView textView, Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
            textView.setCompoundDrawables(drawable, drawable2, drawable3, drawable4);
        }

        @Override // android.support.v4.widget.z.f
        public int a(TextView textView) {
            return ab.a(textView);
        }

        @Override // android.support.v4.widget.z.f
        public void a(TextView textView, int i) {
            ab.a(textView, i);
        }

        @Override // android.support.v4.widget.z.f
        public Drawable[] b(TextView textView) {
            return ab.b(textView);
        }
    }

    /* compiled from: TextViewCompat.java */
    /* loaded from: classes.dex */
    static class e extends b {
        e() {
        }

        @Override // android.support.v4.widget.z.b, android.support.v4.widget.z.f
        public int a(TextView textView) {
            return ac.a(textView);
        }
    }

    /* compiled from: TextViewCompat.java */
    /* loaded from: classes.dex */
    static class c extends e {
        c() {
        }

        @Override // android.support.v4.widget.z.b, android.support.v4.widget.z.f
        public void a(TextView textView, Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
            ad.a(textView, drawable, drawable2, drawable3, drawable4);
        }

        @Override // android.support.v4.widget.z.b, android.support.v4.widget.z.f
        public Drawable[] b(TextView textView) {
            return ad.a(textView);
        }
    }

    /* compiled from: TextViewCompat.java */
    /* loaded from: classes.dex */
    static class d extends c {
        d() {
        }

        @Override // android.support.v4.widget.z.c, android.support.v4.widget.z.b, android.support.v4.widget.z.f
        public void a(TextView textView, Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
            ae.a(textView, drawable, drawable2, drawable3, drawable4);
        }

        @Override // android.support.v4.widget.z.c, android.support.v4.widget.z.b, android.support.v4.widget.z.f
        public Drawable[] b(TextView textView) {
            return ae.a(textView);
        }
    }

    /* compiled from: TextViewCompat.java */
    /* loaded from: classes.dex */
    static class a extends d {
        a() {
        }

        @Override // android.support.v4.widget.z.b, android.support.v4.widget.z.f
        public void a(TextView textView, int i) {
            aa.a(textView, i);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            f526a = new a();
        } else if (i >= 18) {
            f526a = new d();
        } else if (i >= 17) {
            f526a = new c();
        } else if (i >= 16) {
            f526a = new e();
        } else {
            f526a = new b();
        }
    }

    public static void a(TextView textView, Drawable drawable, Drawable drawable2, Drawable drawable3, Drawable drawable4) {
        f526a.a(textView, drawable, drawable2, drawable3, drawable4);
    }

    public static int a(TextView textView) {
        return f526a.a(textView);
    }

    public static void a(TextView textView, int i) {
        f526a.a(textView, i);
    }

    public static Drawable[] b(TextView textView) {
        return f526a.b(textView);
    }
}
