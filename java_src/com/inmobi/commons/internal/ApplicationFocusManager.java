package com.inmobi.commons.internal;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class ApplicationFocusManager {
    protected static final int MSG_PAUSED = 1001;
    protected static final int MSG_RESUMED = 1002;
    private static Object b;
    private static Application d;

    /* renamed from: a  reason: collision with root package name */
    private static List<FocusChangedListener> f3791a = new ArrayList();
    private static HandlerThread c = null;

    /* loaded from: classes2.dex */
    public interface FocusChangedListener {
        void onFocusChanged(boolean z);
    }

    @SuppressLint({"NewApi"})
    public static void init(Context context) {
        if (Build.VERSION.SDK_INT >= 14 && d == null) {
            if (context instanceof Activity) {
                d = ((Activity) context).getApplication();
            } else {
                d = (Application) context.getApplicationContext();
            }
        }
    }

    @TargetApi(14)
    private static void b() {
        try {
            c = new HandlerThread("InMobiAFM");
            c.start();
            Class<?>[] declaredClasses = Application.class.getDeclaredClasses();
            Class<?> cls = null;
            int length = declaredClasses.length;
            int i = 0;
            while (i < length) {
                Class<?> cls2 = declaredClasses[i];
                if (cls2.getSimpleName().equalsIgnoreCase("ActivityLifecycleCallbacks")) {
                    new Class[1][0] = cls2;
                } else {
                    cls2 = cls;
                }
                i++;
                cls = cls2;
            }
            Object newProxyInstance = Proxy.newProxyInstance(cls.getClassLoader(), new Class[]{cls}, new InvocationHandler() { // from class: com.inmobi.commons.internal.ApplicationFocusManager.1

                /* renamed from: a  reason: collision with root package name */
                private final Handler f3792a = new a(ApplicationFocusManager.c.getLooper());

                public void a(Activity activity) {
                    this.f3792a.sendEmptyMessageDelayed(1001, 3000L);
                }

                public void b(Activity activity) {
                    this.f3792a.removeMessages(1001);
                    this.f3792a.sendEmptyMessage(1002);
                }

                @Override // java.lang.reflect.InvocationHandler
                public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
                    if (objArr != null) {
                        try {
                            if (method.getName().equals("onActivityPaused")) {
                                a((Activity) objArr[0]);
                            } else if (method.getName().equals("onActivityResumed")) {
                                b((Activity) objArr[0]);
                            }
                        } catch (Exception e) {
                            Log.internal(InternalSDKUtil.LOGGING_TAG, "Unable to invoke method", e);
                        }
                    }
                    return null;
                }
            });
            if (newProxyInstance != null) {
                Application.class.getMethod("registerActivityLifecycleCallbacks", cls).invoke(d, newProxyInstance);
            }
        } catch (Exception e) {
            e.printStackTrace();
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot register activity lifecycle callbacks", e);
        }
    }

    @TargetApi(14)
    private static void c() {
        try {
            if (b != null) {
                Application.class.getMethod("unregisterActivityLifecycleCallbacks", null).invoke(d, (Object[]) b);
            }
            c.stop();
            c = null;
        } catch (Exception e) {
            e.printStackTrace();
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Exception unregister app lifecycle callback", e);
        }
    }

    public static void addFocusChangedListener(FocusChangedListener focusChangedListener) {
        if (Build.VERSION.SDK_INT >= 14) {
            f3791a.add(focusChangedListener);
            if (f3791a.size() == 1) {
                b();
            }
        }
    }

    public static void removeFocusChangedListener(FocusChangedListener focusChangedListener) {
        if (Build.VERSION.SDK_INT >= 14) {
            f3791a.remove(focusChangedListener);
            if (f3791a.size() == 0) {
                c();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void b(Boolean bool) {
        for (FocusChangedListener focusChangedListener : f3791a) {
            focusChangedListener.onFocusChanged(bool.booleanValue());
        }
    }

    /* loaded from: classes2.dex */
    static class a extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private boolean f3793a;

        public a(Looper looper) {
            super(looper);
            this.f3793a = false;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            if (message.what == 1001 && this.f3793a) {
                this.f3793a = false;
                ApplicationFocusManager.b(Boolean.valueOf(this.f3793a));
            } else if (message.what == 1002 && !this.f3793a) {
                this.f3793a = true;
                ApplicationFocusManager.b(Boolean.valueOf(this.f3793a));
            }
        }
    }
}
