package com.google.android.gms.common.util;

import android.os.Build;
import com.pubmatic.sdk.common.mocean.MoceanAdRequest;
/* loaded from: classes.dex */
public final class zzt {
    public static boolean isAtLeastN() {
        return Build.VERSION.SDK_INT >= 24;
    }

    public static boolean zzze() {
        int i = Build.VERSION.SDK_INT;
        return true;
    }

    public static boolean zzzf() {
        int i = Build.VERSION.SDK_INT;
        return true;
    }

    public static boolean zzzg() {
        int i = Build.VERSION.SDK_INT;
        return true;
    }

    public static boolean zzzh() {
        return Build.VERSION.SDK_INT >= 15;
    }

    public static boolean zzzi() {
        return Build.VERSION.SDK_INT >= 16;
    }

    public static boolean zzzj() {
        return Build.VERSION.SDK_INT >= 17;
    }

    public static boolean zzzk() {
        return Build.VERSION.SDK_INT >= 18;
    }

    public static boolean zzzl() {
        return Build.VERSION.SDK_INT >= 19;
    }

    public static boolean zzzm() {
        return Build.VERSION.SDK_INT >= 20;
    }

    @Deprecated
    public static boolean zzzn() {
        return zzzo();
    }

    public static boolean zzzo() {
        return Build.VERSION.SDK_INT >= 21;
    }

    public static boolean zzzp() {
        return Build.VERSION.SDK_INT >= 23;
    }

    public static boolean zzzq() {
        return Build.VERSION.SDK_INT > 25 || MoceanAdRequest.GENDER_OTHER.equals(Build.VERSION.CODENAME) || Build.VERSION.CODENAME.startsWith("OMR");
    }
}
