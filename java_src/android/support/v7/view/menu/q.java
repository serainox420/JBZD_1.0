package android.support.v7.view.menu;

import android.content.Context;
import android.os.Build;
import android.support.annotation.RestrictTo;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
/* compiled from: MenuWrapperFactory.java */
@RestrictTo
/* loaded from: classes.dex */
public final class q {
    public static Menu a(Context context, android.support.v4.d.a.a aVar) {
        if (Build.VERSION.SDK_INT >= 14) {
            return new r(context, aVar);
        }
        throw new UnsupportedOperationException();
    }

    public static MenuItem a(Context context, android.support.v4.d.a.b bVar) {
        if (Build.VERSION.SDK_INT >= 16) {
            return new l(context, bVar);
        }
        if (Build.VERSION.SDK_INT >= 14) {
            return new k(context, bVar);
        }
        throw new UnsupportedOperationException();
    }

    public static SubMenu a(Context context, android.support.v4.d.a.c cVar) {
        if (Build.VERSION.SDK_INT >= 14) {
            return new v(context, cVar);
        }
        throw new UnsupportedOperationException();
    }
}
