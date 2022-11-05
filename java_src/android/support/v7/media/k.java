package android.support.v7.media;

import android.annotation.TargetApi;
import android.media.MediaRouter;
/* compiled from: MediaRouterJellybeanMr2.java */
@TargetApi(18)
/* loaded from: classes.dex */
final class k {
    public static Object a(Object obj) {
        return ((MediaRouter) obj).getDefaultRoute();
    }

    public static void a(Object obj, int i, Object obj2, int i2) {
        ((MediaRouter) obj).addCallback(i, (MediaRouter.Callback) obj2, i2);
    }

    /* compiled from: MediaRouterJellybeanMr2.java */
    /* loaded from: classes.dex */
    public static final class a {
        public static CharSequence a(Object obj) {
            return ((MediaRouter.RouteInfo) obj).getDescription();
        }

        public static boolean b(Object obj) {
            return ((MediaRouter.RouteInfo) obj).isConnecting();
        }
    }

    /* compiled from: MediaRouterJellybeanMr2.java */
    /* loaded from: classes.dex */
    public static final class b {
        public static void a(Object obj, CharSequence charSequence) {
            ((MediaRouter.UserRouteInfo) obj).setDescription(charSequence);
        }
    }
}
