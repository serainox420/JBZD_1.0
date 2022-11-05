package com.google.android.exoplayer2.extractor.f;

import android.util.Pair;
import com.flurry.android.Constants;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.drm.DrmInitData;
import com.google.android.exoplayer2.extractor.f.u;
import java.util.Arrays;
import java.util.Collections;
/* compiled from: H262Reader.java */
/* loaded from: classes2.dex */
public final class h implements g {
    private static final double[] c = {23.976023976023978d, 24.0d, 25.0d, 29.97002997002997d, 30.0d, 50.0d, 59.94005994005994d, 60.0d};

    /* renamed from: a  reason: collision with root package name */
    private String f3262a;
    private com.google.android.exoplayer2.extractor.n b;
    private boolean d;
    private long e;
    private final boolean[] f = new boolean[4];
    private final a g = new a(128);
    private boolean h;
    private long i;
    private long j;
    private boolean k;
    private boolean l;
    private long m;
    private long n;

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void a() {
        com.google.android.exoplayer2.util.j.a(this.f);
        this.g.a();
        this.k = false;
        this.h = false;
        this.i = 0L;
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void a(com.google.android.exoplayer2.extractor.h hVar, u.c cVar) {
        cVar.a();
        this.f3262a = cVar.c();
        this.b = hVar.a(cVar.b(), 2);
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void a(long j, boolean z) {
        this.k = j != -9223372036854775807L;
        if (this.k) {
            this.j = j;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void a(com.google.android.exoplayer2.util.l lVar) {
        int d = lVar.d();
        int c2 = lVar.c();
        byte[] bArr = lVar.f3511a;
        this.i += lVar.b();
        this.b.a(lVar, lVar.b());
        int i = d;
        while (true) {
            int a2 = com.google.android.exoplayer2.util.j.a(bArr, d, c2, this.f);
            if (a2 == c2) {
                break;
            }
            int i2 = lVar.f3511a[a2 + 3] & Constants.UNKNOWN;
            if (!this.d) {
                int i3 = a2 - i;
                if (i3 > 0) {
                    this.g.a(bArr, i, a2);
                }
                if (this.g.a(i2, i3 < 0 ? -i3 : 0)) {
                    Pair<Format, Long> a3 = a(this.g, this.f3262a);
                    this.b.a((Format) a3.first);
                    this.e = ((Long) a3.second).longValue();
                    this.d = true;
                }
            }
            if (this.d && (i2 == 184 || i2 == 0)) {
                int i4 = c2 - a2;
                if (this.h) {
                    this.b.a(this.n, this.l ? 1 : 0, ((int) (this.i - this.m)) - i4, i4, null);
                    this.l = false;
                }
                if (i2 == 184) {
                    this.h = false;
                    this.l = true;
                } else {
                    this.n = this.k ? this.j : this.n + this.e;
                    this.m = this.i - i4;
                    this.k = false;
                    this.h = true;
                }
            }
            d = a2 + 3;
            i = a2;
        }
        if (!this.d) {
            this.g.a(bArr, i, c2);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.f.g
    public void b() {
    }

    private static Pair<Format, Long> a(a aVar, String str) {
        int i;
        byte[] copyOf = Arrays.copyOf(aVar.c, aVar.f3263a);
        int i2 = copyOf[4] & Constants.UNKNOWN;
        int i3 = copyOf[5] & Constants.UNKNOWN;
        int i4 = (i3 >> 4) | (i2 << 4);
        int i5 = ((i3 & 15) << 8) | (copyOf[6] & Constants.UNKNOWN);
        float f = 1.0f;
        switch ((copyOf[7] & 240) >> 4) {
            case 2:
                f = (i5 * 4) / (i4 * 3);
                break;
            case 3:
                f = (i5 * 16) / (i4 * 9);
                break;
            case 4:
                f = (i5 * 121) / (i4 * 100);
                break;
        }
        Format a2 = Format.a(str, "video/mpeg2", (String) null, -1, -1, i4, i5, -1.0f, Collections.singletonList(copyOf), -1, f, (DrmInitData) null);
        long j = 0;
        int i6 = (copyOf[7] & 15) - 1;
        if (i6 >= 0 && i6 < c.length) {
            double d = c[i6];
            int i7 = aVar.b;
            int i8 = (copyOf[i7 + 9] & 96) >> 5;
            if (i8 != (copyOf[i7 + 9] & 31)) {
                d *= (i8 + 1.0d) / (i + 1);
            }
            j = (long) (1000000.0d / d);
        }
        return Pair.create(a2, Long.valueOf(j));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: H262Reader.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public int f3263a;
        public int b;
        public byte[] c;
        private boolean d;

        public a(int i) {
            this.c = new byte[i];
        }

        public void a() {
            this.d = false;
            this.f3263a = 0;
            this.b = 0;
        }

        public boolean a(int i, int i2) {
            if (this.d) {
                if (this.b == 0 && i == 181) {
                    this.b = this.f3263a;
                } else {
                    this.f3263a -= i2;
                    this.d = false;
                    return true;
                }
            } else if (i == 179) {
                this.d = true;
            }
            return false;
        }

        public void a(byte[] bArr, int i, int i2) {
            if (this.d) {
                int i3 = i2 - i;
                if (this.c.length < this.f3263a + i3) {
                    this.c = Arrays.copyOf(this.c, (this.f3263a + i3) * 2);
                }
                System.arraycopy(bArr, i, this.c, this.f3263a, i3);
                this.f3263a = i3 + this.f3263a;
            }
        }
    }
}
