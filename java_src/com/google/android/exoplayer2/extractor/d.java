package com.google.android.exoplayer2.extractor;

import com.facebook.common.time.Clock;
import com.google.android.exoplayer2.Format;
import com.google.android.exoplayer2.util.v;
import com.inmobi.monetization.internal.InvalidManifestConfigException;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.concurrent.LinkedBlockingDeque;
import java.util.concurrent.atomic.AtomicInteger;
/* compiled from: DefaultTrackOutput.java */
/* loaded from: classes2.dex */
public final class d implements n {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.upstream.b f3235a;
    private final int b;
    private long h;
    private Format i;
    private boolean j;
    private Format k;
    private long l;
    private long m;
    private com.google.android.exoplayer2.upstream.a n;
    private int o;
    private boolean q;
    private c r;
    private final b c = new b();
    private final LinkedBlockingDeque<com.google.android.exoplayer2.upstream.a> d = new LinkedBlockingDeque<>();
    private final a e = new a();
    private final com.google.android.exoplayer2.util.l f = new com.google.android.exoplayer2.util.l(32);
    private final AtomicInteger g = new AtomicInteger();
    private boolean p = true;

    /* compiled from: DefaultTrackOutput.java */
    /* loaded from: classes2.dex */
    public interface c {
        void a(Format format);
    }

    public d(com.google.android.exoplayer2.upstream.b bVar) {
        this.f3235a = bVar;
        this.b = bVar.c();
        this.o = this.b;
    }

    public void a(boolean z) {
        int andSet = this.g.getAndSet(z ? 0 : 2);
        k();
        this.c.b();
        if (andSet == 2) {
            this.i = null;
        }
    }

    public void a(int i) {
        this.c.b(i);
    }

    public void a() {
        this.q = true;
    }

    public int b() {
        return this.c.c();
    }

    public void b(int i) {
        this.m = this.c.a(i);
        c(this.m);
    }

    private void c(long j) {
        int i = (int) (j - this.h);
        int i2 = i / this.b;
        int i3 = i % this.b;
        int size = (this.d.size() - i2) - 1;
        int i4 = i3 == 0 ? size + 1 : size;
        for (int i5 = 0; i5 < i4; i5++) {
            this.f3235a.a(this.d.removeLast());
        }
        this.n = this.d.peekLast();
        this.o = i3 == 0 ? this.b : i3;
    }

    public void c() {
        if (this.g.getAndSet(2) == 0) {
            k();
        }
    }

    public boolean d() {
        return this.c.f();
    }

    public int e() {
        return this.c.d();
    }

    public int f() {
        return this.c.e();
    }

    public Format g() {
        return this.c.g();
    }

    public long h() {
        return this.c.h();
    }

    public boolean a(long j) {
        return a(j, false);
    }

    public boolean a(long j, boolean z) {
        long a2 = this.c.a(j, z);
        if (a2 == -1) {
            return false;
        }
        d(a2);
        return true;
    }

    public int a(com.google.android.exoplayer2.h hVar, com.google.android.exoplayer2.a.e eVar, boolean z, boolean z2, long j) {
        switch (this.c.a(hVar, eVar, z, z2, this.i, this.e)) {
            case InvalidManifestConfigException.MISSING_CONFIG_KEYBOARDHIDDEN /* -5 */:
                this.i = hVar.f3299a;
                return -5;
            case -4:
                if (!eVar.c()) {
                    if (eVar.c < j) {
                        eVar.b(Integer.MIN_VALUE);
                    }
                    if (eVar.e()) {
                        a(eVar, this.e);
                    }
                    eVar.e(this.e.f3236a);
                    a(this.e.b, eVar.b, this.e.f3236a);
                    d(this.e.c);
                }
                return -4;
            case -3:
                return -3;
            default:
                throw new IllegalStateException();
        }
    }

