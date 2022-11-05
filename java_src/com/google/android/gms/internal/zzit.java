package com.google.android.gms.internal;

import java.util.Map;
@zzme
/* loaded from: classes.dex */
public class zzit implements zzid {
    @Override // com.google.android.gms.internal.zzid
    public void zza(zzqw zzqwVar, Map<String, String> map) {
        int i;
        zzir zzdj = com.google.android.gms.ads.internal.zzw.zzdj();
        if (map.containsKey("abort")) {
            if (zzdj.zze(zzqwVar)) {
                return;
            }
            zzpk.zzbh("Precache abort but no preload task running.");
            return;
        }
        String str = map.get("src");
        if (str == null) {
            zzpk.zzbh("Precache video action is missing the src parameter.");
            return;
        }
        try {
            i = Integer.parseInt(map.get("player"));
        } catch (NumberFormatException e) {
            i = 0;
        }
        String str2 = map.containsKey("mimetype") ? map.get("mimetype") : "";
        if (zzdj.zzf(zzqwVar)) {
            zzpk.zzbh("Precache task already running.");
            return;
        }
        com.google.android.gms.common.internal.zzc.zzt(zzqwVar.zzby());
        new zziq(zzqwVar, zzqwVar.zzby().zzsM.zza(zzqwVar, i, str2), str).zziP();
    }
}
