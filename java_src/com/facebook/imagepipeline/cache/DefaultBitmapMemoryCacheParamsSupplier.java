package com.facebook.imagepipeline.cache;

import android.app.ActivityManager;
import android.os.Build;
import com.facebook.common.internal.Supplier;
import com.facebook.common.util.ByteConstants;
import com.facebook.imagepipeline.memory.DefaultFlexByteArrayPoolParams;
/* loaded from: classes.dex */
public class DefaultBitmapMemoryCacheParamsSupplier implements Supplier<MemoryCacheParams> {
    private static final int MAX_CACHE_ENTRIES = 256;
    private static final int MAX_CACHE_ENTRY_SIZE = Integer.MAX_VALUE;
    private static final int MAX_EVICTION_QUEUE_ENTRIES = Integer.MAX_VALUE;
    private static final int MAX_EVICTION_QUEUE_SIZE = Integer.MAX_VALUE;
    private final ActivityManager mActivityManager;

    public DefaultBitmapMemoryCacheParamsSupplier(ActivityManager activityManager) {
        this.mActivityManager = activityManager;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.facebook.common.internal.Supplier
    /* renamed from: get */
    public MemoryCacheParams mo89get() {
        return new MemoryCacheParams(getMaxCacheSize(), 256, Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MAX_VALUE);
    }

    private int getMaxCacheSize() {
        int min = Math.min(this.mActivityManager.getMemoryClass() * ByteConstants.MB, Integer.MAX_VALUE);
        if (min < 33554432) {
            return DefaultFlexByteArrayPoolParams.DEFAULT_MAX_BYTE_ARRAY_SIZE;
        }
        if (min < 67108864) {
            return 6291456;
        }
        if (Build.VERSION.SDK_INT < 11) {
            return 8388608;
        }
        return min / 4;
    }
}
