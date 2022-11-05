package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
@zzme
/* loaded from: classes.dex */
public class zzjx implements zzjp {
    private final Context mContext;
    private final zzjr zzKY;
    private final boolean zzLa;
    private final zzmk zzLo;
    private final long zzLp;
    private final long zzLq;
    private final int zzLr;
    private final zzka zzsz;
    private final boolean zzwf;
    private final Object zzrJ = new Object();
    private boolean zzLs = false;
    private final Map<zzqm<zzjv>, zzju> zzLt = new HashMap();
    private List<zzjv> zzLu = new ArrayList();

    public zzjx(Context context, zzmk zzmkVar, zzka zzkaVar, zzjr zzjrVar, boolean z, boolean z2, long j, long j2, int i) {
        this.mContext = context;
        this.zzLo = zzmkVar;
        this.zzsz = zzkaVar;
        this.zzKY = zzjrVar;
        this.zzwf = z;
        this.zzLa = z2;
        this.zzLp = j;
        this.zzLq = j2;
        this.zzLr = i;
    }

    private void zza(final zzqm<zzjv> zzqmVar) {
        zzpo.zzXC.post(new Runnable() { // from class: com.google.android.gms.internal.zzjx.2
            @Override // java.lang.Runnable
            public void run() {
                for (zzqm zzqmVar2 : zzjx.this.zzLt.keySet()) {
                    if (zzqmVar2 != zzqmVar) {
                        ((zzju) zzjx.this.zzLt.get(zzqmVar2)).cancel();
                    }
                }
            }
        });
    }

    private zzjv zze(List<zzqm<zzjv>> list) {
        synchronized (this.zzrJ) {
            if (this.zzLs) {
                return new zzjv(-1);
            }
            for (zzqm<zzjv> zzqmVar : list) {
                try {
                    zzjv zzjvVar = zzqmVar.get();
                    this.zzLu.add(zzjvVar);
                    if (zzjvVar != null && zzjvVar.zzLh == 0) {
                        zza(zzqmVar);
                        return zzjvVar;
                    }
                } catch (InterruptedException | ExecutionException e) {
                    zzpk.zzc("Exception while processing an adapter; continuing with other adapters", e);
                }
            }
            zza((zzqm<zzjv>) null);
            return new zzjv(1);
        }
    }

    private zzjv zzf(List<zzqm<zzjv>> list) {
        zzjv zzjvVar;
        zzjv zzjvVar2;
        zzqm<zzjv> zzqmVar;
        int i;
        zzkd zzkdVar;
        synchronized (this.zzrJ) {
            if (this.zzLs) {
                return new zzjv(-1);
            }
            int i2 = -1;
            zzqm<zzjv> zzqmVar2 = null;
            zzjv zzjvVar3 = null;
            long j = this.zzKY.zzKP != -1 ? this.zzKY.zzKP : NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS;
            Iterator<zzqm<zzjv>> it = list.iterator();
            while (true) {
                long j2 = j;
                if (!it.hasNext()) {
                    break;
                }
                zzqm<zzjv> next = it.next();
                long currentTimeMillis = com.google.android.gms.ads.internal.zzw.zzcS().currentTimeMillis();
                if (j2 == 0) {
                    try {
                        try {
                        } finally {
                            Math.max(j2 - (com.google.android.gms.ads.internal.zzw.zzcS().currentTimeMillis() - currentTimeMillis), 0L);
                        }
                    } catch (RemoteException | InterruptedException | ExecutionException | TimeoutException e) {
                        zzpk.zzc("Exception while processing an adapter; continuing with other adapters", e);
                    }
                    if (next.isDone()) {
                        zzjvVar = next.get();
                        this.zzLu.add(zzjvVar);
                        if (zzjvVar != null || zzjvVar.zzLh != 0 || (zzkdVar = zzjvVar.zzLm) == null || zzkdVar.zzha() <= i2) {
                            zzjvVar2 = zzjvVar3;
                            zzqmVar = zzqmVar2;
                            i = i2;
                        } else {
                            i = zzkdVar.zzha();
                            zzjv zzjvVar4 = zzjvVar;
                            zzqmVar = next;
                            zzjvVar2 = zzjvVar4;
                        }
                        zzqmVar2 = zzqmVar;
                        zzjv zzjvVar5 = zzjvVar2;
                        j = Math.max(j2 - (com.google.android.gms.ads.internal.zzw.zzcS().currentTimeMillis() - currentTimeMillis), 0L);
                        i2 = i;
                        zzjvVar3 = zzjvVar5;
                    }
                }
                zzjvVar = next.get(j2, TimeUnit.MILLISECONDS);
                this.zzLu.add(zzjvVar);
                if (zzjvVar != null) {
                }
                zzjvVar2 = zzjvVar3;
                zzqmVar = zzqmVar2;
                i = i2;
                zzqmVar2 = zzqmVar;
                zzjv zzjvVar52 = zzjvVar2;
                j = Math.max(j2 - (com.google.android.gms.ads.internal.zzw.zzcS().currentTimeMillis() - currentTimeMillis), 0L);
                i2 = i;
                zzjvVar3 = zzjvVar52;
            }
            zza(zzqmVar2);
            return zzjvVar3 == null ? new zzjv(1) : zzjvVar3;
        }
    }

    @Override // com.google.android.gms.internal.zzjp
    public void cancel() {
        synchronized (this.zzrJ) {
            this.zzLs = true;
            for (zzju zzjuVar : this.zzLt.values()) {
                zzjuVar.cancel();
            }
        }
    }

    @Override // com.google.android.gms.internal.zzjp
    public zzjv zzd(List<zzjq> list) {
        zzpk.zzbf("Starting mediation.");
        ExecutorService newCachedThreadPool = Executors.newCachedThreadPool();
        ArrayList arrayList = new ArrayList();
        for (zzjq zzjqVar : list) {
            String valueOf = String.valueOf(zzjqVar.zzKo);
            zzpk.zzbg(valueOf.length() != 0 ? "Trying mediation network: ".concat(valueOf) : new String("Trying mediation network: "));
            for (String str : zzjqVar.zzKp) {
                final zzju zzjuVar = new zzju(this.mContext, str, this.zzsz, this.zzKY, zzjqVar, this.zzLo.zzRy, this.zzLo.zzvr, this.zzLo.zzvn, this.zzwf, this.zzLa, this.zzLo.zzvF, this.zzLo.zzvK);
                zzqm<zzjv> zza = zzpn.zza(newCachedThreadPool, new Callable<zzjv>() { // from class: com.google.android.gms.internal.zzjx.1
                    @Override // java.util.concurrent.Callable
                    /* renamed from: zzhb */
                    public zzjv call() throws Exception {
                        synchronized (zzjx.this.zzrJ) {
                            if (zzjx.this.zzLs) {
                                return null;
                            }
                            return zzjuVar.zza(zzjx.this.zzLp, zzjx.this.zzLq);
                        }
                    }
                });
                this.zzLt.put(zza, zzjuVar);
                arrayList.add(zza);
            }
        }
        switch (this.zzLr) {
            case 2:
                return zzf(arrayList);
            default:
                return zze(arrayList);
        }
    }

    @Override // com.google.android.gms.internal.zzjp
    public List<zzjv> zzgU() {
        return this.zzLu;
    }
}
