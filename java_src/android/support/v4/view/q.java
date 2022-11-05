package android.support.v4.view;

import android.os.Build;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;
/* compiled from: MenuItemCompat.java */
/* loaded from: classes.dex */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    static final d f469a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MenuItemCompat.java */
    /* loaded from: classes.dex */
    public interface d {
        MenuItem a(MenuItem menuItem, View view);

        View a(MenuItem menuItem);

        void a(MenuItem menuItem, int i);

        MenuItem b(MenuItem menuItem, int i);

        boolean b(MenuItem menuItem);

        boolean c(MenuItem menuItem);
    }

    /* compiled from: MenuItemCompat.java */
    /* loaded from: classes.dex */
    public interface e {
        boolean a(MenuItem menuItem);

        boolean b(MenuItem menuItem);
    }

    /* compiled from: MenuItemCompat.java */
    /* loaded from: classes.dex */
    static class a implements d {
        a() {
        }

        @Override // android.support.v4.view.q.d
        public void a(MenuItem menuItem, int i) {
        }

        @Override // android.support.v4.view.q.d
        public MenuItem a(MenuItem menuItem, View view) {
            return menuItem;
        }

        @Override // android.support.v4.view.q.d
        public MenuItem b(MenuItem menuItem, int i) {
            return menuItem;
        }

        @Override // android.support.v4.view.q.d
        public View a(MenuItem menuItem) {
            return null;
        }

        @Override // android.support.v4.view.q.d
        public boolean b(MenuItem menuItem) {
            return false;
        }

        @Override // android.support.v4.view.q.d
        public boolean c(MenuItem menuItem) {
            return false;
        }
    }

    /* compiled from: MenuItemCompat.java */
    /* loaded from: classes.dex */
    static class b implements d {
        b() {
        }

        @Override // android.support.v4.view.q.d
        public void a(MenuItem menuItem, int i) {
            r.a(menuItem, i);
        }

        @Override // android.support.v4.view.q.d
        public MenuItem a(MenuItem menuItem, View view) {
            return r.a(menuItem, view);
        }

        @Override // android.support.v4.view.q.d
        public MenuItem b(MenuItem menuItem, int i) {
            return r.b(menuItem, i);
        }

        @Override // android.support.v4.view.q.d
        public View a(MenuItem menuItem) {
            return r.a(menuItem);
        }

        @Override // android.support.v4.view.q.d
        public boolean b(MenuItem menuItem) {
            return false;
        }

        @Override // android.support.v4.view.q.d
        public boolean c(MenuItem menuItem) {
            return false;
        }
    }

    /* compiled from: MenuItemCompat.java */
    /* loaded from: classes.dex */
    static class c extends b {
        c() {
        }

        @Override // android.support.v4.view.q.b, android.support.v4.view.q.d
        public boolean b(MenuItem menuItem) {
            return s.a(menuItem);
        }

        @Override // android.support.v4.view.q.b, android.support.v4.view.q.d
        public boolean c(MenuItem menuItem) {
            return s.b(menuItem);
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 14) {
            f469a = new c();
        } else if (Build.VERSION.SDK_INT >= 11) {
            f469a = new b();
        } else {
            f469a = new a();
        }
    }

    public static void a(MenuItem menuItem, int i) {
        if (menuItem instanceof android.support.v4.d.a.b) {
            ((android.support.v4.d.a.b) menuItem).setShowAsAction(i);
        } else {
            f469a.a(menuItem, i);
        }
    }

    public static MenuItem a(MenuItem menuItem, View view) {
        return menuItem instanceof android.support.v4.d.a.b ? ((android.support.v4.d.a.b) menuItem).setActionView(view) : f469a.a(menuItem, view);
    }

    public static MenuItem b(MenuItem menuItem, int i) {
        return menuItem instanceof android.support.v4.d.a.b ? ((android.support.v4.d.a.b) menuItem).setActionView(i) : f469a.b(menuItem, i);
    }

    public static View a(MenuItem menuItem) {
        return menuItem instanceof android.support.v4.d.a.b ? ((android.support.v4.d.a.b) menuItem).getActionView() : f469a.a(menuItem);
    }

    public static MenuItem a(MenuItem menuItem, android.support.v4.view.d dVar) {
        if (menuItem instanceof android.support.v4.d.a.b) {
            return ((android.support.v4.d.a.b) menuItem).a(dVar);
        }
        Log.w("MenuItemCompat", "setActionProvider: item does not implement SupportMenuItem; ignoring");
        return menuItem;
    }

    public static android.support.v4.view.d b(MenuItem menuItem) {
        if (menuItem instanceof android.support.v4.d.a.b) {
            return ((android.support.v4.d.a.b) menuItem).a();
        }
        Log.w("MenuItemCompat", "getActionProvider: item does not implement SupportMenuItem; returning null");
        return null;
    }

    public static boolean c(MenuItem menuItem) {
        return menuItem instanceof android.support.v4.d.a.b ? ((android.support.v4.d.a.b) menuItem).expandActionView() : f469a.b(menuItem);
    }

    public static boolean d(MenuItem menuItem) {
        return menuItem instanceof android.support.v4.d.a.b ? ((android.support.v4.d.a.b) menuItem).isActionViewExpanded() : f469a.c(menuItem);
    }
}
