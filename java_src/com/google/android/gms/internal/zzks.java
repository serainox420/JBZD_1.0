package com.google.android.gms.internal;

import com.pubmatic.sdk.banner.mraid.Consts;
import java.util.Map;
@zzme
/* loaded from: classes.dex */
public class zzks {
    private final zzqw zzIs;
    private final boolean zzMm;
    private final String zzMn;

    public zzks(zzqw zzqwVar, Map<String, String> map) {
        this.zzIs = zzqwVar;
        this.zzMn = map.get(Consts.OrientationPpropertiesForceOrientation);
        if (map.containsKey(Consts.OrientationPpropertiesAllowOrientationChange)) {
            this.zzMm = Boolean.parseBoolean(map.get(Consts.OrientationPpropertiesAllowOrientationChange));
        } else {
            this.zzMm = true;
        }
    }

    public void execute() {
        if (this.zzIs == null) {
            zzpk.zzbh("AdWebView is null");
        } else {
            this.zzIs.setRequestedOrientation("portrait".equalsIgnoreCase(this.zzMn) ? com.google.android.gms.ads.internal.zzw.zzcO().zzkR() : "landscape".equalsIgnoreCase(this.zzMn) ? com.google.android.gms.ads.internal.zzw.zzcO().zzkQ() : this.zzMm ? -1 : com.google.android.gms.ads.internal.zzw.zzcO().zzkS());
        }
    }
}
