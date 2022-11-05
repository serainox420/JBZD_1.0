package com.pierfrancescosoffritti.youtubeplayer;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
/* compiled from: Utils.java */
/* loaded from: classes3.dex */
public class d {
    public static String a(float f) {
        return String.format("%d:%02d", Integer.valueOf((int) (f / 60.0f)), Integer.valueOf((int) (f % 60.0f)));
    }

    public static boolean a(Context context) {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) context.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }
}
