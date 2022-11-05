package com.google.android.exoplayer2.upstream.cache;

import com.google.android.exoplayer2.upstream.cache.Cache;
import java.util.Comparator;
import java.util.TreeSet;
/* compiled from: LeastRecentlyUsedCacheEvictor.java */
/* loaded from: classes2.dex */
public final class h implements d, Comparator<e> {

    /* renamed from: a  reason: collision with root package name */
    private final long f3485a;
    private final TreeSet<e> b = new TreeSet<>(this);
    private long c;

    public h(long j) {
        this.f3485a = j;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.d
    public void a() {
    }

    @Override // com.google.android.exoplayer2.upstream.cache.d
    public void a(Cache cache, String str, long j, long j2) {
        a(cache, j2);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache.a
    public void a(Cache cache, e eVar) {
        this.b.add(eVar);
        this.c += eVar.c;
        a(cache, 0L);
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache.a
    public void b(Cache cache, e eVar) {
        this.b.remove(eVar);
        this.c -= eVar.c;
    }

    @Override // com.google.android.exoplayer2.upstream.cache.Cache.a
    public void a(Cache cache, e eVar, e eVar2) {
        b(cache, eVar);
        a(cache, eVar2);
    }

    @Override // java.util.Comparator
    /* renamed from: a */
    public int compare(e eVar, e eVar2) {
        if (eVar.f - eVar2.f == 0) {
            return eVar.compareTo(eVar2);
        }
        return eVar.f < eVar2.f ? -1 : 1;
    }

    private void a(Cache cache, long j) {
        while (this.c + j > this.f3485a) {
            try {
                cache.b(this.b.first());
            } catch (Cache.CacheException e) {
            }
        }
    }
}
