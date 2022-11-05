package android.support.v4.app;

import android.app.ActivityManager;
import android.os.Build;
/* compiled from: ActivityManagerCompat.java */
/* loaded from: classes.dex */
public final class f {
    public static boolean a(ActivityManager activityManager) {
        if (Build.VERSION.SDK_INT >= 19) {
            return g.a(activityManager);
        }
        return false;
    }
}
