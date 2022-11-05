package android.support.v4.view;

import android.os.Build;
import android.view.ViewGroup;
/* compiled from: MarginLayoutParamsCompat.java */
/* loaded from: classes.dex */
public final class o {

    /* renamed from: a  reason: collision with root package name */
    static final a f468a;

    /* compiled from: MarginLayoutParamsCompat.java */
    /* loaded from: classes.dex */
    interface a {
        int a(ViewGroup.MarginLayoutParams marginLayoutParams);

        int b(ViewGroup.MarginLayoutParams marginLayoutParams);
    }

    /* compiled from: MarginLayoutParamsCompat.java */
    /* loaded from: classes.dex */
    static class b implements a {
        b() {
        }

        @Override // android.support.v4.view.o.a
        public int a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return marginLayoutParams.leftMargin;
        }

        @Override // android.support.v4.view.o.a
        public int b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return marginLayoutParams.rightMargin;
        }
    }

    /* compiled from: MarginLayoutParamsCompat.java */
    /* loaded from: classes.dex */
    static class c implements a {
        c() {
        }

        @Override // android.support.v4.view.o.a
        public int a(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return p.a(marginLayoutParams);
        }

        @Override // android.support.v4.view.o.a
        public int b(ViewGroup.MarginLayoutParams marginLayoutParams) {
            return p.b(marginLayoutParams);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 17) {
            f468a = new c();
        } else {
            f468a = new b();
        }
    }

    public static int a(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return f468a.a(marginLayoutParams);
    }

    public static int b(ViewGroup.MarginLayoutParams marginLayoutParams) {
        return f468a.b(marginLayoutParams);
    }
}
