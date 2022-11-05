package android.support.design.internal;

import android.content.Context;
import android.support.annotation.RestrictTo;
import android.support.v7.view.menu.h;
import android.support.v7.view.menu.j;
import android.view.MenuItem;
import android.view.SubMenu;
/* compiled from: BottomNavigationMenu.java */
@RestrictTo
/* loaded from: classes.dex */
public final class c extends h {
    public c(Context context) {
        super(context);
    }

    @Override // android.support.v7.view.menu.h, android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        throw new UnsupportedOperationException("BottomNavigationView does not support submenus");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.support.v7.view.menu.h
    public MenuItem a(int i, int i2, int i3, CharSequence charSequence) {
        if (size() + 1 > 5) {
            throw new IllegalArgumentException("Maximum number of items supported by BottomNavigationView is 5. Limit can be checked with BottomNavigationView#getMaxItemCount()");
        }
        g();
        MenuItem a2 = super.a(i, i2, i3, charSequence);
        if (a2 instanceof j) {
            ((j) a2).a(true);
        }
        h();
        return a2;
    }
}
