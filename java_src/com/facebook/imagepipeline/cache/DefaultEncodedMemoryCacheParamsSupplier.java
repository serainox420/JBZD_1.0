package com.facebook.imagepipeline.cache;

import com.facebook.common.internal.Supplier;
import com.facebook.common.util.ByteConstants;
import com.facebook.imagepipeline.memory.DefaultFlexByteArrayPoolParams;
/* loaded from: classes.dex */
public class DefaultEncodedMemoryCacheParamsSupplier implements Supplier<MemoryCacheParams> {
    private static final int MAX_CACHE_ENTRIES = Integer.MAX_VALUE;
    private static final int MAX_EVICTION_QUEUE_ENTRIES = Integer.MAX_VALUE;

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.facebook.common.internal.Supplier
    /* renamed from: get */
    public MemoryCacheParams mo89get() {
        int maxCacheSize = getMaxCacheSize();
        return new MemoryCacheParams(maxCacheSize, Integer.MAX_VALUE, maxCacheSize, Integer.MAX_VALUE, maxCacheSize / 8);
    }

    private int getMaxCacheSize() {
        int min = (int) Math.min(Runtime.getRuntime().maxMemory(), 2147483647L);
        if (min < 16777216) {
            return ByteConstants.MB;
        }
        if (min < 33554432) {
            return 2097152;
        }
        return DefaultFlexByteArrayPoolParams.DEFAULT_MAX_BYTE_ARRAY_SIZE;
    }
}
