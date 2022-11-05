package android.support.v7.app;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v4.view.ai;
import android.support.v7.app.ActionBar;
import android.support.v7.appcompat.R;
import android.support.v7.view.menu.h;
import android.support.v7.view.menu.o;
import android.support.v7.widget.Toolbar;
import android.support.v7.widget.aw;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ToolbarActionBar.java */
/* loaded from: classes.dex */
public class v extends ActionBar {

    /* renamed from: a  reason: collision with root package name */
    android.support.v7.widget.u f614a;
    boolean b;
    Window.Callback c;
    private boolean d;
    private boolean e;
    private android.support.v7.view.menu.f g;
    private ArrayList<ActionBar.a> f = new ArrayList<>();
    private final Runnable h = new Runnable() { // from class: android.support.v7.app.v.1
        @Override // java.lang.Runnable
        public void run() {
            v.this.j();
        }
    };
    private final Toolbar.b i = new Toolbar.b() { // from class: android.support.v7.app.v.2
        @Override // android.support.v7.widget.Toolbar.b
        public boolean a(MenuItem menuItem) {
            return v.this.c.onMenuItemSelected(0, menuItem);
        }
    };

    public v(Toolbar toolbar, CharSequence charSequence, Window.Callback callback) {
        this.f614a = new aw(toolbar, false);
        this.c = new d(callback);
        this.f614a.a(this.c);
        toolbar.setOnMenuItemClickListener(this.i);
        this.f614a.a(charSequence);
    }

    public Window.Callback i() {
        return this.c;
    }

    @Override // android.support.v7.app.ActionBar
    public void d(boolean z) {
    }

    @Override // android.support.v7.app.ActionBar
    public void a(float f) {
        ai.h(this.f614a.a(), f);
    }

    @Override // android.support.v7.app.ActionBar
    public Context c() {
        return this.f614a.b();
    }

    @Override // android.support.v7.app.ActionBar
    public void a(Drawable drawable) {
        this.f614a.b(drawable);
    }

    @Override // android.support.v7.app.ActionBar
    public void a(int i) {
        this.f614a.d(i);
    }

    @Override // android.support.v7.app.ActionBar
    public void f(boolean z) {
    }

    @Override // android.support.v7.app.ActionBar
    public void b(int i) {
        this.f614a.e(i);
    }

    @Override // android.support.v7.app.ActionBar
    public void g(boolean z) {
    }

    @Override // android.support.v7.app.ActionBar
    public void a(Configuration configuration) {
        super.a(configuration);
    }

    @Override // android.support.v7.app.ActionBar
    public void a(CharSequence charSequence) {
        this.f614a.b(charSequence);
    }

    @Override // android.support.v7.app.ActionBar
    public void b(CharSequence charSequence) {
        this.f614a.a(charSequence);
    }

    @Override // android.support.v7.app.ActionBar
    public boolean g() {
        ViewGroup a2 = this.f614a.a();
        if (a2 == null || a2.hasFocus()) {
            return false;
        }
        a2.requestFocus();
        return true;
    }

    public void a(int i, int i2) {
        this.f614a.c((this.f614a.o() & (i2 ^ (-1))) | (i & i2));
    }

    @Override // android.support.v7.app.ActionBar
    public void a(boolean z) {
        a(z ? 2 : 0, 2);
    }

    @Override // android.support.v7.app.ActionBar
    public void b(boolean z) {
        a(z ? 4 : 0, 4);
    }

    @Override // android.support.v7.app.ActionBar
    public void c(boolean z) {
        a(z ? 8 : 0, 8);
    }

    @Override // android.support.v7.app.ActionBar
    public int a() {
        return this.f614a.o();
    }

    @Override // android.support.v7.app.ActionBar
    public boolean b() {
        return this.f614a.q() == 0;
    }

    @Override // android.support.v7.app.ActionBar
    public boolean e() {
        this.f614a.a().removeCallbacks(this.h);
        ai.a(this.f614a.a(), this.h);
        return true;
    }

    @Override // android.support.v7.app.ActionBar
    public boolean f() {
        if (this.f614a.c()) {
            this.f614a.d();
            return true;
        }
        return false;
    }

    void j() {
        Menu k = k();
        android.support.v7.view.menu.h hVar = k instanceof android.support.v7.view.menu.h ? (android.support.v7.view.menu.h) k : null;
        if (hVar != null) {
            hVar.g();
        }
        try {
            k.clear();
            if (!this.c.onCreatePanelMenu(0, k) || !this.c.onPreparePanel(0, null, k)) {
                k.clear();
            }
        } finally {
            if (hVar != null) {
                hVar.h();
            }
        }
    }