    private void a(com.google.android.exoplayer2.a.e eVar, a aVar) {
        int i;
        long j;
        long j2 = aVar.b;
        this.f.a(1);
        a(j2, this.f.f3511a, 1);
        long j3 = 1 + j2;
        byte b2 = this.f.f3511a[0];
        boolean z = (b2 & 128) != 0;
        int i2 = b2 & Byte.MAX_VALUE;
        if (eVar.f3148a.f3146a == null) {
            eVar.f3148a.f3146a = new byte[16];
        }
        a(j3, eVar.f3148a.f3146a, i2);
        long j4 = j3 + i2;
        if (z) {
            this.f.a(2);
            a(j4, this.f.f3511a, 2);
            i = this.f.g();
            j = j4 + 2;
        } else {
            i = 1;
            j = j4;
        }
        int[] iArr = eVar.f3148a.d;
        if (iArr == null || iArr.length < i) {
            iArr = new int[i];
        }
        int[] iArr2 = eVar.f3148a.e;
        if (iArr2 == null || iArr2.length < i) {
            iArr2 = new int[i];
        }
        if (z) {
            int i3 = i * 6;
            this.f.a(i3);
            a(j, this.f.f3511a, i3);
            j += i3;
            this.f.c(0);
            for (int i4 = 0; i4 < i; i4++) {
                iArr[i4] = this.f.g();
                iArr2[i4] = this.f.s();
            }
        } else {
            iArr[0] = 0;
            iArr2[0] = aVar.f3236a - ((int) (j - aVar.b));
        }
        eVar.f3148a.a(i, iArr, iArr2, aVar.d, eVar.f3148a.f3146a, 1);
        int i5 = (int) (j - aVar.b);
        aVar.b += i5;
        aVar.f3236a -= i5;
    }

    private void a(long j, ByteBuffer byteBuffer, int i) {
        while (i > 0) {
            d(j);
            int i2 = (int) (j - this.h);
            int min = Math.min(i, this.b - i2);
            com.google.android.exoplayer2.upstream.a peek = this.d.peek();
            byteBuffer.put(peek.f3477a, peek.a(i2), min);
            j += min;
            i -= min;
        }
    }

    private void a(long j, byte[] bArr, int i) {
        int i2 = 0;
        while (i2 < i) {
            d(j);
            int i3 = (int) (j - this.h);
            int min = Math.min(i - i2, this.b - i3);
            com.google.android.exoplayer2.upstream.a peek = this.d.peek();
            System.arraycopy(peek.f3477a, peek.a(i3), bArr, i2, min);
            j += min;
            i2 += min;
        }
    }

    private void d(long j) {
        int i = ((int) (j - this.h)) / this.b;
        for (int i2 = 0; i2 < i; i2++) {
            this.f3235a.a(this.d.remove());
            this.h += this.b;
        }
    }

    public void a(c cVar) {
        this.r = cVar;
    }

    public void b(long j) {
        if (this.l != j) {
            this.l = j;
            this.j = true;
        }
    }

    @Override // com.google.android.exoplayer2.extractor.n
    public void a(Format format) {
        Format a2 = a(format, this.l);
        boolean a3 = this.c.a(a2);
        this.k = format;
        this.j = false;
        if (this.r != null && a3) {
            this.r.a(a2);
        }
    }

    @Override // com.google.android.exoplayer2.extractor.n
    public int a(g gVar, int i, boolean z) throws IOException, InterruptedException {
        if (!i()) {
            int a2 = gVar.a(i);
            if (a2 != -1) {
                return a2;
            }
            if (!z) {
                throw new EOFException();
            }
            return -1;
        }
        try {
            int a3 = gVar.a(this.n.f3477a, this.n.a(this.o), c(i));
            if (a3 == -1) {
                if (!z) {
                    throw new EOFException();
                }
                return -1;
            }
            this.o += a3;
            this.m += a3;
            return a3;
        } finally {
            j();
        }
    }

    @Override // com.google.android.exoplayer2.extractor.n
    public void a(com.google.android.exoplayer2.util.l lVar, int i) {
        if (!i()) {
            lVar.d(i);
            return;
        }
        while (i > 0) {
            int c2 = c(i);
            lVar.a(this.n.f3477a, this.n.a(this.o), c2);
            this.o += c2;
            this.m += c2;
            i -= c2;
        }
        j();
    }

    @Override // com.google.android.exoplayer2.extractor.n
    public void a(long j, int i, int i2, int i3, byte[] bArr) {
        if (this.j) {
            a(this.k);
        }
        if (!i()) {
            this.c.a(j);
            return;
        }
        try {
            if (this.q) {
                if ((i & 1) != 0 && this.c.b(j)) {
                    this.q = false;
                } else {
                    return;
                }
            }
            if (this.p) {
                if ((i & 1) != 0) {
                    this.p = false;
                } else {
                    return;
                }
            }
            this.c.a(j + this.l, i, (this.m - i2) - i3, i2, bArr);
        } finally {
            j();
        }
    }

