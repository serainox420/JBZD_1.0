package com.millennialmedia.internal.utils;

import android.util.SparseArray;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.millennialmedia.MMLog;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes3.dex */
public class TimedMemoryCache {

    /* renamed from: a  reason: collision with root package name */
    private static final String f4186a = TimedMemoryCache.class.getSimpleName();
    private static SparseArray<CacheItem> b = new SparseArray<>();
    private static AtomicInteger c = new AtomicInteger(0);
    private static AtomicBoolean d = new AtomicBoolean();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public static class CacheItem {

        /* renamed from: a  reason: collision with root package name */
        Object f4187a;
        long b;

        CacheItem(Object obj, Long l) {
            if (l == null) {
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(TimedMemoryCache.f4186a, "Cached item timeout is null, setting to default: 60000");
                }
                l = 60000L;
            }
            this.f4187a = obj;
            this.b = System.currentTimeMillis() + l.longValue();
        }

        public String toString() {
            return "cachedObject: " + this.f4187a + ", itemTimeout: " + this.b;
        }
    }

    public static int add(Object obj, Long l) {
        if (obj == null) {
            MMLog.e(f4186a, "Nothing to cache, object provided is null");
            return 0;
        }
        int incrementAndGet = c.incrementAndGet();
        CacheItem cacheItem = new CacheItem(obj, l);
        if (MMLog.isDebugEnabled()) {
            MMLog.d(f4186a, "CacheItem added.\n\t" + cacheItem);
        }
        b.put(incrementAndGet, cacheItem);
        d();
        return incrementAndGet;
    }

    public static Object get(int i) {
        CacheItem b2 = b(i);
        if (b2 == null) {
            MMLog.e(f4186a, "Cached item for cache ID <" + i + "> is null");
            return null;
        }
        b.remove(i);
        return b2.f4187a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static CacheItem b(int i) {
        CacheItem cacheItem = b.get(i);
        if (cacheItem == null) {
            MMLog.e(f4186a, "unable to get cached object for cache id <" + i + ">, stored object is null and will be removed from cache");
            b.remove(i);
            return null;
        }
        return cacheItem;
    }

    private static void d() {
        if (!d.compareAndSet(false, true)) {
            if (MMLog.isDebugEnabled()) {
                MMLog.d(f4186a, "Cleaner already running");
                return;
            }
            return;
        }
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.utils.TimedMemoryCache.1
            @Override // java.lang.Runnable
            public void run() {
                do {
                    try {
                        Thread.sleep(NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS);
                        long currentTimeMillis = System.currentTimeMillis();
                        for (int i = 0; i < TimedMemoryCache.b.size(); i++) {
                            int keyAt = TimedMemoryCache.b.keyAt(i);
                            CacheItem b2 = TimedMemoryCache.b(keyAt);
                            if (b2 == null) {
                                if (MMLog.isDebugEnabled()) {
                                    MMLog.d(TimedMemoryCache.f4186a, "Attempted to remove CacheItem with ID <" + keyAt + "> but item was null");
                                }
                            } else if (currentTimeMillis > b2.b) {
                                if (MMLog.isDebugEnabled()) {
                                    MMLog.d(TimedMemoryCache.f4186a, "Removed CacheItem\n\t:Checked time: " + currentTimeMillis + "\n\tID: " + keyAt + "\n\tItem: " + b2);
                                }
                                TimedMemoryCache.b.remove(keyAt);
                            }
                        }
                    } catch (InterruptedException e) {
                        MMLog.e(TimedMemoryCache.f4186a, "Error occurred while cleaner was sleeping", e);
                    }
                } while (TimedMemoryCache.b.size() > 0);
                if (MMLog.isDebugEnabled()) {
                    MMLog.d(TimedMemoryCache.f4186a, "Stopping cleaner");
                }
                TimedMemoryCache.d.set(false);
            }
        });
    }
}
