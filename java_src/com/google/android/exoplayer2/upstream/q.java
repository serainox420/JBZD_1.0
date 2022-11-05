package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import java.io.IOException;
/* compiled from: TeeDataSource.java */
/* loaded from: classes2.dex */
public final class q implements e {

    /* renamed from: a  reason: collision with root package name */
    private final e f3498a;
    private final d b;

    public q(e eVar, d dVar) {
        this.f3498a = (e) com.google.android.exoplayer2.util.a.a(eVar);
        this.b = (d) com.google.android.exoplayer2.util.a.a(dVar);
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public long a(g gVar) throws IOException {
        long a2 = this.f3498a.a(gVar);
        if (gVar.e == -1 && a2 != -1) {
            gVar = new g(gVar.f3489a, gVar.c, gVar.d, a2, gVar.f, gVar.g);
        }
        this.b.a(gVar);
        return a2;
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public int a(byte[] bArr, int i, int i2) throws IOException {
        int a2 = this.f3498a.a(bArr, i, i2);
        if (a2 > 0) {
            this.b.a(bArr, i, a2);
        }
        return a2;
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public Uri b() {
        return this.f3498a.b();
    }

    @Override // com.google.android.exoplayer2.upstream.e
    public void a() throws IOException {
        try {
            this.f3498a.a();
        } finally {
            this.b.a();
        }
    }
}
