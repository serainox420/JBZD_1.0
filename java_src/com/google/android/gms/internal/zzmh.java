package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.internal.zzmi;
@zzme
/* loaded from: classes.dex */
public final class zzmh {

    /* loaded from: classes2.dex */
    public interface zza {
        void zza(zzmn zzmnVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface zzb {
        boolean zza(zzqh zzqhVar);
    }

    public static zzpq zza(final Context context, zzqh zzqhVar, zzqp<zzmk> zzqpVar, zza zzaVar) {
        return zza(context, zzqhVar, zzqpVar, zzaVar, new zzb() { // from class: com.google.android.gms.internal.zzmh.1
            @Override // com.google.android.gms.internal.zzmh.zzb
            public boolean zza(zzqh zzqhVar2) {
                return zzqhVar2.zzYY || (com.google.android.gms.common.util.zzj.zzbb(context) && !zzgd.zzBU.get().booleanValue());
            }
        });
    }

    static zzpq zza(Context context, zzqh zzqhVar, zzqp<zzmk> zzqpVar, zza zzaVar, zzb zzbVar) {
        return zzbVar.zza(zzqhVar) ? zza(context, zzqpVar, zzaVar) : zzb(context, zzqhVar, zzqpVar, zzaVar);
    }

    private static zzpq zza(Context context, zzqp<zzmk> zzqpVar, zza zzaVar) {
        zzpk.zzbf("Fetching ad response from local ad request service.");
        zzmi.zza zzaVar2 = new zzmi.zza(context, zzqpVar, zzaVar);
        zzaVar2.zziP();
        return zzaVar2;
    }

    private static zzpq zzb(Context context, zzqh zzqhVar, zzqp<zzmk> zzqpVar, zza zzaVar) {
        zzpk.zzbf("Fetching ad response from remote ad request service.");
        if (!zzel.zzeT().zzaf(context)) {
            zzpk.zzbh("Failed to connect to remote ad request service.");
            return null;
        }
        return new zzmi.zzb(context, zzqhVar, zzqpVar, zzaVar);
    }
}
