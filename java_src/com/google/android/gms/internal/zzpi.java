package com.google.android.gms.internal;

import android.content.Context;
import android.text.TextUtils;
import com.inmobi.commons.analytics.iat.impl.AdTrackerConstants;
import java.math.BigInteger;
import java.util.Locale;
@zzme
/* loaded from: classes.dex */
public final class zzpi {
    private static String zzXg;
    private static final Object zztX = new Object();

    public static String zzc(Context context, String str, String str2) {
        String str3;
        synchronized (zztX) {
            if (zzXg == null && !TextUtils.isEmpty(str)) {
                zzd(context, str, str2);
            }
            str3 = zzXg;
        }
        return str3;
    }

    private static void zzd(Context context, String str, String str2) {
        try {
            ClassLoader classLoader = context.createPackageContext(str2, 3).getClassLoader();
            Class<?> cls = Class.forName("com.google.ads.mediation.MediationAdapter", false, classLoader);
            BigInteger bigInteger = new BigInteger(new byte[1]);
            String[] split = str.split(",");
            BigInteger bigInteger2 = bigInteger;
            for (int i = 0; i < split.length; i++) {
                if (com.google.android.gms.ads.internal.zzw.zzcM().zza(classLoader, cls, split[i])) {
                    bigInteger2 = bigInteger2.setBit(i);
                }
            }
            zzXg = String.format(Locale.US, "%X", bigInteger2);
        } catch (Throwable th) {
            zzXg = AdTrackerConstants.ERROR;
        }
    }

    public static String zzkF() {
        String str;
        synchronized (zztX) {
            str = zzXg;
        }
        return str;
    }
}
