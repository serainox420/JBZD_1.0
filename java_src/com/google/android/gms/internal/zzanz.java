package com.google.android.gms.internal;

import com.google.android.gms.internal.zzaoa;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class zzanz {
    public static <DP, DT> String zza(DP dp, zzanv<DP, DT> zzanvVar) {
        double zzb;
        zzanw<DT> zzBY = zzanvVar.zzBY();
        if (!zzBY.zzdW(zzanvVar.zzC(dp))) {
            return null;
        }
        DT zzB = zzanvVar.zzB(dp);
        for (int i = 0; i < zzBY.zzD(zzB); i++) {
            String zzg = zzBY.zzg(zzB, i);
            if (zzanvVar.zzd(dp, i)) {
                double zze = zzBY.zze(zzB, i);
                if (zze == 1.0d) {
                    zzb = zzanvVar.zzc(dp, i);
                } else if (zze == 2.0d) {
                    zzb = zzanvVar.zzb(dp, i);
                } else {
                    continue;
                }
                zzaoa.zza zzej = zzaoa.zzCI().zzej(zzg);
                if (zzej != null && !zzej.zzg(zzb)) {
                    return "Field out of range";
                }
                zzaoa.zza zzK = zzaoa.zzCI().zzK(zzBY.zzE(zzB), zzg);
                if (zzK != null) {
                    long zza = zzanvVar.zza(dp, TimeUnit.NANOSECONDS);
                    if (zza == 0) {
                        if (zzb != 0.0d) {
                            return "DataPoint out of range";
                        }
                        return null;
                    } else if (!zzK.zzg(zzb / zza)) {
                        return "DataPoint out of range";
                    }
                } else {
                    continue;
                }
            } else if (!zzBY.zzf(zzB, i) && !zzaoa.zzaUw.contains(zzg)) {
                return String.valueOf(zzg).concat(" not set");
            }
        }
        return null;
    }
}
