package android.support.v4.view;

import android.content.Context;
import android.support.annotation.RestrictTo;
import android.util.Log;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
/* compiled from: ActionProvider.java */
/* loaded from: classes.dex */
public abstract class d {

    /* renamed from: a  reason: collision with root package name */
    private final Context f458a;
    private a b;
    private b c;

    /* compiled from: ActionProvider.java */
    @RestrictTo
    /* loaded from: classes.dex */
    public interface a {
        void b(boolean z);
    }

    /* compiled from: ActionProvider.java */
    /* loaded from: classes.dex */
    public interface b {
        void a(boolean z);
    }

    public abstract View b();

    public d(Context context) {
        this.f458a = context;
    }

    public Context a() {
        return this.f458a;
    }

    public View a(MenuItem menuItem) {
        return b();
    }

    public boolean c() {
        return false;
    }

    public boolean d() {
        return true;
    }

    public void e() {
        if (this.c != null && c()) {
            this.c.a(d());
        }
    }

    public boolean f() {
        return false;
    }

    public boolean g() {
        return false;
    }

    public void a(SubMenu subMenu) {
    }

    @RestrictTo
    public void a(boolean z) {
        if (this.b != null) {
            this.b.b(z);
        }
    }

    @RestrictTo
    public void a(a aVar) {
        this.b = aVar;
    }

    public void a(b bVar) {
        if (this.c != null && bVar != null) {
            Log.w("ActionProvider(support)", "setVisibilityListener: Setting a new ActionProvider.VisibilityListener when one is already set. Are you reusing this " + getClass().getSimpleName() + " instance while it is still in use somewhere else?");
        }
        this.c = bVar;
    }

    @RestrictTo
    public void h() {
        this.c = null;
        this.b = null;
    }
}
