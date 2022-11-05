package com.google.android.gms.internal;

import android.os.Process;
import com.google.android.gms.internal.zzb;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes2.dex */
public class zzc extends Thread {
    private static final boolean DEBUG = zzt.DEBUG;
    private final BlockingQueue<zzl<?>> zzg;
    private final BlockingQueue<zzl<?>> zzh;
    private final zzb zzi;
    private final zzo zzj;
    private volatile boolean zzk = false;

    public zzc(BlockingQueue<zzl<?>> blockingQueue, BlockingQueue<zzl<?>> blockingQueue2, zzb zzbVar, zzo zzoVar) {
        this.zzg = blockingQueue;
        this.zzh = blockingQueue2;
        this.zzi = zzbVar;
        this.zzj = zzoVar;
    }

    public void quit() {
        this.zzk = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        if (DEBUG) {
            zzt.zza("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.zzi.initialize();
        while (true) {
            try {
                final zzl<?> take = this.zzg.take();
                take.zzc("cache-queue-take");
                zzb.zza zza = this.zzi.zza(take.zzg());
                if (zza == null) {
                    take.zzc("cache-miss");
                    this.zzh.put(take);
                } else if (zza.zza()) {
                    take.zzc("cache-hit-expired");
                    take.zza(zza);
                    this.zzh.put(take);
                } else {
                    take.zzc("cache-hit");
                    zzn<?> zza2 = take.zza(new zzj(zza.data, zza.zzf));
                    take.zzc("cache-hit-parsed");
                    if (!zza.zzb()) {
                        this.zzj.zza(take, zza2);
                    } else {
                        take.zzc("cache-hit-refresh-needed");
                        take.zza(zza);
                        zza2.zzah = true;
                        this.zzj.zza(take, zza2, new Runnable() { // from class: com.google.android.gms.internal.zzc.1
                            @Override // java.lang.Runnable
                            public void run() {
                                try {
                                    zzc.this.zzh.put(take);
                                } catch (InterruptedException e) {
                                }
                            }
                        });
                    }
                }
            } catch (InterruptedException e) {
                if (this.zzk) {
                    return;
                }
            }
        }
    }
}
