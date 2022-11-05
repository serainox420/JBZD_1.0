package android.support.v7.media;

import android.annotation.TargetApi;
import android.content.Context;
import android.media.MediaRouter;
import android.media.RemoteControlClient;
import android.os.Build;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;
/* compiled from: MediaRouterJellybean.java */
@TargetApi(16)
/* loaded from: classes.dex */
final class i {

    /* compiled from: MediaRouterJellybean.java */
    /* loaded from: classes.dex */
    public interface a {
        void a(int i, Object obj);

        void a(Object obj);

        void a(Object obj, Object obj2);

        void a(Object obj, Object obj2, int i);

        void b(int i, Object obj);

        void b(Object obj);

        void c(Object obj);

        void d(Object obj);
    }

    /* compiled from: MediaRouterJellybean.java */
    /* loaded from: classes.dex */
    public interface g {
        void a(Object obj, int i);

        void b(Object obj, int i);
    }

    public static Object a(Context context) {
        return context.getSystemService("media_router");
    }

    public static List a(Object obj) {
        MediaRouter mediaRouter = (MediaRouter) obj;
        int routeCount = mediaRouter.getRouteCount();
        ArrayList arrayList = new ArrayList(routeCount);
        for (int i = 0; i < routeCount; i++) {
            arrayList.add(mediaRouter.getRouteAt(i));
        }
        return arrayList;
    }

    public static Object a(Object obj, int i) {
        return ((MediaRouter) obj).getSelectedRoute(i);
    }

    public static void a(Object obj, int i, Object obj2) {
        ((MediaRouter) obj).selectRoute(i, (MediaRouter.RouteInfo) obj2);
    }

    public static void b(Object obj, int i, Object obj2) {
        ((MediaRouter) obj).addCallback(i, (MediaRouter.Callback) obj2);
    }

    public static void a(Object obj, Object obj2) {
        ((MediaRouter) obj).removeCallback((MediaRouter.Callback) obj2);
    }

    public static Object a(Object obj, String str, boolean z) {
        return ((MediaRouter) obj).createRouteCategory(str, z);
    }

    public static Object b(Object obj, Object obj2) {
        return ((MediaRouter) obj).createUserRoute((MediaRouter.RouteCategory) obj2);
    }

    public static void c(Object obj, Object obj2) {
        ((MediaRouter) obj).addUserRoute((MediaRouter.UserRouteInfo) obj2);
    }

    public static void d(Object obj, Object obj2) {
        ((MediaRouter) obj).removeUserRoute((MediaRouter.UserRouteInfo) obj2);
    }

    public static Object a(a aVar) {
        return new b(aVar);
    }

    public static Object a(g gVar) {
        return new h(gVar);
    }

    /* compiled from: MediaRouterJellybean.java */
    /* loaded from: classes.dex */
    public static final class d {
        public static CharSequence a(Object obj, Context context) {
            return ((MediaRouter.RouteInfo) obj).getName(context);
        }

        public static int a(Object obj) {
            return ((MediaRouter.RouteInfo) obj).getSupportedTypes();
        }

        public static int b(Object obj) {
            return ((MediaRouter.RouteInfo) obj).getPlaybackType();
        }

        public static int c(Object obj) {
            return ((MediaRouter.RouteInfo) obj).getPlaybackStream();
        }

        public static int d(Object obj) {
            return ((MediaRouter.RouteInfo) obj).getVolume();
        }

        public static int e(Object obj) {
            return ((MediaRouter.RouteInfo) obj).getVolumeMax();
        }

        public static int f(Object obj) {
            return ((MediaRouter.RouteInfo) obj).getVolumeHandling();
        }

        public static Object g(Object obj) {
            return ((MediaRouter.RouteInfo) obj).getTag();
        }

        public static void a(Object obj, Object obj2) {
            ((MediaRouter.RouteInfo) obj).setTag(obj2);
        }

        public static void a(Object obj, int i) {
            ((MediaRouter.RouteInfo) obj).requestSetVolume(i);
        }

        public static void b(Object obj, int i) {
            ((MediaRouter.RouteInfo) obj).requestUpdateVolume(i);
        }
    }

    /* compiled from: MediaRouterJellybean.java */
    /* loaded from: classes.dex */
    public static final class f {
        public static void a(Object obj, CharSequence charSequence) {
            ((MediaRouter.UserRouteInfo) obj).setName(charSequence);
        }

        public static void a(Object obj, int i) {
            ((MediaRouter.UserRouteInfo) obj).setPlaybackType(i);
        }

        public static void b(Object obj, int i) {
            ((MediaRouter.UserRouteInfo) obj).setPlaybackStream(i);
        }

        public static void c(Object obj, int i) {
            ((MediaRouter.UserRouteInfo) obj).setVolume(i);
        }

        public static void d(Object obj, int i) {
            ((MediaRouter.UserRouteInfo) obj).setVolumeMax(i);
        }

        public static void e(Object obj, int i) {
            ((MediaRouter.UserRouteInfo) obj).setVolumeHandling(i);
        }

