package android.support.v4.app;

import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.Context;
/* compiled from: AppOpsManagerCompat23.java */
@TargetApi(23)
/* loaded from: classes.dex */
class i {
    public static String a(String str) {
        return AppOpsManager.permissionToOp(str);
    }

    public static int a(Context context, String str, String str2) {
        return ((AppOpsManager) context.getSystemService(AppOpsManager.class)).noteProxyOp(str, str2);
    }
}
