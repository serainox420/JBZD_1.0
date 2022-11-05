package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.zzaj;
import com.google.android.gms.internal.zzak;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzal {
    private static void zza(DataLayer dataLayer, zzaj.zzd zzdVar) {
        for (zzak.zza zzaVar : zzdVar.zzkA) {
            dataLayer.zzha(zzdl.zze(zzaVar));
        }
    }

    public static void zza(DataLayer dataLayer, zzaj.zzi zziVar) {
        if (zziVar.zzlp == null) {
            zzbo.zzbh("supplemental missing experimentSupplemental");
            return;
        }
        zza(dataLayer, zziVar.zzlp);
        zzb(dataLayer, zziVar.zzlp);
        zzc(dataLayer, zziVar.zzlp);
    }

    private static void zzb(DataLayer dataLayer, zzaj.zzd zzdVar) {
        for (zzak.zza zzaVar : zzdVar.zzkz) {
            Map<String, Object> zzc = zzc(zzaVar);
            if (zzc != null) {
                dataLayer.push(zzc);
            }
        }
    }

    private static Map<String, Object> zzc(zzak.zza zzaVar) {
        Object zzj = zzdl.zzj(zzaVar);
        if (!(zzj instanceof Map)) {
            String valueOf = String.valueOf(zzj);
            zzbo.zzbh(new StringBuilder(String.valueOf(valueOf).length() + 36).append("value: ").append(valueOf).append(" is not a map value, ignored.").toString());
            return null;
        }
        return (Map) zzj;
    }

    private static void zzc(DataLayer dataLayer, zzaj.zzd zzdVar) {
        zzaj.zzc[] zzcVarArr;
        for (zzaj.zzc zzcVar : zzdVar.zzkB) {
            if (zzcVar.zzaB == null) {
                zzbo.zzbh("GaExperimentRandom: No key");
            } else {
                Object obj = dataLayer.get(zzcVar.zzaB);
                Long valueOf = !(obj instanceof Number) ? null : Long.valueOf(((Number) obj).longValue());
                long j = zzcVar.zzkv;
                long j2 = zzcVar.zzkw;
                if (!zzcVar.zzkx || valueOf == null || valueOf.longValue() < j || valueOf.longValue() > j2) {
                    if (j <= j2) {
                        obj = Long.valueOf(Math.round((Math.random() * (j2 - j)) + j));
                    } else {
                        zzbo.zzbh("GaExperimentRandom: random range invalid");
                    }
                }
                dataLayer.zzha(zzcVar.zzaB);
                Map<String, Object> zzo = dataLayer.zzo(zzcVar.zzaB, obj);
                if (zzcVar.zzky > 0) {
                    if (!zzo.containsKey("gtm")) {
                        zzo.put("gtm", DataLayer.mapOf("lifetime", Long.valueOf(zzcVar.zzky)));
                    } else {
                        Object obj2 = zzo.get("gtm");
                        if (obj2 instanceof Map) {
                            ((Map) obj2).put("lifetime", Long.valueOf(zzcVar.zzky));
                        } else {
                            zzbo.zzbh("GaExperimentRandom: gtm not a map");
                        }
                    }
                }
                dataLayer.push(zzo);
            }
        }
    }
}