        public static void a(Object obj, Object obj2) {
            ((MediaRouter.UserRouteInfo) obj).setVolumeCallback((MediaRouter.VolumeCallback) obj2);
        }

        public static void b(Object obj, Object obj2) {
            ((MediaRouter.UserRouteInfo) obj).setRemoteControlClient((RemoteControlClient) obj2);
        }
    }

    /* compiled from: MediaRouterJellybean.java */
    /* loaded from: classes.dex */
    public static final class e {

        /* renamed from: a  reason: collision with root package name */
        private Method f669a;

        public e() {
            if (Build.VERSION.SDK_INT < 16 || Build.VERSION.SDK_INT > 17) {
                throw new UnsupportedOperationException();
            }
            try {
                this.f669a = MediaRouter.class.getMethod("selectRouteInt", Integer.TYPE, MediaRouter.RouteInfo.class);
            } catch (NoSuchMethodException e) {
            }
        }

        public void a(Object obj, int i, Object obj2) {
            MediaRouter mediaRouter = (MediaRouter) obj;
            MediaRouter.RouteInfo routeInfo = (MediaRouter.RouteInfo) obj2;
            if ((routeInfo.getSupportedTypes() & 8388608) == 0) {
                if (this.f669a != null) {
                    try {
                        this.f669a.invoke(mediaRouter, Integer.valueOf(i), routeInfo);
                        return;
                    } catch (IllegalAccessException e) {
                        Log.w("MediaRouterJellybean", "Cannot programmatically select non-user route.  Media routing may not work.", e);
                    } catch (InvocationTargetException e2) {
                        Log.w("MediaRouterJellybean", "Cannot programmatically select non-user route.  Media routing may not work.", e2);
                    }
                } else {
                    Log.w("MediaRouterJellybean", "Cannot programmatically select non-user route because the platform is missing the selectRouteInt() method.  Media routing may not work.");
                }
            }
            mediaRouter.selectRoute(i, routeInfo);
        }
    }

    /* compiled from: MediaRouterJellybean.java */
    /* loaded from: classes.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private Method f668a;

        public c() {
            if (Build.VERSION.SDK_INT < 16 || Build.VERSION.SDK_INT > 17) {
                throw new UnsupportedOperationException();
            }
            try {
                this.f668a = MediaRouter.class.getMethod("getSystemAudioRoute", new Class[0]);
            } catch (NoSuchMethodException e) {
            }
        }

        public Object a(Object obj) {
            MediaRouter mediaRouter = (MediaRouter) obj;
            if (this.f668a != null) {
                try {
                    return this.f668a.invoke(mediaRouter, new Object[0]);
                } catch (IllegalAccessException e) {
                } catch (InvocationTargetException e2) {
                }
            }
            return mediaRouter.getRouteAt(0);
        }
    }

    /* compiled from: MediaRouterJellybean.java */
    /* loaded from: classes.dex */
    static class b<T extends a> extends MediaRouter.Callback {

        /* renamed from: a  reason: collision with root package name */
        protected final T f667a;

        public b(T t) {
            this.f667a = t;
        }

        @Override // android.media.MediaRouter.Callback
        public void onRouteSelected(MediaRouter mediaRouter, int i, MediaRouter.RouteInfo routeInfo) {
            this.f667a.a(i, routeInfo);
        }

        @Override // android.media.MediaRouter.Callback
        public void onRouteUnselected(MediaRouter mediaRouter, int i, MediaRouter.RouteInfo routeInfo) {
            this.f667a.b(i, routeInfo);
        }

        @Override // android.media.MediaRouter.Callback
        public void onRouteAdded(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            this.f667a.a(routeInfo);
        }

        @Override // android.media.MediaRouter.Callback
        public void onRouteRemoved(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            this.f667a.b(routeInfo);
        }

        @Override // android.media.MediaRouter.Callback
        public void onRouteChanged(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            this.f667a.c(routeInfo);
        }

        @Override // android.media.MediaRouter.Callback
        public void onRouteGrouped(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo, MediaRouter.RouteGroup routeGroup, int i) {
            this.f667a.a(routeInfo, routeGroup, i);
        }

        @Override // android.media.MediaRouter.Callback
        public void onRouteUngrouped(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo, MediaRouter.RouteGroup routeGroup) {
            this.f667a.a(routeInfo, routeGroup);
        }

        @Override // android.media.MediaRouter.Callback
        public void onRouteVolumeChanged(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            this.f667a.d(routeInfo);
        }
    }

    /* compiled from: MediaRouterJellybean.java */
    /* loaded from: classes.dex */
    static class h<T extends g> extends MediaRouter.VolumeCallback {

        /* renamed from: a  reason: collision with root package name */
        protected final T f670a;

        public h(T t) {
            this.f670a = t;
        }

        @Override // android.media.MediaRouter.VolumeCallback
        public void onVolumeSetRequest(MediaRouter.RouteInfo routeInfo, int i) {
            this.f670a.a(routeInfo, i);
        }

        @Override // android.media.MediaRouter.VolumeCallback
        public void onVolumeUpdateRequest(MediaRouter.RouteInfo routeInfo, int i) {
            this.f670a.b(routeInfo, i);
        }
    }
}
