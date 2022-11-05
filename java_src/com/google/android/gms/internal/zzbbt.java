package com.google.android.gms.internal;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzbbt {
    private static String zzbGv;
    static Map<String, String> zzbGw = new HashMap();

    public static String zzO(Context context, String str) {
        if (zzbGv == null) {
            synchronized (zzbbt.class) {
                if (zzbGv == null) {
                    SharedPreferences sharedPreferences = context.getSharedPreferences("gtm_install_referrer", 0);
                    if (sharedPreferences != null) {
                        zzbGv = sharedPreferences.getString(AdTrackerConstants.REFERRER, "");
                    } else {
                        zzbGv = "";
                    }
                }
            }
        }
        return zzaj(zzbGv, str);
    }

    public static String zzaj(String str, String str2) {
        if (str2 != null) {
            String valueOf = String.valueOf(str);
            return Uri.parse(valueOf.length() != 0 ? "http://hostname/?".concat(valueOf) : new String("http://hostname/?")).getQueryParameter(str2);
        } else if (str.length() <= 0) {
            return null;
        } else {
            return str;
        }
    }
}
