package android.support.v7.view;

import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
/* compiled from: ActionMode.java */
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: a  reason: collision with root package name */
    private Object f694a;
    private boolean b;

    /* compiled from: ActionMode.java */
    /* loaded from: classes.dex */
    public interface a {
        void a(b bVar);

        boolean a(b bVar, Menu menu);

        boolean a(b bVar, MenuItem menuItem);

        boolean b(b bVar, Menu menu);
    }

    public abstract MenuInflater a();

    public abstract void a(int i);

    public abstract void a(View view);

    public abstract void a(CharSequence charSequence);

    public abstract Menu b();

    public abstract void b(int i);

    public abstract void b(CharSequence charSequence);

    public abstract void c();

    public abstract void d();

    public abstract CharSequence f();

    public abstract CharSequence g();

    public abstract View i();

    public void a(Object obj) {
        this.f694a = obj;
    }

    public Object j() {
        return this.f694a;
    }

    public void a(boolean z) {
        this.b = z;
    }

    public boolean k() {
        return this.b;
    }

    public boolean h() {
        return false;
    }
}
