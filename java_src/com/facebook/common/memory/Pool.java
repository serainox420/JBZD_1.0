package com.facebook.common.memory;

import com.facebook.common.references.ResourceReleaser;
/* loaded from: classes.dex */
public interface Pool<V> extends MemoryTrimmable, ResourceReleaser<V> {
    V get(int i);

    @Override // com.facebook.common.references.ResourceReleaser
    void release(V v);
}
