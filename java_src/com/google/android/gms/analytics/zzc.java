package com.google.android.gms.analytics;

import com.google.android.gms.internal.zztc;
import com.inmobi.commons.analytics.db.AnalyticsEvent;
import com.intentsoftware.addapptr.w;
/* loaded from: classes2.dex */
public final class zzc {
    public static String zzan(int i) {
        return zzc("&cd", i);
    }

    public static String zzao(int i) {
        return zzc("cd", i);
    }

    public static String zzap(int i) {
        return zzc("&cm", i);
    }

    public static String zzaq(int i) {
        return zzc("cm", i);
    }

    public static String zzar(int i) {
        return zzc("&pr", i);
    }

    public static String zzas(int i) {
        return zzc("pr", i);
    }

    public static String zzat(int i) {
        return zzc("&promo", i);
    }

    public static String zzau(int i) {
        return zzc(w.PROMO_NAME, i);
    }

    public static String zzav(int i) {
        return zzc(AnalyticsEvent.TYPE_TAG_TRANSACTION, i);
    }

    public static String zzaw(int i) {
        return zzc("&il", i);
    }

    public static String zzax(int i) {
        return zzc("il", i);
    }

    public static String zzay(int i) {
        return zzc("cd", i);
    }

    public static String zzaz(int i) {
        return zzc("cm", i);
    }

    private static String zzc(String str, int i) {
        if (i < 1) {
            zztc.zzf("index out of range for prefix", str);
            return "";
        }
        return new StringBuilder(String.valueOf(str).length() + 11).append(str).append(i).toString();
    }
}
