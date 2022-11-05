package com.google.android.exoplayer2.extractor.f;

import android.util.Log;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.f.u;
import java.util.Collections;
/* compiled from: H265Reader.java */
/* loaded from: classes2.dex */
public final class j implements g {

    /* renamed from: a  reason: collision with root package name */
    private final r f3267a;
    private String b;
    private com.google.android.exoplayer2.extractor.n c;
    private a d;
    private boolean e;
    private long l;
    private long m;
    private final boolean[] f = new boolean[3];
    private final m g = new m(32, 128);
    private final m h = new m(33, 128);
    private final m i = new m(34, 128);
    private final m j = new m(39, 128);
    private final m k = new m(40, 128);
    private final com.google.android.exoplayer2.util.l n = new com.google.android.exoplayer2.util.l();

    public j(r rVar) {
        this.f3267a = rVar;
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void a() {
        com.google.android.exoplayer2.util.j.a(this.f);
        this.g.a();
        this.h.a();
        this.i.a();
        this.j.a();
        this.k.a();
        this.d.a();
        this.l = 0L;
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void a(com.google.android.exoplayer2.extractor.h hVar, u.c cVar) {
        cVar.a();
        this.b = cVar.c();
        this.c = hVar.a(cVar.b(), 2);
        this.d = new a(this.c);
        this.f3267a.a(hVar, cVar);
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void a(long j, boolean z) {
        this.m = j;
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void a(com.google.android.exoplayer2.util.l lVar) {
        while (lVar.b() > 0) {
            int d = lVar.d();
            int c = lVar.c();
            byte[] bArr = lVar.f3511a;
            this.l += lVar.b();
            this.c.a(lVar, lVar.b());
            while (d < c) {
                int a2 = com.google.android.exoplayer2.util.j.a(bArr, d, c, this.f);
                if (a2 == c) {
                    a(bArr, d, c);
                    return;
                }
                int c2 = com.google.android.exoplayer2.util.j.c(bArr, a2);
                int i = a2 - d;
                if (i > 0) {
                    a(bArr, d, a2);
                }
                int i2 = c - a2;
                long j = this.l - i2;
                b(j, i2, i < 0 ? -i : 0, this.m);
                a(j, i2, c2, this.m);
                d = a2 + 3;
            }
        }
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void b() {
    }

    private void a(long j, int i, int i2, long j2) {
        if (this.e) {
            this.d.a(j, i, i2, j2);
        } else {
            this.g.a(i2);
            this.h.a(i2);
            this.i.a(i2);
        }
        this.j.a(i2);
        this.k.a(i2);
    }

    private void a(byte[] bArr, int i, int i2) {
        if (this.e) {
            this.d.a(bArr, i, i2);
        } else {
            this.g.a(bArr, i, i2);
            this.h.a(bArr, i, i2);
            this.i.a(bArr, i, i2);
        }
        this.j.a(bArr, i, i2);
        this.k.a(bArr, i, i2);
    }

    private void b(long j, int i, int i2, long j2) {
        if (this.e) {
            this.d.a(j, i);
        } else {
            this.g.b(i2);
            this.h.b(i2);
            this.i.b(i2);
            if (this.g.b() && this.h.b() && this.i.b()) {
                this.c.a(a(this.b, this.g, this.h, this.i));
                this.e = true;
            }
        }
        if (this.j.b(i2)) {
            this.n.a(this.j.f3271a, com.google.android.exoplayer2.util.j.a(this.j.f3271a, this.j.b));
            this.n.d(5);
            this.f3267a.a(j2, this.n);
        }
        if (this.k.b(i2)) {
            this.n.a(this.k.f3271a, com.google.android.exoplayer2.util.j.a(this.k.f3271a, this.k.b));
            this.n.d(5);
            this.f3267a.a(j2, this.n);
        }
    }

    private static Format a(String str, m mVar, m mVar2, m mVar3) {
        float f;
        byte[] bArr = new byte[mVar.b + mVar2.b + mVar3.b];
        System.arraycopy(mVar.f3271a, 0, bArr, 0, mVar.b);
        System.arraycopy(mVar2.f3271a, 0, bArr, mVar.b, mVar2.b);
        System.arraycopy(mVar3.f3271a, 0, bArr, mVar.b + mVar2.b, mVar3.b);
        com.google.android.exoplayer2.util.m mVar4 = new com.google.android.exoplayer2.util.m(mVar2.f3271a, 0, mVar2.b);
        mVar4.a(44);
        int c = mVar4.c(3);
        mVar4.a(1);
        mVar4.a(88);
        mVar4.a(8);
        int i = 0;
        for (int i2 = 0; i2 < c; i2++) {
            if (mVar4.a()) {
                i += 89;
            }
            if (mVar4.a()) {
                i += 8;
            }
        }
        mVar4.a(i);
        if (c > 0) {
            mVar4.a((8 - c) * 2);
        }
        mVar4.c();
        int c2 = mVar4.c();
        if (c2 == 3) {
            mVar4.a(1);
        }
        int c3 = mVar4.c();
        int c4 = mVar4.c();
        if (mVar4.a()) {
            int c5 = mVar4.c();
            int c6 = mVar4.c();
            int c7 = mVar4.c();
            int c8 = mVar4.c();
            c3 -= ((c2 == 1 || c2 == 2) ? 2 : 1) * (c5 + c6);
            c4 -= (c2 == 1 ? 2 : 1) * (c7 + c8);
        }
        mVar4.c();
        mVar4.c();
        int c9 = mVar4.c();
        for (int i3 = mVar4.a() ? 0 : c; i3 <= c; i3++) {
            mVar4.c();
            mVar4.c();
            mVar4.c();
        }
        mVar4.c();
        mVar4.c();
        mVar4.c();
        mVar4.c();
        mVar4.c();
        mVar4.c();
        if (mVar4.a() && mVar4.a()) {
            a(mVar4);
        }
        mVar4.a(2);
        if (mVar4.a()) {
            mVar4.a(8);
            mVar4.c();
            mVar4.c();
            mVar4.a(1);
        }
        b(mVar4);
        if (mVar4.a()) {
            for (int i4 = 0; i4 < mVar4.c(); i4++) {
                mVar4.a(c9 + 4 + 1);
            }
        }
        mVar4.a(2);
        float f2 = 1.0f;
        if (mVar4.a() && mVar4.a()) {
            int c10 = mVar4.c(8);
            if (c10 == 255) {
                int c11 = mVar4.c(16);
                int c12 = mVar4.c(16);
                if (c11 != 0 && c12 != 0) {
                    f2 = c11 / c12;
                }
                f = f2;
            } else if (c10 < com.google.android.exoplayer2.util.j.b.length) {
                f = com.google.android.exoplayer2.util.j.b[c10];
            } else {
                Log.w("H265Reader", "Unexpected aspect_ratio_idc value: " + c10);
            }
            return Format.a(str, "video/hevc", (String) null, -1, -1, c3, c4, -1.0f, Collections.singletonList(bArr), -1, f, (DrmInitData) null);
        }
        f = 1.0f;
        return Format.a(str, "video/hevc", (String) null, -1, -1, c3, c4, -1.0f, Collections.singletonList(bArr), -1, f, (DrmInitData) null);
    }

    private static void a(com.google.android.exoplayer2.util.m mVar) {
        int i = 0;
        while (i < 4) {
            for (int i2 = 0; i2 < 6; i2 = (i == 3 ? 3 : 1) + i2) {
                if (!mVar.a()) {
                    mVar.c();
                } else {
                    int min = Math.min(64, 1 << ((i << 1) + 4));
                    if (i > 1) {
                        mVar.d();
                    }
                    for (int i3 = 0; i3 < min; i3++) {
                        mVar.d();
                    }
                }
            }
            i++;
        }
    }

    private static void b(com.google.android.exoplayer2.util.m mVar) {
        int c = mVar.c();
        int i = 0;
        int i2 = 0;
        boolean z = false;
        while (i < c) {
            boolean a2 = i != 0 ? mVar.a() : z;
            if (a2) {
                mVar.a(1);
                mVar.c();
                for (int i3 = 0; i3 <= i2; i3++) {
                    if (mVar.a()) {
                        mVar.a(1);
                    }
                }
            } else {
                int c2 = mVar.c();
                int c3 = mVar.c();
                i2 = c2 + c3;
                for (int i4 = 0; i4 < c2; i4++) {
                    mVar.c();
                    mVar.a(1);
                }
                for (int i5 = 0; i5 < c3; i5++) {
                    mVar.c();
                    mVar.a(1);
                }
            }
            i++;
            z = a2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: H265Reader.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        private final com.google.android.exoplayer2.extractor.n f3268a;
        private long b;
        private boolean c;
        private int d;
        private long e;
        private boolean f;
        private boolean g;
        private boolean h;
        private boolean i;
        private boolean j;
        private long k;
        private long l;
        private boolean m;

        public a(com.google.android.exoplayer2.extractor.n nVar) {
            this.f3268a = nVar;
        }

        public void a() {
            this.f = false;
            this.g = false;
            this.h = false;
            this.i = false;
            this.j = false;
        }

        public void a(long j, int i, int i2, long j2) {
            boolean z = false;
            this.g = false;
            this.h = false;
            this.e = j2;
            this.d = 0;
            this.b = j;
            if (i2 >= 32) {
                if (!this.j && this.i) {
                    a(i);
                    this.i = false;
                }
                if (i2 <= 34) {
                    this.h = !this.j;
                    this.j = true;
                }
            }
            this.c = i2 >= 16 && i2 <= 21;
            if (this.c || i2 <= 9) {
                z = true;
            }
            this.f = z;
        }

        public void a(byte[] bArr, int i, int i2) {
            if (this.f) {
                int i3 = (i + 2) - this.d;
                if (i3 < i2) {
                    this.g = (bArr[i3] & 128) != 0;
                    this.f = false;
                    return;
                }
                this.d += i2 - i;
            }
        }

        public void a(long j, int i) {
            if (this.j && this.g) {
                this.m = this.c;
                this.j = false;
            } else if (this.h || this.g) {
                if (this.i) {
                    a(((int) (j - this.b)) + i);
                }
                this.k = this.b;
                this.l = this.e;
                this.i = true;
                this.m = this.c;
            }
        }

        private void a(int i) {
            this.f3268a.a(this.l, this.m ? 1 : 0, (int) (this.b - this.k), i, null);
        }
    }
}
