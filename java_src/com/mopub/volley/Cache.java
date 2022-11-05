package com.mopub.volley;

import java.util.Collections;
import java.util.Map;
/* loaded from: classes3.dex */
public interface Cache {
    void clear();

    Entry get(String str);

    void initialize();

    void invalidate(String str, boolean z);

    void put(String str, Entry entry);

    void remove(String str);

    /* loaded from: classes3.dex */
    public static class Entry {
        public byte[] data;
        public String etag;
        public Map<String, String> responseHeaders = Collections.emptyMap();
        public long serverDate;
        public long softTtl;
        public long ttl;

        public boolean isExpired() {
            return this.ttl < System.currentTimeMillis();
        }

        public boolean refreshNeeded() {
            return this.softTtl < System.currentTimeMillis();
        }
    }
}
