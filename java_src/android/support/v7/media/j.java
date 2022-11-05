package android.support.v7.media;

import android.annotation.TargetApi;
import android.content.Context;
import android.hardware.display.DisplayManager;
import android.media.MediaRouter;
import android.os.Build;
import android.os.Handler;
import android.support.v7.media.i;
import android.util.Log;
import android.view.Display;
import com.facebook.internal.ServerProtocol;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* compiled from: MediaRouterJellybeanMr1.java */
@TargetApi(17)
/* loaded from: classes.dex */
final class j {

    /* compiled from: MediaRouterJellybeanMr1.java */
    /* loaded from: classes.dex */
    public interface b extends i.a {
        void e(Object obj);
    }

    public static Object a(b bVar) {
        return new c(bVar);
    }

    /* compiled from: MediaRouterJellybeanMr1.java */
    /* loaded from: classes.dex */
    public static final class e {
        public static boolean a(Object obj) {
            return ((MediaRouter.RouteInfo) obj).isEnabled();
        }

        public static Display b(Object obj) {
            try {
                return ((MediaRouter.RouteInfo) obj).getPresentationDisplay();
            } catch (NoSuchMethodError e) {
                Log.w("MediaRouterJellybeanMr1", "Cannot get presentation display for the route.", e);
                return null;
            }
        }
    }

    /* compiled from: MediaRouterJellybeanMr1.java */
    /* loaded from: classes.dex */
    public static final class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        private final DisplayManager f671a;
        private final Handler b;
        private Method c;
        private boolean d;

        public a(Context context, Handler handler) {
            if (Build.VERSION.SDK_INT != 17) {
                throw new UnsupportedOperationException();
            }
            this.f671a = (DisplayManager) context.getSystemService(ServerProtocol.DIALOG_PARAM_DISPLAY);
            this.b = handler;
            try {
                this.c = DisplayManager.class.getMethod("scanWifiDisplays", new Class[0]);
            } catch (NoSuchMethodException e) {
            }
        }

        public void a(int i) {
            if ((i & 2) != 0) {
                if (!this.d) {
                    if (this.c != null) {
                        this.d = true;
                        this.b.post(this);
                        return;
                    }
                    Log.w("MediaRouterJellybeanMr1", "Cannot scan for wifi displays because the DisplayManager.scanWifiDisplays() method is not available on this device.");
                }
            } else if (this.d) {
                this.d = false;
                this.b.removeCallbacks(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.d) {
                try {
                    this.c.invoke(this.f671a, new Object[0]);
                } catch (IllegalAccessException e) {
                    Log.w("MediaRouterJellybeanMr1", "Cannot scan for wifi displays.", e);
                } catch (InvocationTargetException e2) {
                    Log.w("MediaRouterJellybeanMr1", "Cannot scan for wifi displays.", e2);
                }
                this.b.postDelayed(this, 15000L);
            }
        }
    }

    /* compiled from: MediaRouterJellybeanMr1.java */
    /* loaded from: classes.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        private Method f672a;
        private int b;

        public d() {
            if (Build.VERSION.SDK_INT != 17) {
                throw new UnsupportedOperationException();
            }
            try {
                this.b = MediaRouter.RouteInfo.class.getField("STATUS_CONNECTING").getInt(null);
                this.f672a = MediaRouter.RouteInfo.class.getMethod("getStatusCode", new Class[0]);
            } catch (IllegalAccessException e) {
            } catch (NoSuchFieldException e2) {
            } catch (NoSuchMethodException e3) {
            }
        }

        public boolean a(Object obj) {
            MediaRouter.RouteInfo routeInfo = (MediaRouter.RouteInfo) obj;
            if (this.f672a != null) {
                try {
                    return ((Integer) this.f672a.invoke(routeInfo, new Object[0])).intValue() == this.b;
                } catch (IllegalAccessException e) {
                } catch (InvocationTargetException e2) {
                }
            }
            return false;
        }
    }

    /* compiled from: MediaRouterJellybeanMr1.java */
    /* loaded from: classes.dex */
    static class c<T extends b> extends i.b<T> {
        public c(T t) {
            super(t);
        }

        @Override // android.media.MediaRouter.Callback
        public void onRoutePresentationDisplayChanged(MediaRouter mediaRouter, MediaRouter.RouteInfo routeInfo) {
            ((b) this.f667a).e(routeInfo);
        }
    }
}
