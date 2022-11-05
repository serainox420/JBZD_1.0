package android.support.v4.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.widget.CompoundButton;
/* compiled from: CompoundButtonCompat.java */
/* loaded from: classes.dex */
public final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final InterfaceC0033c f509a;

    /* compiled from: CompoundButtonCompat.java */
    /* renamed from: android.support.v4.widget.c$c  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    interface InterfaceC0033c {
        Drawable a(CompoundButton compoundButton);

        void a(CompoundButton compoundButton, ColorStateList colorStateList);

        void a(CompoundButton compoundButton, PorterDuff.Mode mode);
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 23) {
            f509a = new a();
        } else if (i >= 21) {
            f509a = new d();
        } else {
            f509a = new b();
        }
    }

    /* compiled from: CompoundButtonCompat.java */
    /* loaded from: classes.dex */
    static class b implements InterfaceC0033c {
        b() {
        }

        @Override // android.support.v4.widget.c.InterfaceC0033c
        public void a(CompoundButton compoundButton, ColorStateList colorStateList) {
            e.a(compoundButton, colorStateList);
        }

        @Override // android.support.v4.widget.c.InterfaceC0033c
        public void a(CompoundButton compoundButton, PorterDuff.Mode mode) {
            e.a(compoundButton, mode);
        }

        @Override // android.support.v4.widget.c.InterfaceC0033c
        public Drawable a(CompoundButton compoundButton) {
            return e.a(compoundButton);
        }
    }

    /* compiled from: CompoundButtonCompat.java */
    /* loaded from: classes.dex */
    static class d extends b {
        d() {
        }

        @Override // android.support.v4.widget.c.b, android.support.v4.widget.c.InterfaceC0033c
        public void a(CompoundButton compoundButton, ColorStateList colorStateList) {
            f.a(compoundButton, colorStateList);
        }

        @Override // android.support.v4.widget.c.b, android.support.v4.widget.c.InterfaceC0033c
        public void a(CompoundButton compoundButton, PorterDuff.Mode mode) {
            f.a(compoundButton, mode);
        }
    }

    /* compiled from: CompoundButtonCompat.java */
    /* loaded from: classes.dex */
    static class a extends d {
        a() {
        }

        @Override // android.support.v4.widget.c.b, android.support.v4.widget.c.InterfaceC0033c
        public Drawable a(CompoundButton compoundButton) {
            return android.support.v4.widget.d.a(compoundButton);
        }
    }

    public static void a(CompoundButton compoundButton, ColorStateList colorStateList) {
        f509a.a(compoundButton, colorStateList);
    }

    public static void a(CompoundButton compoundButton, PorterDuff.Mode mode) {
        f509a.a(compoundButton, mode);
    }

    public static Drawable a(CompoundButton compoundButton) {
        return f509a.a(compoundButton);
    }
}
