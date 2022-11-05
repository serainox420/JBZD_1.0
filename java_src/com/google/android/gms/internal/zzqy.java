package com.google.android.gms.internal;

import android.content.Context;
import java.util.concurrent.Callable;
@zzme
/* loaded from: classes.dex */
public class zzqy {
    public zzqw zza(final Context context, final zzeg zzegVar, final boolean z, final boolean z2, final zzaw zzawVar, final zzqh zzqhVar) {
        return (zzqw) zzqb.zzb(new Callable<zzqw>() { // from class: com.google.android.gms.internal.zzqy.1
            @Override // java.util.concurrent.Callable
            /* renamed from: zzma */
            public zzqw call() {
                return zzqy.this.zza(context, zzegVar, z, z2, zzawVar, zzqhVar, null, null, null);
            }
        });
    }

    public zzqw zza(final Context context, final zzeg zzegVar, final boolean z, final boolean z2, final zzaw zzawVar, final zzqh zzqhVar, final zzgl zzglVar, final com.google.android.gms.ads.internal.zzu zzuVar, final com.google.android.gms.ads.internal.zze zzeVar) {
        return (zzqw) zzqb.zzb(new Callable<zzqw>(this) { // from class: com.google.android.gms.internal.zzqy.2
            @Override // java.util.concurrent.Callable
            /* renamed from: zzma */
            public zzqw call() {
                zzqz zzqzVar = new zzqz(zzra.zzb(context, zzegVar, z, z2, zzawVar, zzqhVar, zzglVar, zzuVar, zzeVar));
                zzqzVar.setWebViewClient(com.google.android.gms.ads.internal.zzw.zzcO().zzb(zzqzVar, z2));
                zzqzVar.setWebChromeClient(com.google.android.gms.ads.internal.zzw.zzcO().zzn(zzqzVar));
                return zzqzVar;
            }
        });
    }
}
