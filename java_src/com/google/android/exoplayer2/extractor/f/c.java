package com.google.android.exoplayer2.extractor.f;

import com.google.android.exoplayer2.extractor.f.u;
import com.google.android.exoplayer2.extractor.m;
import com.google.android.exoplayer2.util.v;
import java.io.IOException;
/* compiled from: AdtsExtractor.java */
/* loaded from: classes2.dex */
public final class c implements com.google.android.exoplayer2.extractor.f {

    /* renamed from: a  reason: collision with root package name */
    public static final com.google.android.exoplayer2.extractor.i f3258a = new com.google.android.exoplayer2.extractor.i() { // from class: com.google.android.exoplayer2.extractor.f.c.1
        @Override // com.google.android.exoplayer2.extractor.i
        public com.google.android.exoplayer2.extractor.f[] a() {
            return new com.google.android.exoplayer2.extractor.f[]{new c()};
        }
    };
    private static final int b = v.g("ID3");
    private final long c;
    private final com.google.android.exoplayer2.util.l d;
    private d e;
    private boolean f;

    public c() {
        this(0L);
    }

    public c(long j) {
        this.c = j;
        this.d = new com.google.android.exoplayer2.util.l(200);
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public boolean a(com.google.android.exoplayer2.extractor.g gVar) throws IOException, InterruptedException {
        com.google.android.exoplayer2.util.l lVar = new com.google.android.exoplayer2.util.l(10);
        com.google.android.exoplayer2.util.k kVar = new com.google.android.exoplayer2.util.k(lVar.f3511a);
        int i = 0;
        while (true) {
            gVar.c(lVar.f3511a, 0, 10);
            lVar.c(0);
            if (lVar.j() != b) {
                break;
            }
            lVar.d(3);
            int r = lVar.r();
            i += r + 10;
            gVar.c(r);
        }
        gVar.a();
        gVar.c(i);
        int i2 = 0;
        int i3 = 0;
        int i4 = i;
        while (true) {
            gVar.c(lVar.f3511a, 0, 2);
            lVar.c(0);
            if ((lVar.g() & 65526) != 65520) {
                gVar.a();
                i4++;
                if (i4 - i >= 8192) {
                    return false;
                }
                gVar.c(i4);
                i2 = 0;
                i3 = 0;
            } else {
                i2++;
                if (i2 >= 4 && i3 > 188) {
                    return true;
                }
                gVar.c(lVar.f3511a, 0, 4);
                kVar.a(14);
                int c = kVar.c(13);
                if (c <= 6) {
                    return false;
                }
                gVar.c(c - 6);
                i3 += c;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public void a(com.google.android.exoplayer2.extractor.h hVar) {
        this.e = new d(true);
        this.e.a(hVar, new u.c(0, 1));
        hVar.a();
        hVar.a(new m.a(-9223372036854775807L));
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public void a(long j, long j2) {
        this.f = false;
        this.e.a();
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public void c() {
    }

    @Override // com.google.android.exoplayer2.extractor.f
    public int a(com.google.android.exoplayer2.extractor.g gVar, com.google.android.exoplayer2.extractor.l lVar) throws IOException, InterruptedException {
        int a2 = gVar.a(this.d.f3511a, 0, 200);
        if (a2 == -1) {
            return -1;
        }
        this.d.c(0);
        this.d.b(a2);
        if (!this.f) {
            this.e.a(this.c, true);
            this.f = true;
        }
        this.e.a(this.d);
        return 0;
    }
}
