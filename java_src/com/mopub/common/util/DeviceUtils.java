package com.mopub.common.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.graphics.Point;
import android.net.ConnectivityManager;
import android.os.Build;
import android.os.StatFs;
import android.support.v4.content.b;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.mopub.common.CreativeOrientation;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Reflection;
import java.io.File;
import java.net.SocketException;
/* loaded from: classes.dex */
public class DeviceUtils {

    @Deprecated
    /* loaded from: classes.dex */
    public enum IP {
        IPv4,
        IPv6
    }

    private DeviceUtils() {
    }

    /* loaded from: classes3.dex */
    public enum ForceOrientation {
        FORCE_PORTRAIT("portrait"),
        FORCE_LANDSCAPE("landscape"),
        DEVICE_ORIENTATION("device"),
        UNDEFINED("");
        

        /* renamed from: a  reason: collision with root package name */
        private final String f4388a;

        ForceOrientation(String str) {
            this.f4388a = str;
        }

        public static ForceOrientation getForceOrientation(String str) {
            ForceOrientation[] values;
            for (ForceOrientation forceOrientation : values()) {
                if (forceOrientation.f4388a.equalsIgnoreCase(str)) {
                    return forceOrientation;
                }
            }
            return UNDEFINED;
        }
    }

    public static boolean isNetworkAvailable(Context context) {
        if (context != null && isPermissionGranted(context, "android.permission.INTERNET")) {
            if (!isPermissionGranted(context, "android.permission.ACCESS_NETWORK_STATE")) {
                return true;
            }
            try {
                return ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo().isConnected();
            } catch (NullPointerException e) {
                return false;
            }
        }
        return false;
    }

    public static int memoryCacheSizeBytes(Context context) {
        ActivityManager activityManager;
        long memoryClass = ((ActivityManager) context.getSystemService("activity")).getMemoryClass();
        if (VersionCode.currentApiLevel().isAtLeast(VersionCode.HONEYCOMB)) {
            try {
                memoryClass = Utils.bitMaskContainsFlag(context.getApplicationInfo().flags, ApplicationInfo.class.getDeclaredField("FLAG_LARGE_HEAP").getInt(null)) ? ((Integer) new Reflection.MethodBuilder(activityManager, "getLargeMemoryClass").execute()).intValue() : memoryClass;
            } catch (Exception e) {
                MoPubLog.d("Unable to reflectively determine large heap size on Honeycomb and above.");
            }
        }
        return (int) Math.min(31457280L, (memoryClass / 8) * 1024 * 1024);
    }

    public static long diskCacheSizeBytes(File file, long j) {
        try {
            StatFs statFs = new StatFs(file.getAbsolutePath());
            j = (statFs.getBlockSize() * statFs.getBlockCount()) / 50;
        } catch (IllegalArgumentException e) {
            MoPubLog.d("Unable to calculate 2% of available disk space, defaulting to minimum");
        }
        return Math.max(Math.min(j, 104857600L), 31457280L);
    }

    public static long diskCacheSizeBytes(File file) {
        return diskCacheSizeBytes(file, 31457280L);
    }

    public static int getScreenOrientation(Activity activity) {
        return a(activity.getWindowManager().getDefaultDisplay().getRotation(), activity.getResources().getConfiguration().orientation);
    }

    static int a(int i, int i2) {
        if (1 == i2) {
            switch (i) {
                case 1:
                case 2:
                    return 9;
                default:
                    return 1;
            }
        } else if (2 == i2) {
            switch (i) {
                case 2:
                case 3:
                    return 8;
                default:
                    return 0;
            }
        } else {
            MoPubLog.d("Unknown screen orientation. Defaulting to portrait.");
            return 9;
        }
    }

    public static void lockOrientation(Activity activity, CreativeOrientation creativeOrientation) {
        int i;
        if (Preconditions.NoThrow.checkNotNull(creativeOrientation) && Preconditions.NoThrow.checkNotNull(activity)) {
            int a2 = a(((WindowManager) activity.getSystemService("window")).getDefaultDisplay().getRotation(), activity.getResources().getConfiguration().orientation);
            if (CreativeOrientation.PORTRAIT == creativeOrientation) {
                i = 9 == a2 ? 9 : 1;
            } else if (CreativeOrientation.LANDSCAPE == creativeOrientation) {
                i = 8 == a2 ? 8 : 0;
            } else {
                return;
            }
            activity.setRequestedOrientation(i);
        }
    }

    @TargetApi(17)
    public static Point getDeviceDimensions(Context context) {
        Integer num;
        Integer num2;
        if (Build.VERSION.SDK_INT >= 13) {
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            if (Build.VERSION.SDK_INT >= 17) {
                Point point = new Point();
                defaultDisplay.getRealSize(point);
                num2 = Integer.valueOf(point.x);
                num = Integer.valueOf(point.y);
            } else {
                try {
                    Integer num3 = (Integer) new Reflection.MethodBuilder(defaultDisplay, "getRawWidth").execute();
                    try {
                        Integer num4 = (Integer) new Reflection.MethodBuilder(defaultDisplay, "getRawHeight").execute();
                        num2 = num3;
                        num = num4;
                    } catch (Exception e) {
                        num2 = num3;
                        e = e;
                        MoPubLog.v("Display#getRawWidth/Height failed.", e);
                        num = null;
                        if (num2 != null) {
                        }
                        DisplayMetrics displayMetrics = context.getResources().getDisplayMetrics();
                        num2 = Integer.valueOf(displayMetrics.widthPixels);
                        num = Integer.valueOf(displayMetrics.heightPixels);
                        return new Point(num2.intValue(), num.intValue());
                    }
                } catch (Exception e2) {
                    e = e2;
                    num2 = null;
                }
            }
        } else {
            num = null;
            num2 = null;
        }
        if (num2 != null || num == null) {
            DisplayMetrics displayMetrics2 = context.getResources().getDisplayMetrics();
            num2 = Integer.valueOf(displayMetrics2.widthPixels);
            num = Integer.valueOf(displayMetrics2.heightPixels);
        }
        return new Point(num2.intValue(), num.intValue());
    }

    public static boolean isPermissionGranted(Context context, String str) {
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(str);
        return b.b(context, str) == 0;
    }

    @Deprecated
    public static String getIpAddress(IP ip) throws SocketException {
        return null;
    }

    @Deprecated
    public static String getHashedUdid(Context context) {
        return null;
    }
}
