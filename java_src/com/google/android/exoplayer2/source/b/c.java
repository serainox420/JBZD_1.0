package com.google.android.exoplayer2.source.b;

import android.net.Uri;
import android.os.SystemClock;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.source.BehindLiveWindowException;
import com.google.android.exoplayer2.source.b.a.a;
import com.google.android.exoplayer2.source.b.a.b;
import com.google.android.exoplayer2.util.u;
import com.google.android.exoplayer2.util.v;
import java.io.IOException;
import java.math.BigInteger;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
/* compiled from: HlsChunkSource.java */
/* loaded from: classes2.dex */
class c {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.e f3361a;
    private final com.google.android.exoplayer2.upstream.e b;
    private final k c;
    private final a.C0139a[] d;
    private final com.google.android.exoplayer2.source.b.a.e e;
    private final com.google.android.exoplayer2.source.l f;
    private final List<Format> g;
    private boolean h;
    private byte[] i;
    private IOException j;
    private Uri k;
    private byte[] l;
    private String m;
    private byte[] n;
    private com.google.android.exoplayer2.b.f o;

    /* compiled from: HlsChunkSource.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public com.google.android.exoplayer2.source.a.c f3362a;
        public boolean b;
        public a.C0139a c;

        public b() {
            a();
        }

        public void a() {
            this.f3362a = null;
            this.b = false;
            this.c = null;
        }
    }

    public c(com.google.android.exoplayer2.source.b.a.e eVar, a.C0139a[] c0139aArr, d dVar, k kVar, List<Format> list) {
        this.e = eVar;
        this.d = c0139aArr;
        this.c = kVar;
        this.g = list;
        Format[] formatArr = new Format[c0139aArr.length];
        int[] iArr = new int[c0139aArr.length];
        for (int i = 0; i < c0139aArr.length; i++) {
            formatArr[i] = c0139aArr[i].b;
            iArr[i] = i;
        }
        this.f3361a = dVar.a(1);
        this.b = dVar.a(3);
        this.f = new com.google.android.exoplayer2.source.l(formatArr);
        this.o = new C0140c(this.f, iArr);
    }

    public void a() throws IOException {
        if (this.j != null) {
            throw this.j;
        }
    }

    public com.google.android.exoplayer2.source.l b() {
        return this.f;
    }

    public void a(com.google.android.exoplayer2.b.f fVar) {
        this.o = fVar;
    }

    public void c() {
        this.j = null;
    }

    public void a(boolean z) {
        this.h = z;
    }

    public void a(f fVar, long j, b bVar) {
        int a2;
        int i;
        com.google.android.exoplayer2.source.b.a.b bVar2;
        a.C0139a c0139a;
        com.google.android.exoplayer2.upstream.g gVar;
        int a3 = fVar == null ? -1 : this.f.a(fVar.c);
        this.o.a(fVar == null ? 0L : Math.max(0L, fVar.f - j));
        int g = this.o.g();
        boolean z = a3 != g;
        a.C0139a c0139a2 = this.d[g];
        if (!this.e.b(c0139a2)) {
            bVar.c = c0139a2;
            return;
        }
        com.google.android.exoplayer2.source.b.a.b a4 = this.e.a(c0139a2);
        if (fVar == null || z) {
            if (fVar != null) {
                j = fVar.f;
            }
            if (!a4.i && j > a4.a()) {
                a2 = a4.f + a4.l.size();
            } else {
                a2 = v.a((List<? extends Comparable<? super Long>>) a4.l, Long.valueOf(j - a4.c), true, !this.e.e() || fVar == null) + a4.f;
                if (a2 < a4.f && fVar != null) {
                    c0139a2 = this.d[a3];
                    a4 = this.e.a(c0139a2);
                    a2 = fVar.f();
                    g = a3;
                }
            }
            i = a2;
            bVar2 = a4;
            c0139a = c0139a2;
        } else {
            i = fVar.f();
            bVar2 = a4;
            c0139a = c0139a2;
        }
        if (i < bVar2.f) {
            this.j = new BehindLiveWindowException();
            return;
        }
        int i2 = i - bVar2.f;
        if (i2 >= bVar2.l.size()) {
            if (bVar2.i) {
                bVar.b = true;
                return;
            } else {
                bVar.c = c0139a;
                return;
            }
        }
        b.a aVar = bVar2.l.get(i2);
        if (aVar.e) {
            Uri a5 = u.a(bVar2.n, aVar.f);
            if (!a5.equals(this.k)) {
                bVar.f3362a = a(a5, aVar.g, g, this.o.b(), this.o.c());
                return;
            } else if (!v.a(aVar.g, this.m)) {
                a(a5, aVar.g, this.l);
            }
        } else {
            d();
        }
        b.a aVar2 = bVar2.k;
        if (aVar2 == null) {
            gVar = null;
        } else {
            gVar = new com.google.android.exoplayer2.upstream.g(u.a(bVar2.n, aVar2.f3355a), aVar2.h, aVar2.i, null);
        }
        long j2 = bVar2.c + aVar.d;
        int i3 = bVar2.e + aVar.c;
        bVar.f3362a = new f(this.f3361a, new com.google.android.exoplayer2.upstream.g(u.a(bVar2.n, aVar.f3355a), aVar.h, aVar.i, null), gVar, c0139a, this.g, this.o.b(), this.o.c(), j2, j2 + aVar.b, i, i3, this.h, this.c.a(i3), fVar, this.l, this.n);
    }

    public void a(com.google.android.exoplayer2.source.a.c cVar) {
        if (cVar instanceof a) {
            a aVar = (a) cVar;
            this.i = aVar.d();
            a(aVar.f3344a.f3489a, aVar.i, aVar.f());
        }
    }

    public boolean a(com.google.android.exoplayer2.source.a.c cVar, boolean z, IOException iOException) {
        return z && com.google.android.exoplayer2.source.a.h.a(this.o, this.o.c(this.f.a(cVar.c)), iOException);
    }

    public void a(a.C0139a c0139a, long j) {
        int c;
        int a2 = this.f.a(c0139a.b);
        if (a2 != -1 && (c = this.o.c(a2)) != -1) {
            this.o.a(c, j);
        }
    }

    private a a(Uri uri, String str, int i, int i2, Object obj) {
        return new a(this.b, new com.google.android.exoplayer2.upstream.g(uri, 0L, -1L, null, 1), this.d[i].b, i2, obj, this.i, str);
    }

    private void a(Uri uri, String str, byte[] bArr) {
        byte[] byteArray = new BigInteger(str.toLowerCase(Locale.getDefault()).startsWith("0x") ? str.substring(2) : str, 16).toByteArray();
        byte[] bArr2 = new byte[16];
        int length = byteArray.length > 16 ? byteArray.length - 16 : 0;
        System.arraycopy(byteArray, length, bArr2, (bArr2.length - byteArray.length) + length, byteArray.length - length);
        this.k = uri;
        this.l = bArr;
        this.m = str;
        this.n = bArr2;
    }

    private void d() {
        this.k = null;
        this.l = null;
        this.m = null;
        this.n = null;
    }

    /* compiled from: HlsChunkSource.java */
    /* renamed from: com.google.android.exoplayer2.source.b.c$c  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    private static final class C0140c extends com.google.android.exoplayer2.b.b {
        private int d;

        public C0140c(com.google.android.exoplayer2.source.l lVar, int[] iArr) {
            super(lVar, iArr);
            this.d = a(lVar.a(0));
        }

        @Override // com.google.android.exoplayer2.b.f
        public void a(long j) {
            long elapsedRealtime = SystemClock.elapsedRealtime();
            if (b(this.d, elapsedRealtime)) {
                for (int i = this.b - 1; i >= 0; i--) {
                    if (!b(i, elapsedRealtime)) {
                        this.d = i;
                        return;
                    }
                }
                throw new IllegalStateException();
            }
        }

        @Override // com.google.android.exoplayer2.b.f
        public int a() {
            return this.d;
        }

        @Override // com.google.android.exoplayer2.b.f
        public int b() {
            return 0;
        }

        @Override // com.google.android.exoplayer2.b.f
        public Object c() {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: HlsChunkSource.java */
    /* loaded from: classes2.dex */
    public static final class a extends com.google.android.exoplayer2.source.a.j {
        public final String i;
        private byte[] j;

        public a(com.google.android.exoplayer2.upstream.e eVar, com.google.android.exoplayer2.upstream.g gVar, Format format, int i, Object obj, byte[] bArr, String str) {
            super(eVar, gVar, 3, format, i, obj, bArr);
            this.i = str;
        }

        @Override // com.google.android.exoplayer2.source.a.j
        protected void a(byte[] bArr, int i) throws IOException {
            this.j = Arrays.copyOf(bArr, i);
        }

        public byte[] f() {
            return this.j;
        }
    }
}
