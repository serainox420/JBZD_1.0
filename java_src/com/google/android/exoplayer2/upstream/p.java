package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.util.v;
import java.io.IOException;
import java.io.InputStream;
/* compiled from: ParsingLoadable.java */
/* loaded from: classes2.dex */
public final class p<T> implements Loader.c {

    /* renamed from: a  reason: collision with root package name */
    public final g f3497a;
    public final int b;
    private final e c;
    private final a<T> d;
    private volatile T e;
    private volatile boolean f;
    private volatile long g;

    /* compiled from: ParsingLoadable.java */
    /* loaded from: classes2.dex */
    public interface a<T> {
        T b(Uri uri, InputStream inputStream) throws IOException;
    }

    public p(e eVar, Uri uri, int i, a<T> aVar) {
        this.c = eVar;
        this.f3497a = new g(uri, 1);
        this.b = i;
        this.d = aVar;
    }

    public final T d() {
        return this.e;
    }

    public long e() {
        return this.g;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.c
    public final void a() {
        this.f = true;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.c
    public final boolean b() {
        return this.f;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.c
    public final void c() throws IOException, InterruptedException {
        f fVar = new f(this.c, this.f3497a);
        try {
            fVar.b();
            this.e = this.d.b(this.c.b(), fVar);
        } finally {
            this.g = fVar.a();
            v.a(fVar);
        }
    }
}
