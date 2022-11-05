package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2.dex */
public class zzm {
    private AtomicInteger zzX;
    private final Map<String, Queue<zzl<?>>> zzY;
    private final Set<zzl<?>> zzZ;
    private final PriorityBlockingQueue<zzl<?>> zzaa;
    private final PriorityBlockingQueue<zzl<?>> zzab;
    private zzh[] zzac;
    private zzc zzad;
    private List<Object> zzae;
    private final zzb zzi;
    private final zzo zzj;
    private final zzg zzy;

    public zzm(zzb zzbVar, zzg zzgVar) {
        this(zzbVar, zzgVar, 4);
    }

    public zzm(zzb zzbVar, zzg zzgVar, int i) {
        this(zzbVar, zzgVar, i, new zzf(new Handler(Looper.getMainLooper())));
    }

    public zzm(zzb zzbVar, zzg zzgVar, int i, zzo zzoVar) {
        this.zzX = new AtomicInteger();
        this.zzY = new HashMap();
        this.zzZ = new HashSet();
        this.zzaa = new PriorityBlockingQueue<>();
        this.zzab = new PriorityBlockingQueue<>();
        this.zzae = new ArrayList();
        this.zzi = zzbVar;
        this.zzy = zzgVar;
        this.zzac = new zzh[i];
        this.zzj = zzoVar;
    }

    public int getSequenceNumber() {
        return this.zzX.incrementAndGet();
    }

    public void start() {
        stop();
        this.zzad = new zzc(this.zzaa, this.zzab, this.zzi, this.zzj);
        this.zzad.start();
        for (int i = 0; i < this.zzac.length; i++) {
            zzh zzhVar = new zzh(this.zzab, this.zzy, this.zzi, this.zzj);
            this.zzac[i] = zzhVar;
            zzhVar.start();
        }
    }

    public void stop() {
        if (this.zzad != null) {
            this.zzad.quit();
        }
        for (int i = 0; i < this.zzac.length; i++) {
            if (this.zzac[i] != null) {
                this.zzac[i].quit();
            }
        }
    }

    public <T> zzl<T> zze(zzl<T> zzlVar) {
        zzlVar.zza(this);
        synchronized (this.zzZ) {
            this.zzZ.add(zzlVar);
        }
        zzlVar.zza(getSequenceNumber());
        zzlVar.zzc("add-to-queue");
        if (!zzlVar.zzn()) {
            this.zzab.add(zzlVar);
        } else {
            synchronized (this.zzY) {
                String zzg = zzlVar.zzg();
                if (this.zzY.containsKey(zzg)) {
                    Queue<zzl<?>> queue = this.zzY.get(zzg);
                    if (queue == null) {
                        queue = new LinkedList<>();
                    }
                    queue.add(zzlVar);
                    this.zzY.put(zzg, queue);
                    if (zzt.DEBUG) {
                        zzt.zza("Request for cacheKey=%s is in flight, putting on hold.", zzg);
                    }
                } else {
                    this.zzY.put(zzg, null);
                    this.zzaa.add(zzlVar);
                }
            }
        }
        return zzlVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <T> void zzf(zzl<T> zzlVar) {
        synchronized (this.zzZ) {
            this.zzZ.remove(zzlVar);
        }
        synchronized (this.zzae) {
            Iterator<Object> it = this.zzae.iterator();
            while (it.hasNext()) {
                it.next();
            }
        }
        if (zzlVar.zzn()) {
            synchronized (this.zzY) {
                String zzg = zzlVar.zzg();
                Queue<zzl<?>> remove = this.zzY.remove(zzg);
                if (remove != null) {
                    if (zzt.DEBUG) {
                        zzt.zza("Releasing %d waiting requests for cacheKey=%s.", Integer.valueOf(remove.size()), zzg);
                    }
                    this.zzaa.addAll(remove);
                }
            }
        }
    }
}
