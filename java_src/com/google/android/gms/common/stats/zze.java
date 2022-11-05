package com.google.android.gms.common.stats;

import android.content.Context;
import android.content.Intent;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.util.zzk;
import java.util.List;
/* loaded from: classes2.dex */
public class zze {
    private static zze zzaHQ = new zze();
    private static Boolean zzaHR;

    private static boolean zzaY(Context context) {
        if (zzaHR == null) {
            zzaHR = false;
        }
        return zzaHR.booleanValue();
    }

    public static zze zzyX() {
        return zzaHQ;
    }

    public void zza(Context context, String str, int i, String str2, String str3, String str4, int i2, List<String> list) {
        zza(context, str, i, str2, str3, str4, i2, list, 0L);
    }

    public void zza(Context context, String str, int i, String str2, String str3, String str4, int i2, List<String> list, long j) {
        if (!zzaY(context)) {
            return;
        }
        if (TextUtils.isEmpty(str)) {
            String valueOf = String.valueOf(str);
            Log.e("WakeLockTracker", valueOf.length() != 0 ? "missing wakeLock key. ".concat(valueOf) : new String("missing wakeLock key. "));
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        if (7 != i && 8 != i && 10 != i && 11 != i) {
            return;
        }
        try {
            context.startService(new Intent().setComponent(zzb.zzaHv).putExtra("com.google.android.gms.common.stats.EXTRA_LOG_EVENT", new WakeLockEvent(currentTimeMillis, i, str2, i2, zzc.zzB(list), str, SystemClock.elapsedRealtime(), zzk.zzbd(context), str3, zzc.zzdx(context.getPackageName()), zzk.zzbe(context), j, str4)));
        } catch (Exception e) {
            Log.wtf("WakeLockTracker", e);
        }
    }
}
