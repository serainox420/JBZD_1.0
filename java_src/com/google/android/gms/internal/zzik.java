package com.google.android.gms.internal;

import com.openx.view.mraid.JSInterface;
import java.util.Map;
@zzme
/* loaded from: classes.dex */
public class zzik implements zzid {
    static final Map<String, Integer> zzIq = com.google.android.gms.common.util.zzf.zza("resize", 1, JSInterface.ACTION_PLAY_VIDEO, 2, "storePicture", 3, JSInterface.ACTION_CREATE_CALENDAR_EVENT, 4, "setOrientationProperties", 5, "closeResizedAd", 6);
    private final com.google.android.gms.ads.internal.zzf zzIo;
    private final zzkr zzIp;

    public zzik(com.google.android.gms.ads.internal.zzf zzfVar, zzkr zzkrVar) {
        this.zzIo = zzfVar;
        this.zzIp = zzkrVar;
    }

    @Override // com.google.android.gms.internal.zzid
    public void zza(zzqw zzqwVar, Map<String, String> map) {
        int intValue = zzIq.get(map.get("a")).intValue();
        if (intValue != 5 && this.zzIo != null && !this.zzIo.zzcd()) {
            this.zzIo.zzx(null);
            return;
        }
        switch (intValue) {
            case 1:
                this.zzIp.execute(map);
                return;
            case 2:
            default:
                zzpk.zzbg("Unknown MRAID command called.");
                return;
            case 3:
                new zzkt(zzqwVar, map).execute();
                return;
            case 4:
                new zzkq(zzqwVar, map).execute();
                return;
            case 5:
                new zzks(zzqwVar, map).execute();
                return;
            case 6:
                this.zzIp.zzs(true);
                return;
        }
    }
}
