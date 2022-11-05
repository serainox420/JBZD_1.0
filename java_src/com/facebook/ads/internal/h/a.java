package com.facebook.ads.internal.h;

import com.facebook.ads.internal.adapters.e;
/* loaded from: classes.dex */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f2167a = {"com.flurry.android.FlurryAgent", "com.flurry.android.ads.FlurryAdErrorType", "com.flurry.android.ads.FlurryAdNative", "com.flurry.android.ads.FlurryAdNativeAsset", "com.flurry.android.ads.FlurryAdNativeListener"};
    private static final String[] b = {"com.inmobi.ads.InMobiNative", "com.inmobi.sdk.InMobiSdk"};
    private static final String[] c = {"com.google.android.gms.ads.formats.NativeAdView"};

    public static boolean a(e eVar) {
        switch (eVar) {
            case AN:
                return true;
            case YAHOO:
                return a(f2167a);
            case INMOBI:
                return a(b);
            case ADMOB:
                return a(c);
            default:
                return false;
        }
    }

    private static boolean a(String str) {
        try {
            Class.forName(str);
            return true;
        } catch (Throwable th) {
            return false;
        }
    }

    private static boolean a(String[] strArr) {
        if (strArr == null) {
            return false;
        }
        for (String str : strArr) {
            if (!a(str)) {
                return false;
            }
        }
        return true;
    }
}
