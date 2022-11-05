package android.support.v4.view;

import android.annotation.TargetApi;
import android.view.MenuItem;
/* compiled from: MenuItemCompatIcs.java */
@TargetApi(14)
/* loaded from: classes.dex */
class s {
    public static boolean a(MenuItem menuItem) {
        return menuItem.expandActionView();
    }

    public static boolean b(MenuItem menuItem) {
        return menuItem.isActionViewExpanded();
    }
}
