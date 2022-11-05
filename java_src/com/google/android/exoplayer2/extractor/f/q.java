package com.google.android.exoplayer2.extractor.f;

import com.google.android.exoplayer2.extractor.f.u;
import com.google.android.exoplayer2.util.v;
/* compiled from: SectionReader.java */
/* loaded from: classes2.dex */
public final class q implements u {

    /* renamed from: a  reason: collision with root package name */
    private final p f3275a;
    private final com.google.android.exoplayer2.util.l b = new com.google.android.exoplayer2.util.l(32);
    private int c;
    private int d;
    private boolean e;
    private boolean f;

    public q(p pVar) {
        this.f3275a = pVar;
    }

    @Override // com.google.android.exoplayer2.extractor.f.u
    public void a(com.google.android.exoplayer2.util.s sVar, com.google.android.exoplayer2.extractor.h hVar, u.c cVar) {
        this.f3275a.a(sVar, hVar, cVar);
        this.f = true;
    }

    @Override // com.google.android.exoplayer2.extractor.f.u
    public void a() {
        this.f = true;
    }

    @Override // com.google.android.exoplayer2.extractor.f.u
    public void a(com.google.android.exoplayer2.util.l lVar, boolean z) {
        int f = z ? lVar.f() + lVar.d() : -1;
        if (this.f) {
            if (z) {
                this.f = false;
                lVar.c(f);
                this.d = 0;
            } else {
                return;
            }
        }
        while (lVar.b() > 0) {
            if (this.d < 3) {
                if (this.d == 0) {
                    int f2 = lVar.f();
                    lVar.c(lVar.d() - 1);
                    if (f2 == 255) {
                        this.f = true;
                        return;
                    }
                }
                int min = Math.min(lVar.b(), 3 - this.d);
                lVar.a(this.b.f3511a, this.d, min);
                this.d = min + this.d;
                if (this.d == 3) {
                    this.b.a(3);
                    this.b.d(1);
                    int f3 = this.b.f();
                    int f4 = this.b.f();
                    this.e = (f3 & 128) != 0;
                    this.c = (((f3 & 15) << 8) | f4) + 3;
                    if (this.b.e() < this.c) {
                        byte[] bArr = this.b.f3511a;
                        this.b.a(Math.min(4098, Math.max(this.c, bArr.length * 2)));
                        System.arraycopy(bArr, 0, this.b.f3511a, 0, 3);
                    }
                }
            } else {
                int min2 = Math.min(lVar.b(), this.c - this.d);
                lVar.a(this.b.f3511a, this.d, min2);
                this.d = min2 + this.d;
                if (this.d != this.c) {
                    continue;
                } else {
                    if (this.e) {
                        if (v.a(this.b.f3511a, 0, this.c, -1) != 0) {
                            this.f = true;
                            return;
                        }
                        this.b.a(this.c - 4);
                    } else {
                        this.b.a(this.c);
                    }
                    this.f3275a.a(this.b);
                    this.d = 0;
                }
            }
        }
    }
}
