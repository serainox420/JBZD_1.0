package com.google.android.gms.ads.internal.purchase;

import android.content.Intent;
import com.google.android.gms.ads.internal.zzw;
import com.google.android.gms.internal.zzme;
import com.google.android.gms.internal.zzpk;
@zzme
/* loaded from: classes.dex */
public class zzk {
    private final String zzAs;

    public zzk(String str) {
        this.zzAs = str;
    }

    public boolean zza(String str, int i, Intent intent) {
        if (str == null || intent == null) {
            return false;
        }
        String zze = zzw.zzda().zze(intent);
        String zzf = zzw.zzda().zzf(intent);
        if (zze == null || zzf == null) {
            return false;
        }
        if (!str.equals(zzw.zzda().zzaE(zze))) {
            zzpk.zzbh("Developer payload not match.");
            return false;
        } else if (this.zzAs == null || zzl.zzb(this.zzAs, zze, zzf)) {
            return true;
        } else {
            zzpk.zzbh("Fail to verify signature.");
            return false;
        }
    }

    public String zziM() {
        return zzw.zzcM().zzkM();
    }
}
