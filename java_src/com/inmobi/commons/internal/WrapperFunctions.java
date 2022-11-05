package com.inmobi.commons.internal;

import android.content.Context;
import android.content.pm.ActivityInfo;
import android.graphics.Bitmap;
import android.graphics.Paint;
import android.graphics.Point;
import android.net.http.SslError;
import android.os.Build;
import android.view.Display;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.WebView;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
/* loaded from: classes2.dex */
public class WrapperFunctions {

    /* renamed from: a  reason: collision with root package name */
    private static int f3803a;

    public static int getParamConfigScreenSize() {
        ActivityInfo activityInfo = new ActivityInfo();
        try {
            Field field = ActivityInfo.class.getField("CONFIG_SCREEN_SIZE");
            if (field == null) {
                return 0;
            }
            return field.getInt(activityInfo);
        } catch (NoSuchFieldException e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot get screen size", e);
            return 0;
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot get screen size", e2);
            return 0;
        }
    }

    public static int getParamConfigSmallestScreenSize() {
        ActivityInfo activityInfo = new ActivityInfo();
        try {
            Field field = ActivityInfo.class.getField("CONFIG_SMALLEST_SCREEN_SIZE");
            if (field == null) {
                return 0;
            }
            return field.getInt(activityInfo);
        } catch (NoSuchFieldException e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot get smallest screen size", e);
            return 0;
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot get smallest screen size", e2);
            return 0;
        }
    }

    public static int getParamPortraitOrientation(int i) {
        if (i != 2) {
            return 1;
        }
        ActivityInfo activityInfo = new ActivityInfo();
        try {
            Field field = ActivityInfo.class.getField("SCREEN_ORIENTATION_REVERSE_PORTRAIT");
            if (field == null) {
                return 1;
            }
            return field.getInt(activityInfo);
        } catch (NoSuchFieldException e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot get portrait orientation", e);
            return 1;
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot get portrait orientation", e2);
            return 1;
        }
    }

    public static int getParamLandscapeOrientation(int i) {
        if (i != 3) {
            return 0;
        }
        ActivityInfo activityInfo = new ActivityInfo();
        try {
            Field field = ActivityInfo.class.getField("SCREEN_ORIENTATION_REVERSE_LANDSCAPE");
            if (field == null) {
                return 0;
            }
            return field.getInt(activityInfo);
        } catch (NoSuchFieldException e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot get landscape orientation", e);
            return 0;
        } catch (Exception e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot get landscape orientation", e2);
            return 0;
        }
    }

    public static int getDisplayWidth(Display display) {
        boolean z;
        int intValue;
        Method method = null;
        try {
            method = Display.class.getMethod("getSize", Point.class);
            z = true;
        } catch (NoSuchMethodException e) {
            try {
                method = Display.class.getMethod("getWidth", null);
                z = false;
            } catch (NoSuchMethodException e2) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot get display width", e2);
                z = false;
            }
        }
        try {
            if (z) {
                Point point = new Point();
                method.invoke(display, point);
                intValue = point.x;
            } else {
                intValue = ((Integer) method.invoke(display, null)).intValue();
            }
            return intValue;
        } catch (IllegalAccessException e3) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot get display width", e3);
            return 0;
        } catch (IllegalArgumentException e4) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot get display width", e4);
            return 0;
        } catch (InvocationTargetException e5) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot get display width", e5);
            return 0;
        }
    }

    public static int getDisplayHeight(Display display) {
        boolean z;
        int intValue;
        Method method = null;
        try {
            method = Display.class.getMethod("getSize", Point.class);
            z = true;
        } catch (NoSuchMethodException e) {
            try {
                method = Display.class.getMethod("getHeight", null);
                z = false;
            } catch (NoSuchMethodException e2) {
                Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot get display height", e2);
                z = false;
            }
        }
        try {
            if (z) {
                Point point = new Point();
                method.invoke(display, point);
                intValue = point.y;
            } else {
                intValue = ((Integer) method.invoke(display, null)).intValue();
            }
            return intValue;
        } catch (IllegalAccessException e3) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot get display height", e3);
            return 0;
        } catch (IllegalArgumentException e4) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot get display height", e4);
            return 0;
        } catch (InvocationTargetException e5) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot get display height", e5);
            return 0;
        }
    }

    public static int getParamFillParent() {
        Class cls;
        Field field;
        if (f3803a == 0) {
            synchronized (WrapperFunctions.class) {
                if (f3803a == 0) {
                    ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(1, 1);
                    try {
                        field = ViewGroup.LayoutParams.class.getField("MATCH_PARENT");
                    } catch (NoSuchFieldException e) {
                        try {
                            field = cls.getField("FILL_PARENT");
                        } catch (NoSuchFieldException e2) {
                            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot get fill parent param", e2);
                            field = null;
                        }
                    }
                    if (field != null) {
                        try {
                            f3803a = field.getInt(layoutParams);
                        } catch (Exception e3) {
                            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot get fill parent param", e3);
                        }
                    }
                }
            }
        }
        return f3803a;
    }

    public static Bitmap getVideoBitmap(String str) throws Exception {
        try {
            return (Bitmap) Class.forName("android.media.ThumbnailUtils").getDeclaredMethod("createVideoThumbnail", String.class, Integer.TYPE).invoke(null, str, 1);
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot get video bitmap", e);
            throw e;
        }
    }

    private static void a(WebView webView, int i) {
        try {
            webView.getClass().getMethod("setLayerType", Integer.TYPE, Paint.class).invoke(webView, Integer.valueOf(i), null);
        } catch (IllegalAccessException e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot set hardware accl", e);
        } catch (IllegalArgumentException e2) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot set hardware accl", e2);
        } catch (NoSuchMethodException e3) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot set hardware accl", e3);
        } catch (InvocationTargetException e4) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot set hardware accl", e4);
        }
    }

    public static void disableHardwareAccl(WebView webView) {
        a(webView, 1);
    }

    public static String getSSLErrorUrl(SslError sslError) {
        try {
            return Class.forName("android.net.http.SslError").getDeclaredMethod("getUrl", new Class[0]).invoke(sslError, new Object[0]).toString();
        } catch (Exception e) {
            Log.internal(InternalSDKUtil.LOGGING_TAG, "Cannot get SSL Url", e);
            return null;
        }
    }

    public static int getCurrentOrientationInFixedValues(Context context) {
        switch (context.getResources().getConfiguration().orientation) {
            case 1:
                if (Build.VERSION.SDK_INT < 8) {
                    return 1;
                }
                int rotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
                return (rotation == 1 || rotation == 2) ? 9 : 1;
            case 2:
                if (Build.VERSION.SDK_INT < 8) {
                    return 0;
                }
                int rotation2 = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
                return (rotation2 == 0 || rotation2 == 1) ? 0 : 8;
            default:
                return 1;
        }
    }
}
