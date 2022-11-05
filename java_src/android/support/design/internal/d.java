package android.support.design.internal;

import android.content.Context;
import android.support.annotation.RestrictTo;
import android.support.v7.view.menu.h;
import android.support.v7.view.menu.j;
import android.view.SubMenu;
/* compiled from: NavigationMenu.java */
@RestrictTo
/* loaded from: classes.dex */
public class d extends h {
    public d(Context context) {
        super(context);
    }

    @Override // android.support.v7.view.menu.h, android.view.Menu
    public SubMenu addSubMenu(int i, int i2, int i3, CharSequence charSequence) {
        j jVar = (j) a(i, i2, i3, charSequence);
        f fVar = new f(e(), this, jVar);
        jVar.a(fVar);
        return fVar;
    }
}
