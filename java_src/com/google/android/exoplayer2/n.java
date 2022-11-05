package com.google.android.exoplayer2;
/* compiled from: Timeline.java */
/* loaded from: classes2.dex */
public abstract class n {

    /* renamed from: a  reason: collision with root package name */
    public static final n f3332a = new n() { // from class: com.google.android.exoplayer2.n.1
        @Override // com.google.android.exoplayer2.n
        public int b() {
            return 0;
        }

        @Override // com.google.android.exoplayer2.n
        public b a(int i, b bVar, boolean z, long j) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.google.android.exoplayer2.n
        public int c() {
            return 0;
        }

        @Override // com.google.android.exoplayer2.n
        public a a(int i, a aVar, boolean z) {
            throw new IndexOutOfBoundsException();
        }

        @Override // com.google.android.exoplayer2.n
        public int a(Object obj) {
            return -1;
        }
    };

    public abstract int a(Object obj);

    public abstract a a(int i, a aVar, boolean z);

    public abstract b a(int i, b bVar, boolean z, long j);

    public abstract int b();

    public abstract int c();

    public final boolean a() {
        return b() == 0;
    }

    public final b a(int i, b bVar) {
        return a(i, bVar, false);
    }

    public b a(int i, b bVar, boolean z) {
        return a(i, bVar, z, 0L);
    }

    public final a a(int i, a aVar) {
        return a(i, aVar, false);
    }

    /* compiled from: Timeline.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public Object f3334a;
        public long b;
        public long c;
        public boolean d;
        public boolean e;
        public int f;
        public int g;
        public long h;
        public long i;
        public long j;

        public b a(Object obj, long j, long j2, boolean z, boolean z2, long j3, long j4, int i, int i2, long j5) {
            this.f3334a = obj;
            this.b = j;
            this.c = j2;
            this.d = z;
            this.e = z2;
            this.h = j3;
            this.i = j4;
            this.f = i;
            this.g = i2;
            this.j = j5;
            return this;
        }

        public long a() {
            return this.h;
        }

        public long b() {
            return com.google.android.exoplayer2.b.a(this.i);
        }

        public long c() {
            return this.j;
        }
    }

    /* compiled from: Timeline.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public Object f3333a;
        public Object b;
        public int c;
        public long d;
        private long e;

        public a a(Object obj, Object obj2, int i, long j, long j2) {
            this.f3333a = obj;
            this.b = obj2;
            this.c = i;
            this.d = j;
            this.e = j2;
            return this;
        }

        public long a() {
            return this.d;
        }

        public long b() {
            return com.google.android.exoplayer2.b.a(this.e);
        }
    }
}
