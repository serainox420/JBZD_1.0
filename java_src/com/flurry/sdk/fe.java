package com.flurry.sdk;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.util.SparseArray;
import android.util.SparseIntArray;
/* loaded from: classes2.dex */
public final class fe {

    /* renamed from: a  reason: collision with root package name */
    private static final String f2674a = fe.class.getSimpleName();
    private static final SparseArray<SparseIntArray> b;

    static {
        SparseArray<SparseIntArray> sparseArray = new SparseArray<>();
        SparseIntArray sparseIntArray = new SparseIntArray();
        sparseIntArray.put(-1, 7);
        sparseIntArray.put(2, 7);
        sparseIntArray.put(3, 7);
        sparseIntArray.put(4, 7);
        sparseIntArray.put(1, 1);
        sparseIntArray.put(5, 5);
        sparseIntArray.put(7, 7);
        sparseIntArray.put(9, 9);
        sparseIntArray.put(10, 7);
        sparseArray.put(1, sparseIntArray);
        SparseIntArray sparseIntArray2 = new SparseIntArray();
        sparseIntArray2.put(-1, 6);
        sparseIntArray2.put(2, 6);
        sparseIntArray2.put(3, 6);
        sparseIntArray2.put(4, 6);
        sparseIntArray2.put(0, 0);
        sparseIntArray2.put(5, 5);
        sparseIntArray2.put(6, 6);
        sparseIntArray2.put(8, 8);
        sparseIntArray2.put(10, 6);
        sparseArray.put(2, sparseIntArray2);
        b = sparseArray;
    }

    public static boolean a(Context context) {
        boolean z = (context.getResources().getConfiguration().screenLayout & 15) >= 3;
        km.b(f2674a, "isTablet " + z);
        return z;
    }

    public static void a(Activity activity, int i) {
        if (activity == null) {
            km.b(f2674a, "Context is null. Cannot set requested orientation.");
        } else if (a((Context) activity)) {
            km.b(f2674a, "setOrientation SCREEN_ORIENTATION_SENSOR");
            activity.setRequestedOrientation(4);
        } else {
            km.b(f2674a, "setOrientation " + i);
            activity.setRequestedOrientation(i);
        }
    }

    public static int a() {
        return 7;
    }

    public static void a(Activity activity) {
        int i = activity.getResources().getConfiguration().orientation;
        if (i == 1) {
            activity.setRequestedOrientation(7);
        } else if (i == 2) {
            activity.setRequestedOrientation(6);
        }
    }

    public static boolean b(Activity activity, int i) {
        ActivityInfo a2;
        boolean z;
        if (activity == null) {
            return false;
        }
        if (activity == null) {
            a2 = null;
        } else {
            a2 = a(activity.getPackageManager(), activity.getComponentName());
        }
        int a3 = a(a2);
        if ((a3 & 128) == 0) {
            z = false;
        } else {
            z = (a3 & 1024) != 0;
        }
        if (!z) {
            int a4 = activity == null ? -1 : a(activity, i, activity.getResources().getConfiguration().orientation);
            if (-1 == a4) {
                km.a(5, f2674a, "cannot set requested orientation without restarting activity, requestedOrientation = " + i);
                km.b(f2674a, "cannot set requested orientation without restarting activity. It is recommended to add keyboardHidden|orientation|screenSize for android:configChanges attribute for activity: " + activity.getComponentName().getClassName());
                return false;
            }
            i = a4;
        }
        activity.setRequestedOrientation(i);
        return true;
    }

    public static ActivityInfo a(PackageManager packageManager, ComponentName componentName) {
        if (packageManager == null || componentName == null) {
            return null;
        }
        try {
            return packageManager.getActivityInfo(componentName, 0);
        } catch (PackageManager.NameNotFoundException e) {
            km.a(5, f2674a, "cannot find info for activity: " + componentName);
            return null;
        }
    }

    @TargetApi(13)
    public static int a(ActivityInfo activityInfo) {
        if (activityInfo == null) {
            return 0;
        }
        int i = activityInfo.configChanges;
        if (activityInfo.applicationInfo.targetSdkVersion < 13) {
            return i | 3072;
        }
        return i;
    }

    private static int a(Activity activity, int i, int i2) {
        if (activity == null) {
            return -1;
        }
        SparseIntArray sparseIntArray = b.get(i2);
        return sparseIntArray != null ? sparseIntArray.get(i, -1) : -1;
    }

    public static int a(Activity activity, dg dgVar) {
        int i = 0;
        if (dg.PORTRAIT.equals(dgVar)) {
            i = 1;
        } else if (dg.LANDSCAPE.equals(dgVar)) {
            i = 2;
        }
        return a(activity, -1, i);
    }
}
