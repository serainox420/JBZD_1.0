package com.google.android.gms.internal;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.util.Random;
/* loaded from: classes2.dex */
public class zzbbd {
    private final Context mContext;
    private final String zzbEU;
    private final Random zzzW;

    public zzbbd(Context context, String str) {
        this(context, str, new Random());
    }

    zzbbd(Context context, String str, Random random) {
        this.mContext = (Context) com.google.android.gms.common.internal.zzac.zzw(context);
        this.zzbEU = (String) com.google.android.gms.common.internal.zzac.zzw(str);
        this.zzzW = random;
    }

    private SharedPreferences zzQu() {
        Context context = this.mContext;
        String valueOf = String.valueOf("v5_gtmContainerRefreshPolicy_");
        String valueOf2 = String.valueOf(this.zzbEU);
        return context.getSharedPreferences(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf), 0);
    }

    private long zzi(long j, long j2) {
        SharedPreferences zzQu = zzQu();
        long max = Math.max(0L, zzQu.getLong("FORBIDDEN_COUNT", 0L));
        return ((float) (((((float) max) / ((float) ((Math.max(0L, zzQu.getLong("SUCCESSFUL_COUNT", 0L)) + max) + 1))) * ((float) (j2 - j))) + j)) * this.zzzW.nextFloat();
    }

    public long zzQq() {
        return 43200000 + zzi(7200000L, 259200000L);
    }

    public long zzQr() {
        return 3600000 + zzi(600000L, 86400000L);
    }

    @SuppressLint({"CommitPrefEdits"})
    public void zzQs() {
        SharedPreferences zzQu = zzQu();
        long j = zzQu.getLong("FORBIDDEN_COUNT", 0L);
        long j2 = zzQu.getLong("SUCCESSFUL_COUNT", 0L);
        SharedPreferences.Editor edit = zzQu.edit();
        long min = j == 0 ? 3L : Math.min(10L, 1 + j);
        long max = Math.max(0L, Math.min(j2, 10 - min));
        edit.putLong("FORBIDDEN_COUNT", min);
        edit.putLong("SUCCESSFUL_COUNT", max);
        zzbch.zza(edit);
    }

    @SuppressLint({"CommitPrefEdits"})
    public void zzQt() {
        SharedPreferences zzQu = zzQu();
        long j = zzQu.getLong("SUCCESSFUL_COUNT", 0L);
        long j2 = zzQu.getLong("FORBIDDEN_COUNT", 0L);
        long min = Math.min(10L, j + 1);
        long max = Math.max(0L, Math.min(j2, 10 - min));
        SharedPreferences.Editor edit = zzQu.edit();
        edit.putLong("SUCCESSFUL_COUNT", min);
        edit.putLong("FORBIDDEN_COUNT", max);
        zzbch.zza(edit);
    }

    public long zzRS() {
        if (Math.max(0L, zzQu().getLong("FORBIDDEN_COUNT", 0L)) == 0) {
            return 0L;
        }
        return zzi(NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS, 600000L) + NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS;
    }

    public boolean zzRT() {
        return Math.max(0L, zzQu().getLong("FORBIDDEN_COUNT", 0L)) > 0;
    }
}
