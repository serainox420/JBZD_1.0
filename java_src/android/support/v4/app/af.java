package android.support.v4.app;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Intent;
import android.content.pm.ActivityInfo;
/* compiled from: NavUtilsJB.java */
@TargetApi(16)
/* loaded from: classes.dex */
class af {
    public static Intent a(Activity activity) {
        return activity.getParentActivityIntent();
    }

    public static boolean a(Activity activity, Intent intent) {
        return activity.shouldUpRecreateTask(intent);
    }

    public static void b(Activity activity, Intent intent) {
        activity.navigateUpTo(intent);
    }

    public static String a(ActivityInfo activityInfo) {
        return activityInfo.parentActivityName;
    }
}
