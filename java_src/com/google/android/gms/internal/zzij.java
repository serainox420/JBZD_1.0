package com.google.android.gms.internal;

import java.util.Map;
@zzme
/* loaded from: classes.dex */
public class zzij implements zzid {
    @Override // com.google.android.gms.internal.zzid
    public void zza(zzqw zzqwVar, Map<String, String> map) {
        if (!com.google.android.gms.ads.internal.zzw.zzdl().zzjQ()) {
            return;
        }
        int i = -1;
        try {
            i = Integer.parseInt(map.get("eventType"));
        } catch (Exception e) {
            zzpk.zzb("Parse Scion log event type error", e);
        }
        String str = map.get("eventId");
        switch (i) {
            case 0:
                com.google.android.gms.ads.internal.zzw.zzdl().zzf(zzqwVar.getContext(), str);
                return;
            case 1:
                com.google.android.gms.ads.internal.zzw.zzdl().zzg(zzqwVar.getContext(), str);
                return;
            case 2:
                com.google.android.gms.ads.internal.zzw.zzdl().zzi(zzqwVar.getContext(), str);
                return;
            default:
                return;
        }
    }
}
