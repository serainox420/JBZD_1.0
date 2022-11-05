package com.google.android.gms.internal;

import java.util.Map;
@zzme
/* loaded from: classes.dex */
public class zzig implements zzid {
    private final zzih zzIm;

    public zzig(zzih zzihVar) {
        this.zzIm = zzihVar;
    }

    @Override // com.google.android.gms.internal.zzid
    public void zza(zzqw zzqwVar, Map<String, String> map) {
        float f;
        boolean equals = "1".equals(map.get("transparentBackground"));
        boolean equals2 = "1".equals(map.get("blur"));
        try {
        } catch (NumberFormatException e) {
            zzpk.zzb("Fail to parse float", e);
        }
        if (map.get("blurRadius") != null) {
            f = Float.parseFloat(map.get("blurRadius"));
            this.zzIm.zzg(equals);
            this.zzIm.zza(equals2, f);
        }
        f = 0.0f;
        this.zzIm.zzg(equals);
        this.zzIm.zza(equals2, f);
    }
}
