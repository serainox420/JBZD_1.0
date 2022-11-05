package com.google.android.exoplayer2.upstream.cache;

import com.google.android.exoplayer2.upstream.d;
/* compiled from: CacheDataSinkFactory.java */
/* loaded from: classes2.dex */
public final class a implements d.a {

    /* renamed from: a  reason: collision with root package name */
    private final Cache f3479a;
    private final long b;
    private final int c;

    public a(Cache cache, long j) {
        this(cache, j, 20480);
    }

    public a(Cache cache, long j, int i) {
        this.f3479a = cache;
        this.b = j;
        this.c = i;
    }

    @Override // com.google.android.exoplayer2.upstream.d.a
    public com.google.android.exoplayer2.upstream.d a() {
        return new CacheDataSink(this.f3479a, this.b, this.c);
    }
}
