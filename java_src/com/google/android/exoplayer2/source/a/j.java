package com.google.android.exoplayer2.source.a;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.util.v;
import java.io.IOException;
import java.util.Arrays;
/* compiled from: DataChunk.java */
/* loaded from: classes2.dex */
public abstract class j extends c {
    private byte[] i;
    private int j;
    private volatile boolean k;

    protected abstract void a(byte[] bArr, int i) throws IOException;

    public j(com.google.android.exoplayer2.upstream.e eVar, com.google.android.exoplayer2.upstream.g gVar, int i, Format format, int i2, Object obj, byte[] bArr) {
        super(eVar, gVar, i, format, i2, obj, -9223372036854775807L, -9223372036854775807L);
        this.i = bArr;
    }

    public byte[] d() {
        return this.i;
    }

    @Override // com.google.android.exoplayer2.source.a.c
    public long e() {
        return this.j;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.c
    public final void a() {
        this.k = true;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.c
    public final boolean b() {
        return this.k;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.c
    public final void c() throws IOException, InterruptedException {
        int i = 0;
        try {
            this.h.a(this.f3344a);
            this.j = 0;
            while (i != -1 && !this.k) {
                f();
                i = this.h.a(this.i, this.j, 16384);
                if (i != -1) {
                    this.j += i;
                }
            }
            if (!this.k) {
                a(this.i, this.j);
            }
        } finally {
            v.a(this.h);
        }
    }

    private void f() {
        if (this.i == null) {
            this.i = new byte[16384];
        } else if (this.i.length < this.j + 16384) {
            this.i = Arrays.copyOf(this.i, this.i.length + 16384);
        }
    }
}
