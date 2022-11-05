package com.flurry.sdk;

import android.telephony.TelephonyManager;
/* loaded from: classes2.dex */
public class js {

    /* renamed from: a  reason: collision with root package name */
    private static js f2937a;
    private static final String b = js.class.getSimpleName();

    public static synchronized js a() {
        js jsVar;
        synchronized (js.class) {
            if (f2937a == null) {
                f2937a = new js();
            }
            jsVar = f2937a;
        }
        return jsVar;
    }

    private js() {
    }

    public static String b() {
        TelephonyManager telephonyManager = (TelephonyManager) jy.a().f2947a.getSystemService("phone");
        if (telephonyManager == null) {
            return null;
        }
        return telephonyManager.getNetworkOperatorName();
    }

    public static String c() {
        TelephonyManager telephonyManager = (TelephonyManager) jy.a().f2947a.getSystemService("phone");
        if (telephonyManager == null) {
            return null;
        }
        return telephonyManager.getNetworkOperator();
    }
}
