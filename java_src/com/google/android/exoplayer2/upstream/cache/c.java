package com.google.android.exoplayer2.upstream.cache;

import com.google.android.exoplayer2.upstream.cache.b;
import com.google.android.exoplayer2.upstream.d;
import com.google.android.exoplayer2.upstream.e;
import com.google.android.exoplayer2.upstream.n;
/* compiled from: CacheDataSourceFactory.java */
/* loaded from: classes2.dex */
public final class c implements e.a {

    /* renamed from: a  reason: collision with root package name */
    private final Cache f3481a;
    private final e.a b;
    private final e.a c;
    private final d.a d;
    private final int e;
    private final b.a f;

    public c(Cache cache, e.a aVar, int i, long j) {
        this(cache, aVar, new n(), new a(cache, j), i, null);
    }

    public c(Cache cache, e.a aVar, e.a aVar2, d.a aVar3, int i, b.a aVar4) {
        this.f3481a = cache;
        this.b = aVar;
        this.c = aVar2;
        this.d = aVar3;
        this.e = i;
        this.f = aVar4;
    }

    @Override // com.google.android.exoplayer2.upstream.e.a
    /* renamed from: b */
    public b a() {
        return new b(this.f3481a, this.b.a(), this.c.a(), this.d != null ? this.d.a() : null, this.e, this.f);
    }
}
