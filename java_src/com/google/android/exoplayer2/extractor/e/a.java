package com.google.android.exoplayer2.extractor.e;

import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.f;
import com.google.android.exoplayer2.extractor.g;
import com.google.android.exoplayer2.extractor.h;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.extractor.n;
import com.google.android.exoplayer2.util.l;
import com.google.android.exoplayer2.util.v;
import java.io.IOException;
/* compiled from: RawCcExtractor.java */
/* loaded from: classes2.dex */
public final class a implements f {

    /* renamed from: a  reason: collision with root package name */
    private static final int f3255a = v.g("RCC\u0001");
    private final Format b;
    private n d;
    private int f;
    private long g;
    private int h;
    private int i;
    private final l c = new l(9);
    private int e = 0;

    public a(Format format) {
        this.b = format;
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public void a(h hVar) {
        hVar.a(new m.a(-9223372036854775807L));
        this.d = hVar.a(0, 3);
        hVar.a();
        this.d.a(this.b);
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public boolean a(g gVar) throws IOException, InterruptedException {
        this.c.a();
        gVar.c(this.c.f3511a, 0, 8);
        return this.c.m() == f3255a;
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public int a(g gVar, com.google.android.exoplayer2.extractor.l lVar) throws IOException, InterruptedException {
        while (true) {
            switch (this.e) {
                case 0:
                    if (!b(gVar)) {
                        return -1;
                    }
                    this.e = 1;
                    break;
                case 1:
                    if (c(gVar)) {
                        this.e = 2;
                        break;
                    } else {
                        this.e = 0;
                        return -1;
                    }
                case 2:
                    d(gVar);
                    this.e = 1;
                    return 0;
                default:
                    throw new IllegalStateException();
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public void a(long j, long j2) {
        this.e = 0;
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public void c() {
    }

    private boolean b(g gVar) throws IOException, InterruptedException {
        this.c.a();
        if (gVar.a(this.c.f3511a, 0, 8, true)) {
            if (this.c.m() != f3255a) {
                throw new IOException("Input not RawCC");
            }
            this.f = this.c.f();
            return true;
        }
        return false;
    }

    private boolean c(g gVar) throws IOException, InterruptedException {
        this.c.a();
        if (this.f == 0) {
            if (!gVar.a(this.c.f3511a, 0, 5, true)) {
                return false;
            }
            this.g = (this.c.k() * 1000) / 45;
        } else if (this.f == 1) {
            if (!gVar.a(this.c.f3511a, 0, 9, true)) {
                return false;
            }
            this.g = this.c.o();
        } else {
            throw new ParserException("Unsupported version number: " + this.f);
        }
        this.h = this.c.f();
        this.i = 0;
        return true;
    }

    private void d(g gVar) throws IOException, InterruptedException {
        while (this.h > 0) {
            this.c.a();
            gVar.b(this.c.f3511a, 0, 3);
            this.d.a(this.c, 3);
            this.i += 3;
            this.h--;
        }
        if (this.i > 0) {
            this.d.a(this.g, 1, this.i, 0, null);
        }
    }
}
