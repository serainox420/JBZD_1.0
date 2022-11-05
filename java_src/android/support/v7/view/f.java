package android.support.v7.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.support.annotation.RestrictTo;
import android.support.v4.f.k;
import android.support.v7.view.b;
import android.support.v7.view.menu.q;
import android.view.ActionMode;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import java.util.ArrayList;
/* compiled from: SupportActionModeWrapper.java */
@TargetApi(11)
@RestrictTo
/* loaded from: classes.dex */
public class f extends ActionMode {

    /* renamed from: a  reason: collision with root package name */
    final Context f697a;
    final b b;

    public f(Context context, b bVar) {
        this.f697a = context;
        this.b = bVar;
    }

    @Override // android.view.ActionMode
    public Object getTag() {
        return this.b.j();
    }

    @Override // android.view.ActionMode
    public void setTag(Object obj) {
        this.b.a(obj);
    }

    @Override // android.view.ActionMode
    public void setTitle(CharSequence charSequence) {
        this.b.b(charSequence);
    }

    @Override // android.view.ActionMode
    public void setSubtitle(CharSequence charSequence) {
        this.b.a(charSequence);
    }

    @Override // android.view.ActionMode
    public void invalidate() {
        this.b.d();
    }

    @Override // android.view.ActionMode
    public void finish() {
        this.b.c();
    }

    @Override // android.view.ActionMode
    public Menu getMenu() {
        return q.a(this.f697a, (android.support.v4.d.a.a) this.b.b());
    }

    @Override // android.view.ActionMode
    public CharSequence getTitle() {
        return this.b.f();
    }

    @Override // android.view.ActionMode
    public void setTitle(int i) {
        this.b.a(i);
    }

    @Override // android.view.ActionMode
    public CharSequence getSubtitle() {
        return this.b.g();
    }

    @Override // android.view.ActionMode
    public void setSubtitle(int i) {
        this.b.b(i);
    }

    @Override // android.view.ActionMode
    public View getCustomView() {
        return this.b.i();
    }

    @Override // android.view.ActionMode
    public void setCustomView(View view) {
        this.b.a(view);
    }

    @Override // android.view.ActionMode
    public MenuInflater getMenuInflater() {
        return this.b.a();
    }

    @Override // android.view.ActionMode
    public boolean getTitleOptionalHint() {
        return this.b.k();
    }

    @Override // android.view.ActionMode
    public void setTitleOptionalHint(boolean z) {
        this.b.a(z);
    }

    @Override // android.view.ActionMode
    public boolean isTitleOptional() {
        return this.b.h();
    }

    /* compiled from: SupportActionModeWrapper.java */
    @RestrictTo
    /* loaded from: classes.dex */
    public static class a implements b.a {

        /* renamed from: a  reason: collision with root package name */
        final ActionMode.Callback f698a;
        final Context b;
        final ArrayList<f> c = new ArrayList<>();
        final k<Menu, Menu> d = new k<>();

        public a(Context context, ActionMode.Callback callback) {
            this.b = context;
            this.f698a = callback;
        }

        @Override // android.support.v7.view.b.a
        public boolean a(b bVar, Menu menu) {
            return this.f698a.onCreateActionMode(b(bVar), a(menu));
        }

        @Override // android.support.v7.view.b.a
        public boolean b(b bVar, Menu menu) {
            return this.f698a.onPrepareActionMode(b(bVar), a(menu));
        }

        @Override // android.support.v7.view.b.a
        public boolean a(b bVar, MenuItem menuItem) {
            return this.f698a.onActionItemClicked(b(bVar), q.a(this.b, (android.support.v4.d.a.b) menuItem));
        }

        @Override // android.support.v7.view.b.a
        public void a(b bVar) {
            this.f698a.onDestroyActionMode(b(bVar));
        }

        private Menu a(Menu menu) {
            Menu menu2 = this.d.get(menu);
            if (menu2 == null) {
                Menu a2 = q.a(this.b, (android.support.v4.d.a.a) menu);
                this.d.put(menu, a2);
                return a2;
            }
            return menu2;
        }

        public ActionMode b(b bVar) {
            int size = this.c.size();
            for (int i = 0; i < size; i++) {
                f fVar = this.c.get(i);
                if (fVar != null && fVar.b == bVar) {
                    return fVar;
                }
            }
            f fVar2 = new f(this.b, bVar);
            this.c.add(fVar2);
            return fVar2;
        }
    }
}
