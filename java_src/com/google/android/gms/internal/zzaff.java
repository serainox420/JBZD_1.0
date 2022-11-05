package com.google.android.gms.internal;

import android.text.TextUtils;
import java.util.TimeZone;
/* loaded from: classes.dex */
public class zzaff {
    private final zzbxi zzaJC;

    public zzaff(zzbxi zzbxiVar) {
        this.zzaJC = (zzbxi) com.google.android.gms.common.internal.zzac.zzw(zzbxiVar);
    }

    public static zzaff zza(int i, TimeZone timeZone, long j, long j2) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zzax(i != 1);
        com.google.android.gms.common.internal.zzac.zzw(timeZone);
        com.google.android.gms.common.internal.zzac.zzax(j >= 0);
        com.google.android.gms.common.internal.zzac.zzax(j <= 86400000);
        com.google.android.gms.common.internal.zzac.zzax(j2 >= 0);
        com.google.android.gms.common.internal.zzac.zzax(j2 <= 86400000);
        if (j > j2) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        return new zzaff(zzb(i, timeZone, j, j2));
    }

    private static zzbxi zzb(int i, TimeZone timeZone, long j, long j2) {
        zzbxi zzbxiVar = new zzbxi();
        zzbxiVar.zzcsS = i;
        if (timeZone != null && !TextUtils.isEmpty(timeZone.getID())) {
            zzbxiVar.zzcut = timeZone.getID();
        }
        zzbxiVar.zzaKx = j;
        zzbxiVar.zzcuu = j2;
        return zzbxiVar;
    }

    public static zzaff zzg(long j, long j2) {
        boolean z = false;
        com.google.android.gms.common.internal.zzac.zzax(j >= 0);
        com.google.android.gms.common.internal.zzac.zzax(j2 >= 0);
        if (j <= j2) {
            z = true;
        }
        com.google.android.gms.common.internal.zzac.zzax(z);
        return new zzaff(zzb(1, null, j, j2));
    }

    public zzbxi zzAf() {
        return this.zzaJC;
    }
}
