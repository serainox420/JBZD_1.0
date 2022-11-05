package com.facebook.imagepipeline.cache;

import android.os.Build;
import com.facebook.common.logging.FLog;
import com.facebook.common.memory.MemoryTrimType;
import com.facebook.imagepipeline.cache.CountingMemoryCache;
/* loaded from: classes.dex */
public class BitmapMemoryCacheTrimStrategy implements CountingMemoryCache.CacheTrimStrategy {
    private static final String TAG = "BitmapMemoryCacheTrimStrategy";

    @Override // com.facebook.imagepipeline.cache.CountingMemoryCache.CacheTrimStrategy
    public double getTrimRatio(MemoryTrimType memoryTrimType) {
        switch (memoryTrimType) {
            case OnCloseToDalvikHeapLimit:
                if (Build.VERSION.SDK_INT < 21) {
                    return 0.0d;
                }
                return MemoryTrimType.OnCloseToDalvikHeapLimit.getSuggestedTrimRatio();
            case OnAppBackgrounded:
            case OnSystemLowMemoryWhileAppInForeground:
            case OnSystemLowMemoryWhileAppInBackground:
                return 1.0d;
            default:
                FLog.wtf(TAG, "unknown trim type: %s", memoryTrimType);
                return 0.0d;
        }
    }
}
