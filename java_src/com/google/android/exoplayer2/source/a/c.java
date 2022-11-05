package com.google.android.exoplayer2.source.a;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.upstream.Loader;
/* compiled from: Chunk.java */
/* loaded from: classes2.dex */
public abstract class c implements Loader.c {

    /* renamed from: a  reason: collision with root package name */
    public final com.google.android.exoplayer2.upstream.g f3344a;
    public final int b;
    public final Format c;
    public final int d;
    public final Object e;
    public final long f;
    public final long g;
    protected final com.google.android.exoplayer2.upstream.e h;

    public abstract long e();

    public c(com.google.android.exoplayer2.upstream.e eVar, com.google.android.exoplayer2.upstream.g gVar, int i, Format format, int i2, Object obj, long j, long j2) {
        this.h = (com.google.android.exoplayer2.upstream.e) com.google.android.exoplayer2.util.a.a(eVar);
        this.f3344a = (com.google.android.exoplayer2.upstream.g) com.google.android.exoplayer2.util.a.a(gVar);
        this.b = i;
        this.c = format;
        this.d = i2;
        this.e = obj;
        this.f = j;
        this.g = j2;
    }
}
