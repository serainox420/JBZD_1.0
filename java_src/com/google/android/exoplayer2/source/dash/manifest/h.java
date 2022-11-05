package com.google.android.exoplayer2.source.dash.manifest;

import com.google.android.exoplayer2.util.v;
import java.util.List;
/* compiled from: SegmentBase.java */
/* loaded from: classes2.dex */
public abstract class h {

    /* renamed from: a  reason: collision with root package name */
    final com.google.android.exoplayer2.source.dash.manifest.e f3400a;
    final long b;
    final long c;

    public h(com.google.android.exoplayer2.source.dash.manifest.e eVar, long j, long j2) {
        this.f3400a = eVar;
        this.b = j;
        this.c = j2;
    }

    public com.google.android.exoplayer2.source.dash.manifest.e a(f fVar) {
        return this.f3400a;
    }

    public long a() {
        return v.a(this.c, 1000000L, this.b);
    }

    /* compiled from: SegmentBase.java */
    /* loaded from: classes2.dex */
    public static class e extends h {
        final long d;
        final long e;

        public e(com.google.android.exoplayer2.source.dash.manifest.e eVar, long j, long j2, long j3, long j4) {
            super(eVar, j, j2);
            this.d = j3;
            this.e = j4;
        }

        public e() {
            this(null, 1L, 0L, 0L, 0L);
        }

        public com.google.android.exoplayer2.source.dash.manifest.e b() {
            if (this.e <= 0) {
                return null;
            }
            return new com.google.android.exoplayer2.source.dash.manifest.e(null, this.d, this.e);
        }
    }

    /* compiled from: SegmentBase.java */
    /* loaded from: classes2.dex */
    public static abstract class a extends h {
        final int d;
        final long e;
        final List<d> f;

        public abstract int a(long j);

        public abstract com.google.android.exoplayer2.source.dash.manifest.e a(f fVar, int i);

        public a(com.google.android.exoplayer2.source.dash.manifest.e eVar, long j, long j2, int i, long j3, List<d> list) {
            super(eVar, j, j2);
            this.d = i;
            this.e = j3;
            this.f = list;
        }

        public int a(long j, long j2) {
            int b = b();
            int a2 = a(j2);
            if (a2 != 0) {
                if (this.f == null) {
                    int i = this.d + ((int) (j / ((this.e * 1000000) / this.b)));
                    if (i < b) {
                        return b;
                    }
                    return a2 == -1 ? i : Math.min(i, (b + a2) - 1);
                }
                int i2 = (b + a2) - 1;
                int i3 = b;
                while (i3 <= i2) {
                    int i4 = ((i2 - i3) / 2) + i3;
                    long a3 = a(i4);
                    if (a3 < j) {
                        i3 = i4 + 1;
                    } else if (a3 <= j) {
                        return i4;
                    } else {
                        i2 = i4 - 1;
                    }
                }
                if (i3 != b) {
                    i3 = i2;
                }
                return i3;
            }
            return b;
        }

        public final long a(int i, long j) {
            if (this.f != null) {
                return (this.f.get(i - this.d).b * 1000000) / this.b;
            }
            int a2 = a(j);
            return (a2 == -1 || i != (a2 + b()) + (-1)) ? (this.e * 1000000) / this.b : j - a(i);
        }

        public final long a(int i) {
            long j;
            if (this.f != null) {
                j = this.f.get(i - this.d).f3401a - this.c;
            } else {
                j = (i - this.d) * this.e;
            }
            return v.a(j, 1000000L, this.b);
        }

        public int b() {
            return this.d;
        }

        public boolean c() {
            return this.f != null;
        }
    }

    /* compiled from: SegmentBase.java */
    /* loaded from: classes2.dex */
    public static class b extends a {
        final List<com.google.android.exoplayer2.source.dash.manifest.e> g;

        public b(com.google.android.exoplayer2.source.dash.manifest.e eVar, long j, long j2, int i, long j3, List<d> list, List<com.google.android.exoplayer2.source.dash.manifest.e> list2) {
            super(eVar, j, j2, i, j3, list);
            this.g = list2;
        }

        @Override // com.google.android.exoplayer2.source.dash.manifest.h.a
        public com.google.android.exoplayer2.source.dash.manifest.e a(f fVar, int i) {
            return this.g.get(i - this.d);
        }

        @Override // com.google.android.exoplayer2.source.dash.manifest.h.a
        public int a(long j) {
            return this.g.size();
        }

        @Override // com.google.android.exoplayer2.source.dash.manifest.h.a
        public boolean c() {
            return true;
        }
    }

    /* compiled from: SegmentBase.java */
    /* loaded from: classes2.dex */
    public static class c extends a {
        final j g;
        final j h;

        public c(com.google.android.exoplayer2.source.dash.manifest.e eVar, long j, long j2, int i, long j3, List<d> list, j jVar, j jVar2) {
            super(eVar, j, j2, i, j3, list);
            this.g = jVar;
            this.h = jVar2;
        }

        @Override // com.google.android.exoplayer2.source.dash.manifest.h
        public com.google.android.exoplayer2.source.dash.manifest.e a(f fVar) {
            return this.g != null ? new com.google.android.exoplayer2.source.dash.manifest.e(this.g.a(fVar.c.f3143a, 0, fVar.c.b, 0L), 0L, -1L) : super.a(fVar);
        }

        @Override // com.google.android.exoplayer2.source.dash.manifest.h.a
        public com.google.android.exoplayer2.source.dash.manifest.e a(f fVar, int i) {
            long j;
            if (this.f != null) {
                j = this.f.get(i - this.d).f3401a;
            } else {
                j = (i - this.d) * this.e;
            }
            return new com.google.android.exoplayer2.source.dash.manifest.e(this.h.a(fVar.c.f3143a, i, fVar.c.b, j), 0L, -1L);
        }

        @Override // com.google.android.exoplayer2.source.dash.manifest.h.a
        public int a(long j) {
            if (this.f != null) {
                return this.f.size();
            }
            if (j != -9223372036854775807L) {
                return (int) v.a(j, (this.e * 1000000) / this.b);
            }
            return -1;
        }
    }

    /* compiled from: SegmentBase.java */
    /* loaded from: classes2.dex */
    public static class d {

        /* renamed from: a  reason: collision with root package name */
        final long f3401a;
        final long b;

        public d(long j, long j2) {
            this.f3401a = j;
            this.b = j2;
        }
    }
}
