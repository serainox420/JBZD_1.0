package android.support.v7.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.support.v7.app.a;
import android.support.v7.view.b;
import android.support.v7.widget.Toolbar;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
/* compiled from: AppCompatDelegate.java */
/* loaded from: classes.dex */
public abstract class e {

    /* renamed from: a  reason: collision with root package name */
    private static int f575a = -1;
    private static boolean b = false;

    public abstract ActionBar a();

    public abstract android.support.v7.view.b a(b.a aVar);

    public abstract View a(int i);

    public abstract void a(Configuration configuration);

    public abstract void a(Bundle bundle);

    public abstract void a(Toolbar toolbar);

    public abstract void a(View view);

    public abstract void a(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void a(CharSequence charSequence);

    public abstract MenuInflater b();

    public abstract void b(int i);

    public abstract void b(Bundle bundle);

    public abstract void b(View view, ViewGroup.LayoutParams layoutParams);

    public abstract void c();

    public abstract void c(Bundle bundle);

    public abstract boolean c(int i);

    public abstract void d();

    public abstract void e();

    public abstract void f();

    public abstract void g();

    public abstract a.InterfaceC0036a h();

    public abstract void i();

    public abstract boolean j();

    public static e a(Activity activity, d dVar) {
        return a(activity, activity.getWindow(), dVar);
    }

    public static e a(Dialog dialog, d dVar) {
        return a(dialog.getContext(), dialog.getWindow(), dVar);
    }

    private static e a(Context context, Window window, d dVar) {
        int i = Build.VERSION.SDK_INT;
        if (android.support.v4.os.c.a()) {
            return new g(context, window, dVar);
        }
        if (i >= 23) {
            return new j(context, window, dVar);
        }
        if (i >= 14) {
            return new i(context, window, dVar);
        }
        if (i >= 11) {
            return new h(context, window, dVar);
        }
        return new AppCompatDelegateImplV9(context, window, dVar);
    }

    public static int k() {
        return f575a;
    }

    public static boolean l() {
        return b;
    }
}
