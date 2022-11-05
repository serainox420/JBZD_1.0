package android.support.v7.view.menu;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.q;
import android.util.Log;
import android.view.ActionProvider;
import android.view.CollapsibleActionView;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.widget.FrameLayout;
import java.lang.reflect.Method;
/* compiled from: MenuItemWrapperICS.java */
@TargetApi(14)
@RestrictTo
/* loaded from: classes.dex */
public class k extends android.support.v7.view.menu.c<android.support.v4.d.a.b> implements MenuItem {
    private Method c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(Context context, android.support.v4.d.a.b bVar) {
        super(context, bVar);
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return ((android.support.v4.d.a.b) this.b).getItemId();
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return ((android.support.v4.d.a.b) this.b).getGroupId();
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return ((android.support.v4.d.a.b) this.b).getOrder();
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        ((android.support.v4.d.a.b) this.b).setTitle(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        ((android.support.v4.d.a.b) this.b).setTitle(i);
        return this;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return ((android.support.v4.d.a.b) this.b).getTitle();
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        ((android.support.v4.d.a.b) this.b).setTitleCondensed(charSequence);
        return this;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        return ((android.support.v4.d.a.b) this.b).getTitleCondensed();
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        ((android.support.v4.d.a.b) this.b).setIcon(drawable);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        ((android.support.v4.d.a.b) this.b).setIcon(i);
        return this;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return ((android.support.v4.d.a.b) this.b).getIcon();
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        ((android.support.v4.d.a.b) this.b).setIntent(intent);
        return this;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return ((android.support.v4.d.a.b) this.b).getIntent();
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c2, char c3) {
        ((android.support.v4.d.a.b) this.b).setShortcut(c2, c3);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c2) {
        ((android.support.v4.d.a.b) this.b).setNumericShortcut(c2);
        return this;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return ((android.support.v4.d.a.b) this.b).getNumericShortcut();
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c2) {
        ((android.support.v4.d.a.b) this.b).setAlphabeticShortcut(c2);
        return this;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return ((android.support.v4.d.a.b) this.b).getAlphabeticShortcut();
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        ((android.support.v4.d.a.b) this.b).setCheckable(z);
        return this;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return ((android.support.v4.d.a.b) this.b).isCheckable();
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        ((android.support.v4.d.a.b) this.b).setChecked(z);
        return this;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return ((android.support.v4.d.a.b) this.b).isChecked();
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        return ((android.support.v4.d.a.b) this.b).setVisible(z);
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return ((android.support.v4.d.a.b) this.b).isVisible();
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        ((android.support.v4.d.a.b) this.b).setEnabled(z);
        return this;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return ((android.support.v4.d.a.b) this.b).isEnabled();
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return ((android.support.v4.d.a.b) this.b).hasSubMenu();
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return a(((android.support.v4.d.a.b) this.b).getSubMenu());
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        ((android.support.v4.d.a.b) this.b).setOnMenuItemClickListener(onMenuItemClickListener != null ? new d(onMenuItemClickListener) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return ((android.support.v4.d.a.b) this.b).getMenuInfo();
    }

    @Override // android.view.MenuItem
    public void setShowAsAction(int i) {
        ((android.support.v4.d.a.b) this.b).setShowAsAction(i);
    }

    @Override // android.view.MenuItem
    public MenuItem setShowAsActionFlags(int i) {
        ((android.support.v4.d.a.b) this.b).setShowAsActionFlags(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(View view) {
        if (view instanceof CollapsibleActionView) {
            view = new b(view);
        }
        ((android.support.v4.d.a.b) this.b).setActionView(view);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionView(int i) {
        ((android.support.v4.d.a.b) this.b).setActionView(i);
        View actionView = ((android.support.v4.d.a.b) this.b).getActionView();
        if (actionView instanceof CollapsibleActionView) {
            ((android.support.v4.d.a.b) this.b).setActionView(new b(actionView));
        }
        return this;
    }

    @Override // android.view.MenuItem
    public View getActionView() {
        View actionView = ((android.support.v4.d.a.b) this.b).getActionView();
        if (actionView instanceof b) {
            return ((b) actionView).c();
        }
        return actionView;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        ((android.support.v4.d.a.b) this.b).a(actionProvider != null ? a(actionProvider) : null);
        return this;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        android.support.v4.view.d a2 = ((android.support.v4.d.a.b) this.b).a();
        if (a2 instanceof a) {
            return ((a) a2).f723a;
        }
        return null;
    }

    @Override // android.view.MenuItem
    public boolean expandActionView() {
        return ((android.support.v4.d.a.b) this.b).expandActionView();
    }

    @Override // android.view.MenuItem
    public boolean collapseActionView() {
        return ((android.support.v4.d.a.b) this.b).collapseActionView();
    }

    @Override // android.view.MenuItem
    public boolean isActionViewExpanded() {
        return ((android.support.v4.d.a.b) this.b).isActionViewExpanded();
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        ((android.support.v4.d.a.b) this.b).a(onActionExpandListener != null ? new c(onActionExpandListener) : null);
        return this;
    }

    public void a(boolean z) {
        try {
            if (this.c == null) {
                this.c = ((android.support.v4.d.a.b) this.b).getClass().getDeclaredMethod("setExclusiveCheckable", Boolean.TYPE);
            }
            this.c.invoke(this.b, Boolean.valueOf(z));
        } catch (Exception e) {
            Log.w("MenuItemWrapper", "Error while calling setExclusiveCheckable", e);
        }
    }

    a a(ActionProvider actionProvider) {
        return new a(this.f710a, actionProvider);
    }

    /* compiled from: MenuItemWrapperICS.java */
    /* loaded from: classes.dex */
    private class d extends android.support.v7.view.menu.d<MenuItem.OnMenuItemClickListener> implements MenuItem.OnMenuItemClickListener {
        d(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
            super(onMenuItemClickListener);
        }

        @Override // android.view.MenuItem.OnMenuItemClickListener
        public boolean onMenuItemClick(MenuItem menuItem) {
            return ((MenuItem.OnMenuItemClickListener) this.b).onMenuItemClick(k.this.a(menuItem));
        }
    }

    /* compiled from: MenuItemWrapperICS.java */
    /* loaded from: classes.dex */
    private class c extends android.support.v7.view.menu.d<MenuItem.OnActionExpandListener> implements q.e {
        c(MenuItem.OnActionExpandListener onActionExpandListener) {
            super(onActionExpandListener);
        }

        @Override // android.support.v4.view.q.e
        public boolean a(MenuItem menuItem) {
            return ((MenuItem.OnActionExpandListener) this.b).onMenuItemActionExpand(k.this.a(menuItem));
        }

        @Override // android.support.v4.view.q.e
        public boolean b(MenuItem menuItem) {
            return ((MenuItem.OnActionExpandListener) this.b).onMenuItemActionCollapse(k.this.a(menuItem));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MenuItemWrapperICS.java */
    /* loaded from: classes.dex */
    public class a extends android.support.v4.view.d {

        /* renamed from: a  reason: collision with root package name */
        final ActionProvider f723a;

        public a(Context context, ActionProvider actionProvider) {
            super(context);
            this.f723a = actionProvider;
        }

        @Override // android.support.v4.view.d
        public View b() {
            return this.f723a.onCreateActionView();
        }

        @Override // android.support.v4.view.d
        public boolean f() {
            return this.f723a.onPerformDefaultAction();
        }

        @Override // android.support.v4.view.d
        public boolean g() {
            return this.f723a.hasSubMenu();
        }

        @Override // android.support.v4.view.d
        public void a(SubMenu subMenu) {
            this.f723a.onPrepareSubMenu(k.this.a(subMenu));
        }
    }

    /* compiled from: MenuItemWrapperICS.java */
    /* loaded from: classes.dex */
    static class b extends FrameLayout implements android.support.v7.view.c {

        /* renamed from: a  reason: collision with root package name */
        final CollapsibleActionView f724a;

        b(View view) {
            super(view.getContext());
            this.f724a = (CollapsibleActionView) view;
            addView(view);
        }

        @Override // android.support.v7.view.c
        public void a() {
            this.f724a.onActionViewExpanded();
        }

        @Override // android.support.v7.view.c
        public void b() {
            this.f724a.onActionViewCollapsed();
        }

        View c() {
            return (View) this.f724a;
        }
    }
}
