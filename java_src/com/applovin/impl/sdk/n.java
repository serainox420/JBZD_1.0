package com.applovin.impl.sdk;

import android.content.Context;
import android.content.Intent;
import android.graphics.Point;
import android.os.Build;
import android.os.StrictMode;
import android.view.Display;
import android.view.WindowManager;
/* loaded from: classes.dex */
public class n {
    public static Point a(Context context) {
        Point point = new Point();
        point.x = 480;
        point.y = 320;
        try {
            Display defaultDisplay = ((WindowManager) context.getSystemService("window")).getDefaultDisplay();
            if (Build.VERSION.SDK_INT >= 13) {
                defaultDisplay.getSize(point);
            } else {
                point.x = defaultDisplay.getWidth();
                point.y = defaultDisplay.getHeight();
            }
        } catch (Throwable th) {
        }
        return point;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a() {
        try {
            if (Build.VERSION.SDK_INT < 9) {
                return;
            }
            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().permitAll().build());
        } catch (Throwable th) {
        }
    }

    public static boolean a(Class cls, Context context) {
        return context.getPackageManager().resolveActivity(new Intent(context, cls), 0) != null;
    }

    public static boolean a(String str, Context context) {
        return context.checkCallingOrSelfPermission(str) == 0;
    }

    public static boolean b() {
        return Build.VERSION.SDK_INT >= 15;
    }

    public static boolean c() {
        return Build.VERSION.SDK_INT >= 19;
    }
}
