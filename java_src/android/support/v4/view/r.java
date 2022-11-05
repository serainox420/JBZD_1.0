package android.support.v4.view;

import android.annotation.TargetApi;
import android.view.MenuItem;
import android.view.View;
/* compiled from: MenuItemCompatHoneycomb.java */
@TargetApi(11)
/* loaded from: classes.dex */
class r {
    public static void a(MenuItem menuItem, int i) {
        menuItem.setShowAsAction(i);
    }

    public static MenuItem a(MenuItem menuItem, View view) {
        return menuItem.setActionView(view);
    }

    public static MenuItem b(MenuItem menuItem, int i) {
        return menuItem.setActionView(i);
    }

    public static View a(MenuItem menuItem) {
        return menuItem.getActionView();
    }
}
