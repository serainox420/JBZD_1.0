package com.google.android.exoplayer2.b;

import android.os.SystemClock;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.b.f;
import com.google.android.exoplayer2.source.l;
/* compiled from: AdaptiveTrackSelection.java */
/* loaded from: classes2.dex */
public class a extends b {
    private final com.google.android.exoplayer2.upstream.c d;
    private final int e;
    private final long f;
    private final long g;
    private final long h;
    private final float i;
    private int j;
    private int k;

    /* compiled from: AdaptiveTrackSelection.java */
    /* renamed from: com.google.android.exoplayer2.b.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0131a implements f.a {

        /* renamed from: a  reason: collision with root package name */
        private final com.google.android.exoplayer2.upstream.c f3171a;
        private final int b;
        private final int c;
        private final int d;
        private final int e;
        private final float f;

        public C0131a(com.google.android.exoplayer2.upstream.c cVar) {
            this(cVar, 800000, 10000, 25000, 25000, 0.75f);
        }

        public C0131a(com.google.android.exoplayer2.upstream.c cVar, int i, int i2, int i3, int i4, float f) {
            this.f3171a = cVar;
            this.b = i;
            this.c = i2;
            this.d = i3;
            this.e = i4;
            this.f = f;
        }

        @Override // com.google.android.exoplayer2.b.f.a
        /* renamed from: a */
        public a b(l lVar, int... iArr) {
            return new a(lVar, iArr, this.f3171a, this.b, this.c, this.d, this.e, this.f);
        }
    }

    public a(l lVar, int[] iArr, com.google.android.exoplayer2.upstream.c cVar, int i, long j, long j2, long j3, float f) {
        super(lVar, iArr);
        this.d = cVar;
        this.e = i;
        this.f = j * 1000;
        this.g = j2 * 1000;
        this.h = j3 * 1000;
        this.i = f;
        this.j = b(Long.MIN_VALUE);
        this.k = 1;
    }

    @Override // com.google.android.exoplayer2.b.f
    public void a(long j) {
        long elapsedRealtime = SystemClock.elapsedRealtime();
        int i = this.j;
        Format f = f();
        int b = b(elapsedRealtime);
        Format a2 = a(b);
        this.j = b;
        if (f != null && !b(this.j, elapsedRealtime)) {
            if (a2.b > f.b && j < this.f) {
                this.j = i;
            } else if (a2.b < f.b && j >= this.g) {
                this.j = i;
            }
        }
        if (this.j != i) {
            this.k = 3;
        }
    }

    @Override // com.google.android.exoplayer2.b.f
    public int a() {
        return this.j;
    }

    @Override // com.google.android.exoplayer2.b.f
    public int b() {
        return this.k;
    }

    @Override // com.google.android.exoplayer2.b.f
    public Object c() {
        return null;
    }

    private int b(long j) {
        long a2;
        long j2 = this.d.a() == -1 ? this.e : ((float) a2) * this.i;
        int i = 0;
        for (int i2 = 0; i2 < this.b; i2++) {
            if (j == Long.MIN_VALUE || !b(i2, j)) {
                if (a(i2).b <= j2) {
                    return i2;
                }
                i = i2;
            }
        }
        return i;
    }
}
