package android.support.v7.app;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.support.v4.widget.DrawerLayout;
import android.support.v7.app.b;
import android.support.v7.widget.Toolbar;
import android.util.Log;
import android.view.View;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* compiled from: ActionBarDrawerToggle.java */
/* loaded from: classes.dex */
public class a implements DrawerLayout.f {

    /* renamed from: a  reason: collision with root package name */
    boolean f565a;
    View.OnClickListener b;
    private final InterfaceC0036a c;
    private final DrawerLayout d;
    private android.support.v7.b.a.b e;
    private boolean f;
    private Drawable g;
    private final int h;
    private final int i;
    private boolean j;

    /* compiled from: ActionBarDrawerToggle.java */
    /* renamed from: android.support.v7.app.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0036a {
        Drawable a();

        void a(int i);

        void a(Drawable drawable, int i);

        Context b();

        boolean c();
    }

    /* compiled from: ActionBarDrawerToggle.java */
    /* loaded from: classes.dex */
    public interface b {
        InterfaceC0036a getDrawerToggleDelegate();
    }

    public a(Activity activity, DrawerLayout drawerLayout, Toolbar toolbar, int i, int i2) {
        this(activity, toolbar, drawerLayout, null, i, i2);
    }

    a(Activity activity, Toolbar toolbar, DrawerLayout drawerLayout, android.support.v7.b.a.b bVar, int i, int i2) {
        this.f = true;
        this.f565a = true;
        this.j = false;
        if (toolbar != null) {
            this.c = new g(toolbar);
            toolbar.setNavigationOnClickListener(new View.OnClickListener() { // from class: android.support.v7.app.a.1
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (a.this.f565a) {
                        a.this.b();
                    } else if (a.this.b != null) {
                        a.this.b.onClick(view);
                    }
                }
            });
        } else if (activity instanceof b) {
            this.c = ((b) activity).getDrawerToggleDelegate();
        } else if (Build.VERSION.SDK_INT >= 18) {
            this.c = new f(activity);
        } else if (Build.VERSION.SDK_INT >= 14) {
            this.c = new e(activity);
        } else if (Build.VERSION.SDK_INT >= 11) {
            this.c = new d(activity);
        } else {
            this.c = new c(activity);
        }
        this.d = drawerLayout;
        this.h = i;
        this.i = i2;
        if (bVar == null) {
            this.e = new android.support.v7.b.a.b(this.c.b());
        } else {
            this.e = bVar;
        }
        this.g = c();
    }

    public void a() {
        if (this.d.g(8388611)) {
            a(1.0f);
        } else {
            a(BitmapDescriptorFactory.HUE_RED);
        }
        if (this.f565a) {
            a(this.e, this.d.g(8388611) ? this.i : this.h);
        }
    }

    void b() {
        int a2 = this.d.a(8388611);
        if (this.d.h(8388611) && a2 != 2) {
            this.d.f(8388611);
        } else if (a2 != 1) {
            this.d.e(8388611);
        }
    }

    public void a(boolean z) {
        if (z != this.f565a) {
            if (z) {
                a(this.e, this.d.g(8388611) ? this.i : this.h);
            } else {
                a(this.g, 0);
            }
            this.f565a = z;
        }
    }

    @Override // android.support.v4.widget.DrawerLayout.f
    public void a(View view, float f2) {
        if (this.f) {
            a(Math.min(1.0f, Math.max((float) BitmapDescriptorFactory.HUE_RED, f2)));
        } else {
            a(BitmapDescriptorFactory.HUE_RED);
        }
    }

    @Override // android.support.v4.widget.DrawerLayout.f
    public void a(View view) {
        a(1.0f);
        if (this.f565a) {
            b(this.i);
        }
    }

    @Override // android.support.v4.widget.DrawerLayout.f
    public void b(View view) {
        a(BitmapDescriptorFactory.HUE_RED);
        if (this.f565a) {
            b(this.h);
        }
    }

    @Override // android.support.v4.widget.DrawerLayout.f
    public void a(int i) {
    }

    void a(Drawable drawable, int i) {
        if (!this.j && !this.c.c()) {
            Log.w("ActionBarDrawerToggle", "DrawerToggle may not show up because NavigationIcon is not visible. You may need to call actionbar.setDisplayHomeAsUpEnabled(true);");
            this.j = true;
        }
        this.c.a(drawable, i);
    }

    void b(int i) {
        this.c.a(i);
    }

    Drawable c() {
        return this.c.a();
    }

    private void a(float f2) {
        if (f2 == 1.0f) {
            this.e.b(true);
        } else if (f2 == BitmapDescriptorFactory.HUE_RED) {
            this.e.b(false);
        }
        this.e.c(f2);
    }

    /* compiled from: ActionBarDrawerToggle.java */
    @TargetApi(11)
    /* loaded from: classes.dex */
    private static class d implements InterfaceC0036a {

        /* renamed from: a  reason: collision with root package name */
        final Activity f568a;
        b.a b;

        d(Activity activity) {
            this.f568a = activity;
        }

        @Override // android.support.v7.app.a.InterfaceC0036a
        public Drawable a() {
            return android.support.v7.app.b.a(this.f568a);
        }

        @Override // android.support.v7.app.a.InterfaceC0036a
        public Context b() {
            return this.f568a;
        }

        @Override // android.support.v7.app.a.InterfaceC0036a
        public boolean c() {
            android.app.ActionBar actionBar = this.f568a.getActionBar();
            return (actionBar == null || (actionBar.getDisplayOptions() & 4) == 0) ? false : true;
        }

        @Override // android.support.v7.app.a.InterfaceC0036a
        public void a(Drawable drawable, int i) {
            android.app.ActionBar actionBar = this.f568a.getActionBar();
            if (actionBar != null) {
                actionBar.setDisplayShowHomeEnabled(true);
                this.b = android.support.v7.app.b.a(this.b, this.f568a, drawable, i);
                actionBar.setDisplayShowHomeEnabled(false);
            }
        }

        @Override // android.support.v7.app.a.InterfaceC0036a
        public void a(int i) {
            this.b = android.support.v7.app.b.a(this.b, this.f568a, i);
        }
    }

    /* compiled from: ActionBarDrawerToggle.java */
    @TargetApi(14)
    /* loaded from: classes.dex */
    private static class e extends d {
        e(Activity activity) {
            super(activity);
        }

        @Override // android.support.v7.app.a.d, android.support.v7.app.a.InterfaceC0036a
        public Context b() {
            android.app.ActionBar actionBar = this.f568a.getActionBar();
            if (actionBar != null) {
                return actionBar.getThemedContext();
            }
            return this.f568a;
        }
    }

    /* compiled from: ActionBarDrawerToggle.java */
    @TargetApi(18)
    /* loaded from: classes.dex */
    private static class f implements InterfaceC0036a {

        /* renamed from: a  reason: collision with root package name */
        final Activity f569a;

        f(Activity activity) {
            this.f569a = activity;
        }

        @Override // android.support.v7.app.a.InterfaceC0036a
        public Drawable a() {
            TypedArray obtainStyledAttributes = b().obtainStyledAttributes(null, new int[]{16843531}, 16843470, 0);
            Drawable drawable = obtainStyledAttributes.getDrawable(0);
            obtainStyledAttributes.recycle();
            return drawable;
        }

        @Override // android.support.v7.app.a.InterfaceC0036a
        public Context b() {
            android.app.ActionBar actionBar = this.f569a.getActionBar();
            if (actionBar != null) {
                return actionBar.getThemedContext();
            }
            return this.f569a;
        }

        @Override // android.support.v7.app.a.InterfaceC0036a
        public boolean c() {
            android.app.ActionBar actionBar = this.f569a.getActionBar();
            return (actionBar == null || (actionBar.getDisplayOptions() & 4) == 0) ? false : true;
        }

        @Override // android.support.v7.app.a.InterfaceC0036a
        public void a(Drawable drawable, int i) {
            android.app.ActionBar actionBar = this.f569a.getActionBar();
            if (actionBar != null) {
                actionBar.setHomeAsUpIndicator(drawable);
                actionBar.setHomeActionContentDescription(i);
            }
        }

        @Override // android.support.v7.app.a.InterfaceC0036a
        public void a(int i) {
            android.app.ActionBar actionBar = this.f569a.getActionBar();
            if (actionBar != null) {
                actionBar.setHomeActionContentDescription(i);
            }
        }
    }

    /* compiled from: ActionBarDrawerToggle.java */
    /* loaded from: classes.dex */
    static class g implements InterfaceC0036a {

        /* renamed from: a  reason: collision with root package name */
        final Toolbar f570a;
        final Drawable b;
        final CharSequence c;

        g(Toolbar toolbar) {
            this.f570a = toolbar;
            this.b = toolbar.getNavigationIcon();
            this.c = toolbar.getNavigationContentDescription();
        }

        @Override // android.support.v7.app.a.InterfaceC0036a
        public void a(Drawable drawable, int i) {
            this.f570a.setNavigationIcon(drawable);
            a(i);
        }

        @Override // android.support.v7.app.a.InterfaceC0036a
        public void a(int i) {
            if (i == 0) {
                this.f570a.setNavigationContentDescription(this.c);
            } else {
                this.f570a.setNavigationContentDescription(i);
            }
        }

        @Override // android.support.v7.app.a.InterfaceC0036a
        public Drawable a() {
            return this.b;
        }

        @Override // android.support.v7.app.a.InterfaceC0036a
        public Context b() {
            return this.f570a.getContext();
        }

        @Override // android.support.v7.app.a.InterfaceC0036a
        public boolean c() {
            return true;
        }
    }

    /* compiled from: ActionBarDrawerToggle.java */
    /* loaded from: classes.dex */
    static class c implements InterfaceC0036a {

        /* renamed from: a  reason: collision with root package name */
        final Activity f567a;

        c(Activity activity) {
            this.f567a = activity;
        }

        @Override // android.support.v7.app.a.InterfaceC0036a
        public void a(Drawable drawable, int i) {
        }

        @Override // android.support.v7.app.a.InterfaceC0036a
        public void a(int i) {
        }

        @Override // android.support.v7.app.a.InterfaceC0036a
        public Drawable a() {
            return null;
        }

        @Override // android.support.v7.app.a.InterfaceC0036a
        public Context b() {
            return this.f567a;
        }

        @Override // android.support.v7.app.a.InterfaceC0036a
        public boolean c() {
            return true;
        }
    }
}
