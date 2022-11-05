package com.google.android.exoplayer2.extractor.f;

import android.util.Log;
import com.google.android.exoplayer2.extractor.f.u;
/* compiled from: PesReader.java */
/* loaded from: classes2.dex */
public final class n implements u {

    /* renamed from: a  reason: collision with root package name */
    private final g f3272a;
    private final com.google.android.exoplayer2.util.k b = new com.google.android.exoplayer2.util.k(new byte[10]);
    private int c = 0;
    private int d;
    private com.google.android.exoplayer2.util.s e;
    private boolean f;
    private boolean g;
    private boolean h;
    private int i;
    private int j;
    private boolean k;
    private long l;

    public n(g gVar) {
        this.f3272a = gVar;
    }

    @Override // com.google.android.exoplayer2.extractor.f.u
    public void a(com.google.android.exoplayer2.util.s sVar, com.google.android.exoplayer2.extractor.h hVar, u.c cVar) {
        this.e = sVar;
        this.f3272a.a(hVar, cVar);
    }

    @Override // com.google.android.exoplayer2.extractor.f.u
    public final void a() {
        this.c = 0;
        this.d = 0;
        this.h = false;
        this.f3272a.a();
    }

    @Override // com.google.android.exoplayer2.extractor.f.u
    public final void a(com.google.android.exoplayer2.util.l lVar, boolean z) {
        if (z) {
            switch (this.c) {
                case 2:
                    Log.w("PesReader", "Unexpected start indicator reading extended header");
                    break;
                case 3:
                    if (this.j != -1) {
                        Log.w("PesReader", "Unexpected start indicator: expected " + this.j + " more bytes");
                    }
                    this.f3272a.b();
                    break;
            }
            a(1);
        }
        while (lVar.b() > 0) {
            switch (this.c) {
                case 0:
                    lVar.d(lVar.b());
                    break;
                case 1:
                    if (a(lVar, this.b.f3510a, 9)) {
                        a(b() ? 2 : 0);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (a(lVar, this.b.f3510a, Math.min(10, this.i)) && a(lVar, (byte[]) null, this.i)) {
                        c();
                        this.f3272a.a(this.l, this.k);
                        a(3);
                        break;
                    }
                    break;
                case 3:
                    int b = lVar.b();
                    int i = this.j == -1 ? 0 : b - this.j;
                    if (i > 0) {
                        b -= i;
                        lVar.b(lVar.d() + b);
                    }
                    this.f3272a.a(lVar);
                    if (this.j == -1) {
                        break;
                    } else {
                        this.j -= b;
                        if (this.j != 0) {
                            break;
                        } else {
                            this.f3272a.b();
                            a(1);
                            break;
                        }
                    }
            }
        }
    }

    private void a(int i) {
        this.c = i;
        this.d = 0;
    }

    private boolean a(com.google.android.exoplayer2.util.l lVar, byte[] bArr, int i) {
        int min = Math.min(lVar.b(), i - this.d);
        if (min <= 0) {
            return true;
        }
        if (bArr == null) {
            lVar.d(min);
        } else {
            lVar.a(bArr, this.d, min);
        }
        this.d = min + this.d;
        return this.d == i;
    }

    private boolean b() {
        this.b.a(0);
        int c = this.b.c(24);
        if (c != 1) {
            Log.w("PesReader", "Unexpected start code prefix: " + c);
            this.j = -1;
            return false;
        }
        this.b.b(8);
        int c2 = this.b.c(16);
        this.b.b(5);
        this.k = this.b.c();
        this.b.b(2);
        this.f = this.b.c();
        this.g = this.b.c();
        this.b.b(6);
        this.i = this.b.c(8);
        if (c2 == 0) {
            this.j = -1;
        } else {
            this.j = ((c2 + 6) - 9) - this.i;
        }
        return true;
    }

    private void c() {
        this.b.a(0);
        this.l = -9223372036854775807L;
        if (this.f) {
            this.b.b(4);
            this.b.b(1);
            long c = (this.b.c(3) << 30) | (this.b.c(15) << 15);
            this.b.b(1);
            long c2 = c | this.b.c(15);
            this.b.b(1);
            if (!this.h && this.g) {
                this.b.b(4);
                this.b.b(1);
                long c3 = (this.b.c(3) << 30) | (this.b.c(15) << 15);
                this.b.b(1);
                long c4 = c3 | this.b.c(15);
                this.b.b(1);
                this.e.b(c4);
                this.h = true;
            }
            this.l = this.e.b(c2);
        }
    }
}
