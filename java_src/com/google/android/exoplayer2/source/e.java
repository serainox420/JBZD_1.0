package com.google.android.exoplayer2.source;

import android.net.Uri;
import android.os.Handler;
import com.google.android.exoplayer2.n;
import com.google.android.exoplayer2.source.g;
import com.google.android.exoplayer2.upstream.e;
import java.io.IOException;
/* compiled from: ExtractorMediaSource.java */
/* loaded from: classes2.dex */
public final class e implements g, g.a {

    /* renamed from: a  reason: collision with root package name */
    private final Uri f3405a;
    private final e.a b;
    private final com.google.android.exoplayer2.extractor.i c;
    private final int d;
    private final Handler e;
    private final a f;
    private final n.a g;
    private final String h;
    private g.a i;
    private n j;
    private boolean k;

    /* compiled from: ExtractorMediaSource.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a(IOException iOException);
    }

    public e(Uri uri, e.a aVar, com.google.android.exoplayer2.extractor.i iVar, Handler handler, a aVar2) {
        this(uri, aVar, iVar, -1, handler, aVar2, null);
    }

    public e(Uri uri, e.a aVar, com.google.android.exoplayer2.extractor.i iVar, int i, Handler handler, a aVar2, String str) {
        this.f3405a = uri;
        this.b = aVar;
        this.c = iVar;
        this.d = i;
        this.e = handler;
        this.f = aVar2;
        this.h = str;
        this.g = new n.a();
    }

    @Override // com.google.android.exoplayer2.source.g
    public void a(com.google.android.exoplayer2.d dVar, boolean z, g.a aVar) {
        this.i = aVar;
        this.j = new k(-9223372036854775807L, false);
        aVar.a(this.j, null);
    }

    @Override // com.google.android.exoplayer2.source.g
    public void a() throws IOException {
    }

    @Override // com.google.android.exoplayer2.source.g
    public f a(int i, com.google.android.exoplayer2.upstream.b bVar, long j) {
        com.google.android.exoplayer2.util.a.a(i == 0);
        return new d(this.f3405a, this.b.a(), this.c.a(), this.d, this.e, this.f, this, bVar, this.h);
    }

    @Override // com.google.android.exoplayer2.source.g
    public void a(f fVar) {
        ((d) fVar).b();
    }

    @Override // com.google.android.exoplayer2.source.g
    public void b() {
        this.i = null;
    }

    @Override // com.google.android.exoplayer2.source.g.a
    public void a(n nVar, Object obj) {
        boolean z = false;
        if (nVar.a(0, this.g).a() != -9223372036854775807L) {
            z = true;
        }
        if (!this.k || z) {
            this.j = nVar;
            this.k = z;
            this.i.a(this.j, null);
        }
    }
}
