package com.intentsoftware.addapptr.c;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
/* compiled from: NetworkUtils.java */
/* loaded from: classes2.dex */
public class e {
    private static ConnectivityManager connectivityManager;

    public static void init(Context context) {
        connectivityManager = (ConnectivityManager) context.getSystemService("connectivity");
    }

    public static boolean isUsingFastConnection() {
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        if (activeNetworkInfo == null) {
            return false;
        }
        int type = activeNetworkInfo.getType();
        int subtype = activeNetworkInfo.getSubtype();
        if (type == 1) {
            return true;
        }
        if (type != 0) {
            return false;
        }
        switch (subtype) {
            case 1:
            case 2:
            case 4:
            case 7:
            case 11:
            default:
                return false;
            case 3:
                return true;
            case 5:
                return true;
            case 6:
                return true;
            case 8:
                return true;
            case 9:
                return true;
            case 10:
                return true;
            case 12:
                return true;
            case 13:
                return true;
            case 14:
                return true;
            case 15:
                return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isNetworkAvailable() {
        NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }
}
