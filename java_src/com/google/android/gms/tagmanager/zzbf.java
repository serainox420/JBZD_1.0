package com.google.android.gms.tagmanager;

import android.content.Context;
import android.content.SharedPreferences;
import android.net.Uri;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public class zzbf {
    private static String zzbGv;
    static Map<String, String> zzbGw = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zzN(Context context, String str) {
        zzdd.zzd(context, "gtm_install_referrer", AdTrackerConstants.REFERRER, str);
        zzP(context, str);
    }

    public static String zzO(Context context, String str) {
        if (zzbGv == null) {
            synchronized (zzbf.class) {
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

    public static void zzP(Context context, String str) {
        String zzaj = zzaj(str, "conv");
        if (zzaj == null || zzaj.length() <= 0) {
            return;
        }
        zzbGw.put(zzaj, str);
        zzdd.zzd(context, "gtm_click_referrers", zzaj, str);
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

    public static void zzhk(String str) {
        synchronized (zzbf.class) {
            zzbGv = str;
        }
    }

    public static String zzr(Context context, String str, String str2) {
        String str3 = zzbGw.get(str);
        if (str3 == null) {
            SharedPreferences sharedPreferences = context.getSharedPreferences("gtm_click_referrers", 0);
            str3 = sharedPreferences != null ? sharedPreferences.getString(str, "") : "";
            zzbGw.put(str, str3);
        }
        return zzaj(str3, str2);
    }
}
