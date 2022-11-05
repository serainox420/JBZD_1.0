package android.support.v4.d.a;

import android.support.annotation.RestrictTo;
import android.support.v4.view.d;
import android.support.v4.view.q;
import android.view.MenuItem;
import android.view.View;
/* compiled from: SupportMenuItem.java */
@RestrictTo
/* loaded from: classes.dex */
public interface b extends MenuItem {
    b a(d dVar);

    b a(q.e eVar);

    d a();

    @Override // android.view.MenuItem
    boolean collapseActionView();

    @Override // android.view.MenuItem
    boolean expandActionView();

    @Override // android.view.MenuItem
    View getActionView();

    @Override // android.view.MenuItem
    boolean isActionViewExpanded();

    @Override // android.view.MenuItem
    MenuItem setActionView(int i);

    @Override // android.view.MenuItem
    MenuItem setActionView(View view);

    @Override // android.view.MenuItem
    void setShowAsAction(int i);

    @Override // android.view.MenuItem
    MenuItem setShowAsActionFlags(int i);
}
