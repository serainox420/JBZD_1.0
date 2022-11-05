package com.google.android.gms.internal;

import java.util.Map;
@zzme
/* loaded from: classes.dex */
public final class zzhy implements zzid {
    private final zzhz zzHC;

    public zzhy(zzhz zzhzVar) {
        this.zzHC = zzhzVar;
    }

    @Override // com.google.android.gms.internal.zzid
    public void zza(zzqw zzqwVar, Map<String, String> map) {
        String str = map.get("name");
        if (str == null) {
            zzpk.zzbh("App event with no name parameter.");
        } else {
            this.zzHC.onAppEvent(str, map.get("info"));
        }
    }
}
