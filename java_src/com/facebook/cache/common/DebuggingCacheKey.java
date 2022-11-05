package com.facebook.cache.common;

import javax.annotation.Nullable;
/* loaded from: classes.dex */
public class DebuggingCacheKey extends SimpleCacheKey {
    private final Object mCallerContext;

    public DebuggingCacheKey(String str, @Nullable Object obj) {
        super(str);
        this.mCallerContext = obj;
    }

    @Nullable
    public Object getCallerContext() {
        return this.mCallerContext;
    }
}
