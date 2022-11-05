package com.pubmatic.sdk.banner;

import android.content.Context;
import android.content.res.Resources;
import android.net.ConnectivityManager;
/* loaded from: classes3.dex */
public class BannerUtils {
    public static String getUseragent() {
        return "Android 2.3";
    }

    public static int dpToPx(int i) {
        return (int) ((Resources.getSystem().getDisplayMetrics().density * i) + 0.5f);
    }

    public static int pxToDp(float f) {
        return (int) ((f / Resources.getSystem().getDisplayMetrics().density) + 0.5f);
    }

    public static String getNetworkType(Context context) {
        switch (((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo().getType()) {
            case 0:
                return "cellular";
            case 1:
                return "wifi";
            default:
                return null;
        }
    }
}
