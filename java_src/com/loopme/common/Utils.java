package com.loopme.common;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.graphics.Point;
import android.graphics.drawable.BitmapDrawable;
import android.location.Location;
import android.location.LocationManager;
import android.media.AudioManager;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Build;
import android.util.Base64;
import android.util.DisplayMetrics;
import android.util.TypedValue;
import android.view.Display;
import android.view.View;
import android.view.WindowManager;
import android.widget.FrameLayout;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.google.firebase.a.a;
import com.loopme.constants.StretchOption;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
/* loaded from: classes2.dex */
public class Utils {
    private static final String LOG_TAG = Utils.class.getSimpleName();
    private static AudioManager sAudioManager;
    private static LocationManager sLocationManager;
    private static PackageManager sPackageManager;
    private static Resources sResources;
    private static WindowManager sWindowManager;

    public static boolean isOnline(Context context) {
        boolean z;
        try {
            ConnectivityManager connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
            if (connectivityManager == null) {
                return false;
            }
            NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            if (activeNetworkInfo != null && activeNetworkInfo.isConnected()) {
                if (activeNetworkInfo.isAvailable()) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    public static int convertDpToPixel(float f) {
        if (sResources != null) {
            return (int) TypedValue.applyDimension(1, f, sResources.getDisplayMetrics());
        }
        return 0;
    }

    public static void init(Context context) {
        if (context != null) {
            sWindowManager = (WindowManager) context.getSystemService("window");
            sResources = context.getResources();
            sLocationManager = (LocationManager) context.getSystemService(a.b.LOCATION);
            sPackageManager = context.getPackageManager();
            sAudioManager = (AudioManager) context.getSystemService("audio");
        }
    }

    public static String getStringFromStream(InputStream inputStream) {
        StringBuilder sb = new StringBuilder();
        byte[] bArr = new byte[4096];
        while (true) {
            try {
                int read = inputStream.read(bArr);
                if (read == -1) {
                    break;
                }
                sb.append(new String(bArr, 0, read));
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
        inputStream.close();
        return sb.toString();
    }

    public static Location getLastKnownLocation() {
        Location location;
        Location location2;
        if (sLocationManager == null) {
            return null;
        }
        try {
            location = sLocationManager.getLastKnownLocation("gps");
        } catch (IllegalArgumentException e) {
            Logging.out(LOG_TAG, "Failed to retrieve GPS location: device has no GPS provider.");
            location = null;
        } catch (SecurityException e2) {
            Logging.out(LOG_TAG, "Failed to retrieve GPS location: access appears to be disabled.");
            location = null;
        }
        try {
            location2 = sLocationManager.getLastKnownLocation("network");
        } catch (IllegalArgumentException e3) {
            Logging.out(LOG_TAG, "Failed to retrieve network location: device has no network provider.");
            location2 = null;
        } catch (SecurityException e4) {
            Logging.out(LOG_TAG, "Failed to retrieve network location: access appears to be disabled.");
            location2 = null;
        }
        if (location == null && location2 == null) {
            return null;
        }
        if (location != null && location2 != null) {
            if (location.getTime() <= location2.getTime()) {
                location = location2;
            }
        } else if (location == null) {
            location = location2;
        }
        return location;
    }

    public static DisplayMetrics getDisplayMetrics() {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        if (sWindowManager != null) {
            sWindowManager.getDefaultDisplay().getMetrics(displayMetrics);
        }
        return displayMetrics;
    }

    public static boolean isPackageInstalled(List<String> list) {
        if (sPackageManager == null) {
            return false;
        }
        for (PackageInfo packageInfo : sPackageManager.getInstalledPackages(0)) {
            for (int i = 0; i < list.size(); i++) {
                if (list.get(i).equalsIgnoreCase(packageInfo.packageName)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static void animateAppear(View view) {
        view.animate().setDuration(500L).alpha(1.0f);
    }

    public static float getSystemVolume() {
        if (sAudioManager != null) {
            return Math.round((sAudioManager.getStreamVolume(2) * 100) / sAudioManager.getStreamMaxVolume(2)) / 100.0f;
        }
        return 1.0f;
    }

    public static int getScreenOrientation() {
        int rotation = sWindowManager.getDefaultDisplay().getRotation();
        DisplayMetrics displayMetrics = new DisplayMetrics();
        sWindowManager.getDefaultDisplay().getMetrics(displayMetrics);
        int i = displayMetrics.widthPixels;
        int i2 = displayMetrics.heightPixels;
        if (((rotation == 0 || rotation == 2) && i2 > i) || ((rotation == 1 || rotation == 3) && i > i2)) {
            switch (rotation) {
                case 0:
                default:
                    return 1;
                case 1:
                    return 0;
                case 2:
                    return 9;
                case 3:
                    return 8;
            }
        }
        switch (rotation) {
            case 0:
                return 0;
            case 1:
                return 1;
            case 2:
                return 8;
            case 3:
                return 9;
            default:
                return 0;
        }
    }

    public static int getScreenWidth() {
        if (sWindowManager == null) {
            return 0;
        }
        Display defaultDisplay = sWindowManager.getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point.x;
    }

    public static int getScreenHeight() {
        if (sWindowManager == null) {
            return 0;
        }
        Display defaultDisplay = sWindowManager.getDefaultDisplay();
        Point point = new Point();
        defaultDisplay.getSize(point);
        return point.y;
    }

    public static BitmapDrawable decodeImage(String str) {
        return new BitmapDrawable((Resources) null, new ByteArrayInputStream(Base64.decode(str, 0)));
    }

    public static FrameLayout.LayoutParams calculateNewLayoutParams(FrameLayout.LayoutParams layoutParams, int i, int i2, int i3, int i4, StretchOption stretchOption) {
        layoutParams.gravity = 17;
        float f = BitmapDescriptorFactory.HUE_RED;
        if (i > i2) {
            layoutParams.width = i3;
            layoutParams.height = (int) ((i2 / i) * i3);
            int i5 = i4 - layoutParams.height;
            if (layoutParams.height != 0) {
                f = (i5 * 100) / layoutParams.height;
            }
        } else {
            layoutParams.height = i4;
            layoutParams.width = (int) ((i / i2) * i4);
            int i6 = i3 - layoutParams.width;
            if (layoutParams.width != 0) {
                f = (i6 * 100) / layoutParams.width;
            }
        }
        switch (stretchOption) {
            case NONE:
                if (f < 11.0f) {
                    layoutParams.width = i3;
                    layoutParams.height = i4;
                    break;
                }
                break;
            case STRECH:
                layoutParams.width = i3;
                layoutParams.height = i4;
                break;
        }
        return layoutParams;
    }

    public static String getViewVisibility(View view) {
        switch (view.getVisibility()) {
            case 0:
                return "VISIBLE";
            case 4:
                return "INVISIBLE";
            case 8:
                return "GONE";
            default:
                return null;
        }
    }

    public static void clearCache(Context context) {
        VideoUtils.clearCache(context);
    }

    public static boolean isEmulator() {
        return Build.MODEL.contains("google_sdk") || Build.MODEL.contains("Emulator") || Build.MODEL.contains("Android SDK") || Build.MANUFACTURER.contains("Genymotion");
    }
}
