package com.google.android.exoplayer2.source.b;

import android.net.Uri;
import android.os.Handler;
import com.google.android.exoplayer2.source.a;
import com.google.android.exoplayer2.source.b.a.b;
import com.google.android.exoplayer2.source.b.a.e;
import com.google.android.exoplayer2.source.g;
import com.google.android.exoplayer2.upstream.e;
import java.io.IOException;
import java.util.List;
/* compiled from: HlsMediaSource.java */
/* loaded from: classes2.dex */
public final class h implements e.c, com.google.android.exoplayer2.source.g {

    /* renamed from: a  reason: collision with root package name */
    private final Uri f3365a;
    private final d b;
    private final int c;
    private final a.C0138a d;
    private com.google.android.exoplayer2.source.b.a.e e;
    private g.a f;

    public h(Uri uri, e.a aVar, Handler handler, com.google.android.exoplayer2.source.a aVar2) {
        this(uri, aVar, 3, handler, aVar2);
    }

    public h(Uri uri, e.a aVar, int i, Handler handler, com.google.android.exoplayer2.source.a aVar2) {
        this(uri, new b(aVar), i, handler, aVar2);
    }

    public h(Uri uri, d dVar, int i, Handler handler, com.google.android.exoplayer2.source.a aVar) {
        this.f3365a = uri;
        this.b = dVar;
        this.c = i;
        this.d = new a.C0138a(handler, aVar);
    }

    @Override // com.google.android.exoplayer2.source.g
    public void a(com.google.android.exoplayer2.d dVar, boolean z, g.a aVar) {
        com.google.android.exoplayer2.util.a.b(this.e == null);
        this.e = new com.google.android.exoplayer2.source.b.a.e(this.f3365a, this.b, this.d, this.c, this);
        this.f = aVar;
        this.e.a();
    }

    @Override // com.google.android.exoplayer2.source.g
    public void a() throws IOException {
        this.e.d();
    }

    @Override // com.google.android.exoplayer2.source.g
    public com.google.android.exoplayer2.source.f a(int i, com.google.android.exoplayer2.upstream.b bVar, long j) {
        com.google.android.exoplayer2.util.a.a(i == 0);
        return new g(this.e, this.b, this.c, this.d, bVar, j);
    }

    @Override // com.google.android.exoplayer2.source.g
    public void a(com.google.android.exoplayer2.source.f fVar) {
        ((g) fVar).b();
    }

    @Override // com.google.android.exoplayer2.source.g
    public void b() {
        if (this.e != null) {
            this.e.c();
            this.e = null;
        }
        this.f = null;
    }

    @Override // com.google.android.exoplayer2.source.b.a.e.c
    public void a(com.google.android.exoplayer2.source.b.a.b bVar) {
        com.google.android.exoplayer2.source.k kVar;
        boolean z = false;
        long j = bVar.b;
        if (this.e.e()) {
            long j2 = bVar.i ? bVar.c + bVar.m : -9223372036854775807L;
            List<b.a> list = bVar.l;
            if (j == -9223372036854775807L) {
                j = list.isEmpty() ? 0L : list.get(Math.max(0, list.size() - 3)).d;
            }
            long j3 = bVar.m;
            long j4 = bVar.c;
            if (!bVar.i) {
                z = true;
            }
            kVar = new com.google.android.exoplayer2.source.k(j2, j3, j4, j, true, z);
        } else {
            if (j == -9223372036854775807L) {
                j = 0;
            }
            kVar = new com.google.android.exoplayer2.source.k(bVar.c + bVar.m, bVar.m, bVar.c, j, true, false);
        }
        this.f.a(kVar, new e(this.e.b(), bVar));
    }
}
