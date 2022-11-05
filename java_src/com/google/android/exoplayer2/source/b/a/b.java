package com.google.android.exoplayer2.source.b.a;

import java.util.Collections;
import java.util.List;
/* compiled from: HlsMediaPlaylist.java */
/* loaded from: classes2.dex */
public final class b extends c {

    /* renamed from: a  reason: collision with root package name */
    public final int f3354a;
    public final long b;
    public final long c;
    public final boolean d;
    public final int e;
    public final int f;
    public final int g;
    public final long h;
    public final boolean i;
    public final boolean j;
    public final a k;
    public final List<a> l;
    public final long m;

    /* compiled from: HlsMediaPlaylist.java */
    /* loaded from: classes2.dex */
    public static final class a implements Comparable<Long> {

        /* renamed from: a  reason: collision with root package name */
        public final String f3355a;
        public final long b;
        public final int c;
        public final long d;
        public final boolean e;
        public final String f;
        public final String g;
        public final long h;
        public final long i;

        public a(String str, long j, long j2) {
            this(str, 0L, -1, -9223372036854775807L, false, null, null, j, j2);
        }

        public a(String str, long j, int i, long j2, boolean z, String str2, String str3, long j3, long j4) {
            this.f3355a = str;
            this.b = j;
            this.c = i;
            this.d = j2;
            this.e = z;
            this.f = str2;
            this.g = str3;
            this.h = j3;
            this.i = j4;
        }

        @Override // java.lang.Comparable
        /* renamed from: a */
        public int compareTo(Long l) {
            if (this.d > l.longValue()) {
                return 1;
            }
            return this.d < l.longValue() ? -1 : 0;
        }
    }

    public b(int i, String str, long j, long j2, boolean z, int i2, int i3, int i4, long j3, boolean z2, boolean z3, a aVar, List<a> list) {
        super(str, 1);
        this.f3354a = i;
        this.c = j2;
        this.d = z;
        this.e = i2;
        this.f = i3;
        this.g = i4;
        this.h = j3;
        this.i = z2;
        this.j = z3;
        this.k = aVar;
        this.l = Collections.unmodifiableList(list);
        if (!list.isEmpty()) {
            a aVar2 = list.get(list.size() - 1);
            this.m = aVar2.b + aVar2.d;
        } else {
            this.m = 0L;
        }
        if (j == -9223372036854775807L) {
            j = -9223372036854775807L;
        } else if (j < 0) {
            j += this.m;
        }
        this.b = j;
    }

    public boolean a(b bVar) {
        if (bVar == null || this.f > bVar.f) {
            return true;
        }
        if (this.f < bVar.f) {
            return false;
        }
        int size = this.l.size();
        int size2 = bVar.l.size();
        return size > size2 || (size == size2 && this.i && !bVar.i);
    }

    public long a() {
        return this.c + this.m;
    }

    public b a(long j, int i) {
        return new b(this.f3354a, this.n, this.b, j, true, i, this.f, this.g, this.h, this.i, this.j, this.k, this.l);
    }

    public b b() {
        return this.i ? this : new b(this.f3354a, this.n, this.b, this.c, this.d, this.e, this.f, this.g, this.h, true, this.j, this.k, this.l);
    }
}
