package com.google.android.gms.internal;

import android.util.Log;
@zzme
/* loaded from: classes.dex */
public final class zzpk extends zzqf {
    public static void v(String str) {
        if (zzkI()) {
            Log.v("Ads", str);
        }
    }

    public static boolean zzkH() {
        return zzgd.zzDr.get().booleanValue();
    }

    public static boolean zzkI() {
        return zzak(2) && zzkH();
    }
}
