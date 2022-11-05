package com.google.android.gms.internal;

import com.facebook.internal.AnalyticsEvents;
import com.google.android.gms.internal.zzbop;
import com.google.android.gms.internal.zzbro;
import java.util.List;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
/* loaded from: classes2.dex */
enum zzbpg implements zzbpi {
    INSTANCE;

    @Override // com.google.android.gms.internal.zzbpi
    public zzbop zza(zzbpa zzbpaVar, zzbol zzbolVar, zzbon zzbonVar, zzbop.zza zzaVar) {
        return new zzboq(zzbpaVar.zzYy(), zzbonVar, zzaVar);
    }

    @Override // com.google.android.gms.internal.zzbpi
    public zzbow zza(ScheduledExecutorService scheduledExecutorService) {
        throw new RuntimeException("Authentication is not implemented yet");
    }

    @Override // com.google.android.gms.internal.zzbpi
    public zzbpe zza(zzbpa zzbpaVar) {
        return new zzbpu(Executors.defaultThreadFactory(), zzbpt.zzcgl);
    }

    @Override // com.google.android.gms.internal.zzbpi
    public zzbql zza(zzbpa zzbpaVar, String str) {
        return null;
    }

    @Override // com.google.android.gms.internal.zzbpi
    public zzbro zza(zzbpa zzbpaVar, zzbro.zza zzaVar, List<String> list) {
        return new zzbrm(zzaVar, list);
    }

    @Override // com.google.android.gms.internal.zzbpi
    public zzbpm zzb(zzbpa zzbpaVar) {
        final zzbrn zziV = zzbpaVar.zziV("RunLoop");
        return new zzbsy(this) { // from class: com.google.android.gms.internal.zzbpg.1
            @Override // com.google.android.gms.internal.zzbsy
            public void zzj(Throwable th) {
                zziV.zzd(zzbsy.zzl(th), th);
            }
        };
    }

    @Override // com.google.android.gms.internal.zzbpi
    public String zzc(zzbpa zzbpaVar) {
        String property = System.getProperty("java.vm.name", "Unknown JVM");
        String property2 = System.getProperty("java.specification.version", AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN);
        return new StringBuilder(String.valueOf(property2).length() + 1 + String.valueOf(property).length()).append(property2).append("/").append(property).toString();
    }
}