    private boolean i() {
        return this.g.compareAndSet(0, 1);
    }

    private void j() {
        if (!this.g.compareAndSet(1, 0)) {
            k();
        }
    }

    private void k() {
        this.c.a();
        this.f3235a.a((com.google.android.exoplayer2.upstream.a[]) this.d.toArray(new com.google.android.exoplayer2.upstream.a[this.d.size()]));
        this.d.clear();
        this.f3235a.b();
        this.h = 0L;
        this.m = 0L;
        this.n = null;
        this.o = this.b;
        this.p = true;
    }

    private int c(int i) {
        if (this.o == this.b) {
            this.o = 0;
            this.n = this.f3235a.a();
            this.d.add(this.n);
        }
        return Math.min(i, this.b - this.o);
    }

    private static Format a(Format format, long j) {
        if (format == null) {
            return null;
        }
        if (j != 0 && format.v != Clock.MAX_TIME) {
            return format.a(format.v + j);
        }
        return format;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultTrackOutput.java */
    /* loaded from: classes2.dex */
    public static final class b {
        private int i;
        private int j;
        private int k;
        private int l;
        private Format p;
        private int q;

        /* renamed from: a  reason: collision with root package name */
        private int f3239a = 1000;
        private int[] b = new int[this.f3239a];
        private long[] c = new long[this.f3239a];
        private long[] f = new long[this.f3239a];
        private int[] e = new int[this.f3239a];
        private int[] d = new int[this.f3239a];
        private byte[][] g = new byte[this.f3239a];
        private Format[] h = new Format[this.f3239a];
        private long m = Long.MIN_VALUE;
        private long n = Long.MIN_VALUE;
        private boolean o = true;

        public void a() {
            this.j = 0;
            this.k = 0;
            this.l = 0;
            this.i = 0;
        }

        public void b() {
            this.m = Long.MIN_VALUE;
            this.n = Long.MIN_VALUE;
        }

        public int c() {
            return this.j + this.i;
        }

        public long a(int i) {
            int i2;
            int c = c() - i;
            com.google.android.exoplayer2.util.a.a(c >= 0 && c <= this.i);
            if (c == 0) {
                if (this.j == 0) {
                    return 0L;
                }
                return this.d[i2] + this.c[(this.l == 0 ? this.f3239a : this.l) - 1];
            }
            this.i -= c;
            this.l = ((this.l + this.f3239a) - c) % this.f3239a;
            this.n = Long.MIN_VALUE;
            for (int i3 = this.i - 1; i3 >= 0; i3--) {
                int i4 = (this.k + i3) % this.f3239a;
                this.n = Math.max(this.n, this.f[i4]);
                if ((this.e[i4] & 1) != 0) {
                    break;
                }
            }
            return this.c[this.l];
        }

        public void b(int i) {
            this.q = i;
        }

        public int d() {
            return this.j;
        }

        public int e() {
            return this.i == 0 ? this.q : this.b[this.k];
        }

        public synchronized boolean f() {
            return this.i == 0;
        }

        public synchronized Format g() {
            return this.o ? null : this.p;
        }

        public synchronized long h() {
            return Math.max(this.m, this.n);
        }

        public synchronized int a(com.google.android.exoplayer2.h hVar, com.google.android.exoplayer2.a.e eVar, boolean z, boolean z2, Format format, a aVar) {
            long j;
            int i = -4;
            synchronized (this) {
                if (this.i == 0) {
                    if (z2) {
                        eVar.a_(4);
                    } else if (this.p != null && (z || this.p != format)) {
                        hVar.f3299a = this.p;
                        i = -5;
                    } else {
                        i = -3;
                    }
                } else if (z || this.h[this.k] != format) {
                    hVar.f3299a = this.h[this.k];
                    i = -5;
                } else {
                    eVar.c = this.f[this.k];
                    eVar.a_(this.e[this.k]);
                    aVar.f3236a = this.d[this.k];
                    aVar.b = this.c[this.k];
                    aVar.d = this.g[this.k];
                    this.m = Math.max(this.m, eVar.c);
                    this.i--;
                    this.k++;
                    this.j++;
                    if (this.k == this.f3239a) {
                        this.k = 0;
                    }
                    if (this.i > 0) {
                        j = this.c[this.k];
                    } else {
                        j = aVar.b + aVar.f3236a;
                    }
                    aVar.c = j;
                }
            }
            return i;
        }

        public synchronized long a(long j, boolean z) {
            long j2 = -1;
            synchronized (this) {
                if (this.i != 0 && j >= this.f[this.k] && (j <= this.n || z)) {
                    int i = 0;
                    int i2 = this.k;
                    int i3 = -1;
                    while (i2 != this.l && this.f[i2] <= j) {
                        if ((this.e[i2] & 1) != 0) {
                            i3 = i;
                        }
                        i2 = (i2 + 1) % this.f3239a;
                        i++;
                    }
                    if (i3 != -1) {
                        this.i -= i3;
                        this.k = (this.k + i3) % this.f3239a;
                        this.j += i3;
                        j2 = this.c[this.k];
                    }
                }
            }
            return j2;
        }

        public synchronized boolean a(Format format) {
            boolean z = false;
            synchronized (this) {
                if (format == null) {
                    this.o = true;
                } else {
                    this.o = false;
                    if (!v.a(format, this.p)) {
                        this.p = format;
                        z = true;
                    }
                }
            }
            return z;
        }

        public synchronized void a(long j, int i, long j2, int i2, byte[] bArr) {
            com.google.android.exoplayer2.util.a.b(!this.o);
            a(j);
            this.f[this.l] = j;
            this.c[this.l] = j2;
            this.d[this.l] = i2;
            this.e[this.l] = i;
            this.g[this.l] = bArr;
            this.h[this.l] = this.p;
            this.b[this.l] = this.q;
            this.i++;
            if (this.i == this.f3239a) {
                int i3 = this.f3239a + 1000;
                int[] iArr = new int[i3];
                long[] jArr = new long[i3];
                long[] jArr2 = new long[i3];
                int[] iArr2 = new int[i3];
                int[] iArr3 = new int[i3];
                byte[][] bArr2 = new byte[i3];
                Format[] formatArr = new Format[i3];
                int i4 = this.f3239a - this.k;
                System.arraycopy(this.c, this.k, jArr, 0, i4);
                System.arraycopy(this.f, this.k, jArr2, 0, i4);
                System.arraycopy(this.e, this.k, iArr2, 0, i4);
                System.arraycopy(this.d, this.k, iArr3, 0, i4);
                System.arraycopy(this.g, this.k, bArr2, 0, i4);
                System.arraycopy(this.h, this.k, formatArr, 0, i4);
                System.arraycopy(this.b, this.k, iArr, 0, i4);
                int i5 = this.k;
                System.arraycopy(this.c, 0, jArr, i4, i5);
                System.arraycopy(this.f, 0, jArr2, i4, i5);
                System.arraycopy(this.e, 0, iArr2, i4, i5);
                System.arraycopy(this.d, 0, iArr3, i4, i5);
                System.arraycopy(this.g, 0, bArr2, i4, i5);
                System.arraycopy(this.h, 0, formatArr, i4, i5);
                System.arraycopy(this.b, 0, iArr, i4, i5);
                this.c = jArr;
                this.f = jArr2;
                this.e = iArr2;
                this.d = iArr3;
                this.g = bArr2;
                this.h = formatArr;
                this.b = iArr;
                this.k = 0;
                this.l = this.f3239a;
                this.i = this.f3239a;
                this.f3239a = i3;
            } else {
                this.l++;
                if (this.l == this.f3239a) {
                    this.l = 0;
                }
            }
        }

        public synchronized void a(long j) {
            this.n = Math.max(this.n, j);
        }

        public synchronized boolean b(long j) {
            boolean z;
            if (this.m >= j) {
                z = false;
            } else {
                int i = this.i;
                while (i > 0 && this.f[((this.k + i) - 1) % this.f3239a] >= j) {
                    i--;
                }
                a(i + this.j);
                z = true;
            }
            return z;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DefaultTrackOutput.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public int f3236a;
        public long b;
        public long c;
        public byte[] d;

        private a() {
        }
    }
}