    @Override // android.support.v7.app.ActionBar
    public boolean a(int i, KeyEvent keyEvent) {
        Menu k = k();
        if (k != null) {
            k.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
            k.performShortcut(i, keyEvent, 0);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // android.support.v7.app.ActionBar
    public void h() {
        this.f614a.a().removeCallbacks(this.h);
    }

    @Override // android.support.v7.app.ActionBar
    public void h(boolean z) {
        if (z != this.e) {
            this.e = z;
            int size = this.f.size();
            for (int i = 0; i < size; i++) {
                this.f.get(i).a(z);
            }
        }
    }

    View a(Menu menu) {
        b(menu);
        if (menu == null || this.g == null || this.g.d().getCount() <= 0) {
            return null;
        }
        return (View) this.g.a(this.f614a.a());
    }

    private void b(Menu menu) {
        if (this.g == null && (menu instanceof android.support.v7.view.menu.h)) {
            android.support.v7.view.menu.h hVar = (android.support.v7.view.menu.h) menu;
            Context b2 = this.f614a.b();
            TypedValue typedValue = new TypedValue();
            Resources.Theme newTheme = b2.getResources().newTheme();
            newTheme.setTo(b2.getTheme());
            newTheme.resolveAttribute(R.attr.actionBarPopupTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                newTheme.applyStyle(typedValue.resourceId, true);
            }
            newTheme.resolveAttribute(R.attr.panelMenuListTheme, typedValue, true);
            if (typedValue.resourceId != 0) {
                newTheme.applyStyle(typedValue.resourceId, true);
            } else {
                newTheme.applyStyle(R.style.Theme_AppCompat_CompactMenu, true);
            }
            ContextThemeWrapper contextThemeWrapper = new ContextThemeWrapper(b2, 0);
            contextThemeWrapper.getTheme().setTo(newTheme);
            this.g = new android.support.v7.view.menu.f(contextThemeWrapper, R.layout.abc_list_menu_item_layout);
            this.g.a(new c());
            hVar.a(this.g);
        }
    }

    /* compiled from: ToolbarActionBar.java */
    /* loaded from: classes.dex */
    private class d extends android.support.v7.view.i {
        public d(Window.Callback callback) {
            super(callback);
        }

        @Override // android.support.v7.view.i, android.view.Window.Callback
        public boolean onPreparePanel(int i, View view, Menu menu) {
            boolean onPreparePanel = super.onPreparePanel(i, view, menu);
            if (onPreparePanel && !v.this.b) {
                v.this.f614a.m();
                v.this.b = true;
            }
            return onPreparePanel;
        }

        @Override // android.support.v7.view.i, android.view.Window.Callback
        public View onCreatePanelView(int i) {
            switch (i) {
                case 0:
                    Menu r = v.this.f614a.r();
                    if (onPreparePanel(i, null, r) && onMenuOpened(i, r)) {
                        return v.this.a(r);
                    }
                    break;
            }
            return super.onCreatePanelView(i);
        }
    }

    private Menu k() {
        if (!this.d) {
            this.f614a.a(new a(), new b());
            this.d = true;
        }
        return this.f614a.r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ToolbarActionBar.java */
    /* loaded from: classes.dex */
    public final class a implements o.a {
        private boolean b;

        a() {
        }

        @Override // android.support.v7.view.menu.o.a
        public boolean a(android.support.v7.view.menu.h hVar) {
            if (v.this.c != null) {
                v.this.c.onMenuOpened(108, hVar);
                return true;
            }
            return false;
        }

        @Override // android.support.v7.view.menu.o.a
        public void a(android.support.v7.view.menu.h hVar, boolean z) {
            if (!this.b) {
                this.b = true;
                v.this.f614a.n();
                if (v.this.c != null) {
                    v.this.c.onPanelClosed(108, hVar);
                }
                this.b = false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ToolbarActionBar.java */
    /* loaded from: classes.dex */
    public final class c implements o.a {
        c() {
        }

        @Override // android.support.v7.view.menu.o.a
        public void a(android.support.v7.view.menu.h hVar, boolean z) {
            if (v.this.c != null) {
                v.this.c.onPanelClosed(0, hVar);
            }
        }

        @Override // android.support.v7.view.menu.o.a
        public boolean a(android.support.v7.view.menu.h hVar) {
            if (hVar == null && v.this.c != null) {
                v.this.c.onMenuOpened(0, hVar);
                return true;
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ToolbarActionBar.java */
    /* loaded from: classes.dex */
    public final class b implements h.a {
        b() {
        }

        @Override // android.support.v7.view.menu.h.a
        public boolean a(android.support.v7.view.menu.h hVar, MenuItem menuItem) {
            return false;
        }

        @Override // android.support.v7.view.menu.h.a
        public void a(android.support.v7.view.menu.h hVar) {
            if (v.this.c != null) {
                if (v.this.f614a.i()) {
                    v.this.c.onPanelClosed(108, hVar);
                } else if (v.this.c.onPreparePanel(0, null, hVar)) {
                    v.this.c.onMenuOpened(108, hVar);
                }
            }
        }
    }
}
