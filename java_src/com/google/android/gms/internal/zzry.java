package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes2.dex */
public class zzry extends zzsa {
    private final zzsi zzadG;

    public zzry(zzsc zzscVar, zzsd zzsdVar) {
        super(zzscVar);
        com.google.android.gms.common.internal.zzac.zzw(zzsdVar);
        this.zzadG = zzsdVar.zzj(zzscVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onServiceConnected() {
        zzmR();
        this.zzadG.onServiceConnected();
    }

    public void setLocalDispatchPeriod(final int i) {
        zzob();
        zzb("setLocalDispatchPeriod (sec)", Integer.valueOf(i));
        zznU().zzg(new Runnable() { // from class: com.google.android.gms.internal.zzry.1
            @Override // java.lang.Runnable
            public void run() {
                zzry.this.zzadG.zzx(i * 1000);
            }
        });
    }

    public void start() {
        this.zzadG.start();
    }

    public void zzW(final boolean z) {
        zza("Network connectivity status changed", Boolean.valueOf(z));
        zznU().zzg(new Runnable() { // from class: com.google.android.gms.internal.zzry.2
            @Override // java.lang.Runnable
            public void run() {
                zzry.this.zzadG.zzW(z);
            }
        });
    }

    public long zza(zzse zzseVar) {
        zzob();
        com.google.android.gms.common.internal.zzac.zzw(zzseVar);
        zzmR();
        long zza = this.zzadG.zza(zzseVar, true);
        if (zza == 0) {
            this.zzadG.zzc(zzseVar);
        }
        return zza;
    }

    public void zza(final zzsu zzsuVar) {
        zzob();
        zznU().zzg(new Runnable() { // from class: com.google.android.gms.internal.zzry.6
            @Override // java.lang.Runnable
            public void run() {
                zzry.this.zzadG.zzb(zzsuVar);
            }
        });
    }

    public void zza(final zzsz zzszVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzszVar);
        zzob();
        zzb("Hit delivery requested", zzszVar);
        zznU().zzg(new Runnable() { // from class: com.google.android.gms.internal.zzry.4
            @Override // java.lang.Runnable
            public void run() {
                zzry.this.zzadG.zza(zzszVar);
            }
        });
    }

    public void zza(final String str, final Runnable runnable) {
        com.google.android.gms.common.internal.zzac.zzh(str, "campaign param can't be empty");
        zznU().zzg(new Runnable() { // from class: com.google.android.gms.internal.zzry.3
            @Override // java.lang.Runnable
            public void run() {
                zzry.this.zzadG.zzbX(str);
                if (runnable != null) {
                    runnable.run();
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.zzsa
    protected void zzmS() {
        this.zzadG.initialize();
    }

    public void zznK() {
        zzob();
        zznU().zzg(new Runnable() { // from class: com.google.android.gms.internal.zzry.5
            @Override // java.lang.Runnable
            public void run() {
                zzry.this.zzadG.zznK();
            }
        });
    }

    public void zznL() {
        zzob();
        Context context = getContext();
        if (!zzth.zzak(context) || !zzti.zzal(context)) {
            zza((zzsu) null);
            return;
        }
        Intent intent = new Intent("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
        intent.setComponent(new ComponentName(context, "com.google.android.gms.analytics.AnalyticsService"));
        context.startService(intent);
    }

    public boolean zznM() {
        zzob();
        try {
            zznU().zzc(new Callable<Void>() { // from class: com.google.android.gms.internal.zzry.7
                @Override // java.util.concurrent.Callable
                /* renamed from: zzbk */
                public Void call() throws Exception {
                    zzry.this.zzadG.zzoG();
                    return null;
                }
            }).get(4L, TimeUnit.SECONDS);
            return true;
        } catch (InterruptedException e) {
            zzd("syncDispatchLocalHits interrupted", e);
            return false;
        } catch (ExecutionException e2) {
            zze("syncDispatchLocalHits failed", e2);
            return false;
        } catch (TimeoutException e3) {
            zzd("syncDispatchLocalHits timed out", e3);
            return false;
        }
    }

    public void zznN() {
        zzob();
        com.google.android.gms.analytics.zzh.zzmR();
        this.zzadG.zznN();
    }

    public void zznO() {
        zzbP("Radio powered up");
        zznL();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zznP() {
        zzmR();
        this.zzadG.zznP();
    }
}
