package com.google.android.gms.cast.framework;

import android.content.Context;
import android.support.v4.view.q;
import android.support.v7.app.MediaRouteButton;
import android.support.v7.app.m;
import android.view.Menu;
import android.view.MenuItem;
import com.google.android.gms.common.internal.zzac;
import java.util.Locale;
/* loaded from: classes2.dex */
public final class CastButtonFactory {
    private CastButtonFactory() {
    }

    public static MenuItem setUpMediaRouteButton(Context context, Menu menu, int i) {
        zzac.zzdj("Must be called from the main thread.");
        zzac.zzw(menu);
        CastContext sharedInstance = CastContext.getSharedInstance(context);
        MenuItem findItem = menu.findItem(i);
        if (findItem == null) {
            throw new IllegalArgumentException(String.format(Locale.ROOT, "menu doesn't contain a menu item whose ID is %d.", Integer.valueOf(i)));
        }
        m mVar = (m) q.b(findItem);
        if (mVar == null) {
            throw new IllegalArgumentException(String.format(Locale.ROOT, "menu item with ID %d doesn't have a MediaRouteActionProvider.", Integer.valueOf(i)));
        }
        mVar.a(sharedInstance.getMergedSelector());
        return findItem;
    }

    public static void setUpMediaRouteButton(Context context, MediaRouteButton mediaRouteButton) {
        zzac.zzdj("Must be called from the main thread.");
        mediaRouteButton.setRouteSelector(CastContext.getSharedInstance(context).getMergedSelector());
    }
}
