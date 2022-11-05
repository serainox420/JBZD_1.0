package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.internal.zzjf;
import java.util.concurrent.Future;
@zzme
/* loaded from: classes.dex */
public class zzjg {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zza<JavascriptEngine> extends zzqj<JavascriptEngine> {
        JavascriptEngine zzJD;

        private zza() {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Type inference failed for: r0v0, types: [JavascriptEngine, com.google.android.gms.internal.zzjf, com.google.android.gms.internal.zzjh] */
    public zzjf zza(Context context, zzqh zzqhVar, final zza<zzjf> zzaVar, zzaw zzawVar, com.google.android.gms.ads.internal.zze zzeVar) {
        ?? zzjhVar = new zzjh(context, zzqhVar, zzawVar, zzeVar);
        zzaVar.zzJD = zzjhVar;
        zzjhVar.zza(new zzjf.zza(this) { // from class: com.google.android.gms.internal.zzjg.2
            @Override // com.google.android.gms.internal.zzjf.zza
            public void zzgN() {
                zzaVar.zzh((zzjf) zzaVar.zzJD);
            }
        });
        return zzjhVar;
    }

    public Future<zzjf> zza(final Context context, final zzqh zzqhVar, final String str, final zzaw zzawVar, final com.google.android.gms.ads.internal.zze zzeVar) {
        final zza zzaVar = new zza();
        zzpo.zzXC.post(new Runnable() { // from class: com.google.android.gms.internal.zzjg.1
            @Override // java.lang.Runnable
            public void run() {
                zzjg.this.zza(context, zzqhVar, zzaVar, zzawVar, zzeVar).zzan(str);
            }
        });
        return zzaVar;
    }
}
