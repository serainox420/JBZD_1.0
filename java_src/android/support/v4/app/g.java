package android.support.v4.app;

import android.annotation.TargetApi;
import android.app.ActivityManager;
/* compiled from: ActivityManagerCompatKitKat.java */
@TargetApi(19)
/* loaded from: classes.dex */
class g {
    public static boolean a(ActivityManager activityManager) {
        return activityManager.isLowRamDevice();
    }
}
