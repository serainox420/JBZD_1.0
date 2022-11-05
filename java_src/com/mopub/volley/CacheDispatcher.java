package com.mopub.volley;

import android.os.Process;
import com.mopub.volley.Cache;
import java.util.concurrent.BlockingQueue;
/* loaded from: classes3.dex */
public class CacheDispatcher extends Thread {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f4670a = VolleyLog.DEBUG;
    private final BlockingQueue<Request<?>> b;
    private final BlockingQueue<Request<?>> c;
    private final Cache d;
    private final ResponseDelivery e;
    private volatile boolean f = false;

    public CacheDispatcher(BlockingQueue<Request<?>> blockingQueue, BlockingQueue<Request<?>> blockingQueue2, Cache cache, ResponseDelivery responseDelivery) {
        this.b = blockingQueue;
        this.c = blockingQueue2;
        this.d = cache;
        this.e = responseDelivery;
    }

    public void quit() {
        this.f = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        if (f4670a) {
            VolleyLog.v("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.d.initialize();
        while (true) {
            try {
                final Request<?> take = this.b.take();
                take.addMarker("cache-queue-take");
                if (take.isCanceled()) {
                    take.b("cache-discard-canceled");
                } else {
                    Cache.Entry entry = this.d.get(take.getCacheKey());
                    if (entry == null) {
                        take.addMarker("cache-miss");
                        this.c.put(take);
                    } else if (entry.isExpired()) {
                        take.addMarker("cache-hit-expired");
                        take.setCacheEntry(entry);
                        this.c.put(take);
                    } else {
                        take.addMarker("cache-hit");
                        Response<?> a2 = take.a(new NetworkResponse(entry.data, entry.responseHeaders));
                        take.addMarker("cache-hit-parsed");
                        if (!entry.refreshNeeded()) {
                            this.e.postResponse(take, a2);
                        } else {
                            take.addMarker("cache-hit-refresh-needed");
                            take.setCacheEntry(entry);
                            a2.intermediate = true;
                            this.e.postResponse(take, a2, new Runnable() { // from class: com.mopub.volley.CacheDispatcher.1
                                @Override // java.lang.Runnable
                                public void run() {
                                    try {
                                        CacheDispatcher.this.c.put(take);
                                    } catch (InterruptedException e) {
                                    }
                                }
                            });
                        }
                    }
                }
            } catch (InterruptedException e) {
                if (this.f) {
                    return;
                }
            }
        }
    }
}
