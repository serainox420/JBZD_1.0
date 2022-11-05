package com.google.android.gms.games.internal.events;

import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2.dex */
public abstract class EventIncrementManager {
    private final AtomicReference<EventIncrementCache> zzbct = new AtomicReference<>();

    public void flush() {
        EventIncrementCache eventIncrementCache = this.zzbct.get();
        if (eventIncrementCache != null) {
            eventIncrementCache.flush();
        }
    }

    protected abstract EventIncrementCache zzFn();

    public void zzo(String str, int i) {
        EventIncrementCache eventIncrementCache = this.zzbct.get();
        if (eventIncrementCache == null) {
            eventIncrementCache = zzFn();
            if (!this.zzbct.compareAndSet(null, eventIncrementCache)) {
                eventIncrementCache = this.zzbct.get();
            }
        }
        eventIncrementCache.zzv(str, i);
    }
}
