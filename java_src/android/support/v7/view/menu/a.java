package android.support.v7.view.menu;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.support.annotation.RestrictTo;
import android.support.v4.view.q;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
/* compiled from: ActionMenuItem.java */
@RestrictTo
/* loaded from: classes.dex */
public class a implements android.support.v4.d.a.b {

    /* renamed from: a  reason: collision with root package name */
    private final int f708a;
    private final int b;
    private final int c;
    private final int d;
    private CharSequence e;
    private CharSequence f;
    private Intent g;
    private char h;
    private char i;
    private Drawable j;
    private Context l;
    private MenuItem.OnMenuItemClickListener m;
    private int k = 0;
    private int n = 16;

    public a(Context context, int i, int i2, int i3, int i4, CharSequence charSequence) {
        this.l = context;
        this.f708a = i2;
        this.b = i;
        this.c = i3;
        this.d = i4;
        this.e = charSequence;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.i;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.j;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.g;
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f708a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.h;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.d;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.e;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        return this.f != null ? this.f : this.e;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.n & 1) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.n & 2) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.n & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return (this.n & 8) == 0;
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c) {
        this.i = c;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z) {
        this.n = (z ? 1 : 0) | (this.n & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z) {
        this.n = (z ? 2 : 0) | (this.n & (-3));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z) {
        this.n = (z ? 16 : 0) | (this.n & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.j = drawable;
        this.k = 0;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i) {
        this.k = i;
        this.j = android.support.v4.content.b.a(this.l, i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.g = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c) {
        this.h = c;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.m = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c, char c2) {
        this.h = c;
        this.i = c2;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.e = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i) {
        this.e = this.l.getResources().getString(i);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z) {
        this.n = (z ? 0 : 8) | (this.n & 8);
        return this;
    }

    @Override // android.support.v4.d.a.b, android.view.MenuItem
    public void setShowAsAction(int i) {
    }

    @Override // android.support.v4.d.a.b, android.view.MenuItem
    /* renamed from: a */
    public android.support.v4.d.a.b setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // android.support.v4.d.a.b, android.view.MenuItem
    public View getActionView() {
        return null;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // android.support.v4.d.a.b, android.view.MenuItem
    /* renamed from: a */
    public android.support.v4.d.a.b setActionView(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // android.support.v4.d.a.b
    public android.support.v4.view.d a() {
        return null;
    }

    @Override // android.support.v4.d.a.b
    public android.support.v4.d.a.b a(android.support.v4.view.d dVar) {
        throw new UnsupportedOperationException();
    }

    @Override // android.support.v4.d.a.b, android.view.MenuItem
    /* renamed from: b */
    public android.support.v4.d.a.b setShowAsActionFlags(int i) {
        setShowAsAction(i);
        return this;
    }

    @Override // android.support.v4.d.a.b, android.view.MenuItem
    public boolean expandActionView() {
        return false;
    }

    @Override // android.support.v4.d.a.b, android.view.MenuItem
    public boolean collapseActionView() {
        return false;
    }

    @Override // android.support.v4.d.a.b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.support.v4.d.a.b
    public android.support.v4.d.a.b a(q.e eVar) {
        return this;
    }
}
