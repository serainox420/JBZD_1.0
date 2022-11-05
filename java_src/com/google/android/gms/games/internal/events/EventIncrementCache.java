package com.google.android.gms.games.internal.events;

import android.os.Handler;
import android.os.Looper;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2.dex */
public abstract class EventIncrementCache {
    private Handler zzbco;
    private boolean zzbcp;
    private int zzbcr;
    final Object zzbcn = new Object();
    private HashMap<String, AtomicInteger> zzbcq = new HashMap<>();

    public EventIncrementCache(Looper looper, int i) {
        this.zzbco = new Handler(looper);
        this.zzbcr = i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzFF() {
        synchronized (this.zzbcn) {
            this.zzbcp = false;
            flush();
        }
    }

    public void flush() {
        synchronized (this.zzbcn) {
            for (Map.Entry<String, AtomicInteger> entry : this.zzbcq.entrySet()) {
                zzr(entry.getKey(), entry.getValue().get());
            }
            this.zzbcq.clear();
        }
    }

    protected abstract void zzr(String str, int i);

    public void zzv(String str, int i) {
        synchronized (this.zzbcn) {
            if (!this.zzbcp) {
                this.zzbcp = true;
                this.zzbco.postDelayed(new Runnable() { // from class: com.google.android.gms.games.internal.events.EventIncrementCache.1
                    @Override // java.lang.Runnable
                    public void run() {
                        EventIncrementCache.this.zzFF();
                    }
                }, this.zzbcr);
            }
            AtomicInteger atomicInteger = this.zzbcq.get(str);
            if (atomicInteger == null) {
                atomicInteger = new AtomicInteger();
                this.zzbcq.put(str, atomicInteger);
            }
            atomicInteger.addAndGet(i);
        }
    }
}
