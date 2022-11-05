package com.inmobi.commons.internal;

import android.app.IntentService;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import com.google.android.gms.common.GooglePlayServicesUtil;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
/* loaded from: classes2.dex */
public class ActivityRecognitionManager extends IntentService {

    /* renamed from: a  reason: collision with root package name */
    static Object f3786a = null;
    static Object b = null;
    private static Object d = null;
    private static Object e = null;
    static int c = -1;

    public ActivityRecognitionManager() {
        super("InMobi activity service");
    }

    private static boolean a() {
        boolean z = true;
        if (Build.VERSION.SDK_INT < 8) {
            return false;
        }
        if (c == -1) {
            try {
                f3786a = Class.forName("com.google.android.gms.location.DetectedActivity").getConstructor(Integer.TYPE, Integer.TYPE).newInstance(-1, 100);
                c = 1;
                if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(InternalSDKUtil.getContext()) != 0) {
                    c = 0;
                    return false;
                }
            } catch (ClassNotFoundException e2) {
                Log.debug(InternalSDKUtil.LOGGING_TAG, "Google play services not included.");
                c = 0;
            } catch (Exception e3) {
                Log.debug(InternalSDKUtil.LOGGING_TAG, "Google play services not included.");
                c = 0;
            }
        }
        if (c != 1) {
            z = false;
        }
        return z;
    }

    public static void init(Context context) {
        if (a()) {
            a(context);
        }
    }

    private static void a(Context context) {
        Class<?> cls = null;
        try {
            if (f3786a != null) {
                Class<?> cls2 = Class.forName("com.google.android.gms.common.GooglePlayServicesClient");
                Class<?> cls3 = Class.forName("com.google.android.gms.location.ActivityRecognitionClient");
                if (b != null) {
                    cls2.getMethod("disconnect", null).invoke(b, null);
                }
                Class<?>[] declaredClasses = cls2.getDeclaredClasses();
                int length = declaredClasses.length;
                int i = 0;
                Class<?> cls4 = null;
                while (i < length) {
                    Class<?> cls5 = declaredClasses[i];
                    if (cls5.getSimpleName().equalsIgnoreCase("ConnectionCallbacks")) {
                        d = Proxy.newProxyInstance(cls5.getClassLoader(), new Class[]{cls5}, new a());
                    } else if (cls5.getSimpleName().equalsIgnoreCase("OnConnectionFailedListener")) {
                        e = Proxy.newProxyInstance(cls5.getClassLoader(), new Class[]{cls5}, new a());
                        cls4 = cls5;
                        cls5 = cls;
                    } else {
                        cls5 = cls;
                    }
                    i++;
                    cls = cls5;
                }
                b = cls3.getDeclaredConstructor(Context.class, cls, cls4).newInstance(context, d, e);
                cls2.getMethod("connect", null).invoke(b, null);
            }
        } catch (ClassCastException e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Init: Google play services not included. Cannot get current activity.");
        } catch (Exception e3) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Init: Something went wrong during ActivityRecognitionManager.init", e3);
        }
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        if (a()) {
            a(intent);
        }
    }

    private void a(Intent intent) {
        try {
            Class<?> cls = Class.forName("com.google.android.gms.location.ActivityRecognitionResult");
            if (((Boolean) cls.getMethod("hasResult", Intent.class).invoke(null, intent)).booleanValue()) {
                f3786a = cls.getMethod("getMostProbableActivity", null).invoke(cls.getMethod("extractResult", Intent.class).invoke(null, intent), null);
            }
        } catch (ClassNotFoundException e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "HandleIntent: Google play services not included. Cannot get current activity.");
        } catch (Exception e3) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "HandleIntent: Google play services not included. Cannot get current activity.");
        }
    }

    public static int getDetectedActivity() {
        try {
            if (f3786a != null) {
                return ((Integer) Class.forName("com.google.android.gms.location.DetectedActivity").getMethod("getType", null).invoke(f3786a, null)).intValue();
            }
            return -1;
        } catch (ClassNotFoundException e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "getDetectedActivity: Google play services not included. Returning null.");
            return -1;
        } catch (Exception e3) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "getDetectedActivity: Google play services not included. Returning null.");
            return -1;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class a implements InvocationHandler {
        private a() {
        }

        public void a(Bundle bundle) {
            try {
                PendingIntent service = PendingIntent.getService(InternalSDKUtil.getContext().getApplicationContext(), 0, new Intent(InternalSDKUtil.getContext().getApplicationContext(), ActivityRecognitionManager.class), 134217728);
                if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(InternalSDKUtil.getContext()) == 0) {
                    try {
                        Class.forName("com.google.android.gms.location.ActivityRecognitionClient").getMethod("requestActivityUpdates", Integer.class, PendingIntent.class).invoke(ActivityRecognitionManager.b, 1000, service);
                    } catch (Exception e) {
                        Log.internal(InternalSDKUtil.LOGGING_TAG, "Unable to request activity updates from ActivityRecognition client");
                        Class.forName("com.google.android.gms.common.GooglePlayServicesClient").getMethod("disconnect", null).invoke(ActivityRecognitionManager.b, null);
                    }
                } else {
                    Class.forName("com.google.android.gms.common.GooglePlayServicesClient").getMethod("disconnect", null).invoke(ActivityRecognitionManager.b, null);
                }
            } catch (Exception e2) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Unable to request activity updates from ActivityRecognition client");
            }
        }

        @Override // java.lang.reflect.InvocationHandler
        public Object invoke(Object obj, Method method, Object[] objArr) throws Throwable {
            if (objArr != null) {
                try {
                    if (method.getName().equals("onConnected")) {
                        a((Bundle) objArr[0]);
                    }
                } catch (Exception e) {
                    Log.internal(InternalSDKUtil.LOGGING_TAG, "Unable to invoke method", e);
                }
            }
            return null;
        }
    }
}
