package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.internal.zzni;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
@zzme
/* loaded from: classes.dex */
public final class zznj {
    private WeakHashMap<Context, zza> zzVb = new WeakHashMap<>();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zza {
        public final long zzVd = com.google.android.gms.ads.internal.zzw.zzcS().currentTimeMillis();
        public final zzni zzVe;

        public zza(zznj zznjVar, zzni zzniVar) {
            this.zzVe = zzniVar;
        }

        public boolean hasExpired() {
            return zzgd.zzDw.get().longValue() + this.zzVd < com.google.android.gms.ads.internal.zzw.zzcS().currentTimeMillis();
        }
    }

    public Future<zzni> zzA(final Context context) {
        return zzpn.zza(new Callable<zzni>() { // from class: com.google.android.gms.internal.zznj.1
            @Override // java.util.concurrent.Callable
            /* renamed from: zzjD */
            public zzni call() {
                zza zzaVar = (zza) zznj.this.zzVb.get(context);
                zzni zzjC = (zzaVar == null || zzaVar.hasExpired() || !zzgd.zzDv.get().booleanValue()) ? new zzni.zza(context).zzjC() : new zzni.zza(context, zzaVar.zzVe).zzjC();
                zznj.this.zzVb.put(context, new zza(zznj.this, zzjC));
                return zzjC;
            }
        });
    }
}
