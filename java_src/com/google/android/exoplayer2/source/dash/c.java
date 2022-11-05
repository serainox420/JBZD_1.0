package com.google.android.exoplayer2.source.dash;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import android.util.Log;
import android.util.SparseArray;
import com.facebook.common.time.Clock;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.n;
import com.google.android.exoplayer2.source.a;
import com.google.android.exoplayer2.source.dash.a;
import com.google.android.exoplayer2.source.dash.manifest.k;
import com.google.android.exoplayer2.source.g;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.e;
import com.google.android.exoplayer2.upstream.o;
import com.google.android.exoplayer2.upstream.p;
import com.google.android.exoplayer2.util.v;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Locale;
import java.util.TimeZone;
/* compiled from: DashMediaSource.java */
/* loaded from: classes2.dex */
public final class c implements g {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f3381a;
    private final e.a b;
    private final a.InterfaceC0141a c;
    private final int d;
    private final long e;
    private final a.C0138a f;
    private final com.google.android.exoplayer2.source.dash.manifest.c g;
    private final C0142c h;
    private final Object i;
    private final SparseArray<com.google.android.exoplayer2.source.dash.b> j;
    private final Runnable k;
    private final Runnable l;
    private g.a m;
    private com.google.android.exoplayer2.upstream.e n;
    private Loader o;
    private o p;
    private Uri q;
    private long r;
    private long s;
    private com.google.android.exoplayer2.source.dash.manifest.b t;
    private Handler u;
    private long v;
    private int w;

    public c(Uri uri, e.a aVar, a.InterfaceC0141a interfaceC0141a, Handler handler, com.google.android.exoplayer2.source.a aVar2) {
        this(uri, aVar, interfaceC0141a, 3, -1L, handler, aVar2);
    }

    public c(Uri uri, e.a aVar, a.InterfaceC0141a interfaceC0141a, int i, long j, Handler handler, com.google.android.exoplayer2.source.a aVar2) {
        this(uri, aVar, new com.google.android.exoplayer2.source.dash.manifest.c(), interfaceC0141a, i, j, handler, aVar2);
    }

    public c(Uri uri, e.a aVar, com.google.android.exoplayer2.source.dash.manifest.c cVar, a.InterfaceC0141a interfaceC0141a, int i, long j, Handler handler, com.google.android.exoplayer2.source.a aVar2) {
        this(null, uri, aVar, cVar, interfaceC0141a, i, j, handler, aVar2);
    }

    private c(com.google.android.exoplayer2.source.dash.manifest.b bVar, Uri uri, e.a aVar, com.google.android.exoplayer2.source.dash.manifest.c cVar, a.InterfaceC0141a interfaceC0141a, int i, long j, Handler handler, com.google.android.exoplayer2.source.a aVar2) {
        boolean z = true;
        this.t = bVar;
        this.q = uri;
        this.b = aVar;
        this.g = cVar;
        this.c = interfaceC0141a;
        this.d = i;
        this.e = j;
        this.f3381a = bVar != null;
        this.f = new a.C0138a(handler, aVar2);
        this.i = new Object();
        this.j = new SparseArray<>();
        if (this.f3381a) {
            com.google.android.exoplayer2.util.a.b(bVar.d ? false : z);
            this.h = null;
            this.k = null;
            this.l = null;
            return;
        }
        this.h = new C0142c();
        this.k = new Runnable() { // from class: com.google.android.exoplayer2.source.dash.c.1
            @Override // java.lang.Runnable
            public void run() {
                c.this.c();
            }
        };
        this.l = new Runnable() { // from class: com.google.android.exoplayer2.source.dash.c.2
            @Override // java.lang.Runnable
            public void run() {
                c.this.a(false);
            }
        };
    }

    @Override // com.google.android.exoplayer2.source.g
    public void a(com.google.android.exoplayer2.d dVar, boolean z, g.a aVar) {
        this.m = aVar;
        if (this.f3381a) {
            this.p = new o.a();
            a(false);
            return;
        }
        this.n = this.b.a();
        this.o = new Loader("Loader:DashMediaSource");
        this.p = this.o;
        this.u = new Handler();
        c();
    }

    @Override // com.google.android.exoplayer2.source.g
    public void a() throws IOException {
        this.p.d();
    }

    @Override // com.google.android.exoplayer2.source.g
    public com.google.android.exoplayer2.source.f a(int i, com.google.android.exoplayer2.upstream.b bVar, long j) {
        com.google.android.exoplayer2.source.dash.b bVar2 = new com.google.android.exoplayer2.source.dash.b(this.w + i, this.t, i, this.c, this.d, this.f.a(this.t.a(i).b), this.v, this.p, bVar);
        this.j.put(bVar2.f3379a, bVar2);
        return bVar2;
    }

    @Override // com.google.android.exoplayer2.source.g
    public void a(com.google.android.exoplayer2.source.f fVar) {
        com.google.android.exoplayer2.source.dash.b bVar = (com.google.android.exoplayer2.source.dash.b) fVar;
        bVar.b();
        this.j.remove(bVar.f3379a);
    }

    @Override // com.google.android.exoplayer2.source.g
    public void b() {
        this.n = null;
        this.p = null;
        if (this.o != null) {
            this.o.c();
            this.o = null;
        }
        this.r = 0L;
        this.s = 0L;
        this.t = null;
        if (this.u != null) {
            this.u.removeCallbacksAndMessages(null);
            this.u = null;
        }
        this.v = 0L;
        this.j.clear();
    }

    void a(p<com.google.android.exoplayer2.source.dash.manifest.b> pVar, long j, long j2) {
        this.f.a(pVar.f3497a, pVar.b, j, j2, pVar.e());
        com.google.android.exoplayer2.source.dash.manifest.b d2 = pVar.d();
        int a2 = this.t == null ? 0 : this.t.a();
        int i = 0;
        long j3 = d2.a(0).b;
        while (i < a2 && this.t.a(i).b < j3) {
            i++;
        }
        if (a2 - i > d2.a()) {
            Log.w("DashMediaSource", "Out of sync manifest");
            d();
            return;
        }
        this.t = d2;
        this.r = j - j2;
        this.s = j;
        if (this.t.i != null) {
            synchronized (this.i) {
                if (pVar.f3497a.f3489a == this.q) {
                    this.q = this.t.i;
                }
            }
        }
        if (a2 == 0) {
            if (this.t.h != null) {
                a(this.t.h);
                return;
            } else {
                a(true);
                return;
            }
        }
        this.w += i;
        a(true);
    }

    int a(p<com.google.android.exoplayer2.source.dash.manifest.b> pVar, long j, long j2, IOException iOException) {
        boolean z = iOException instanceof ParserException;
        this.f.a(pVar.f3497a, pVar.b, j, j2, pVar.e(), iOException, z);
        return z ? 3 : 0;
    }

    void b(p<Long> pVar, long j, long j2) {
        this.f.a(pVar.f3497a, pVar.b, j, j2, pVar.e());
        a(pVar.d().longValue() - j);
    }

    int b(p<Long> pVar, long j, long j2, IOException iOException) {
        this.f.a(pVar.f3497a, pVar.b, j, j2, pVar.e(), iOException, true);
        a(iOException);
        return 2;
    }

    void c(p<?> pVar, long j, long j2) {
        this.f.b(pVar.f3497a, pVar.b, j, j2, pVar.e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        Uri uri;
        synchronized (this.i) {
            uri = this.q;
        }
        a(new p(this.n, uri, 4, this.g), this.h, this.d);
    }

    private void a(k kVar) {
        String str = kVar.f3404a;
        if (v.a(str, "urn:mpeg:dash:utc:direct:2012")) {
            b(kVar);
        } else if (v.a(str, "urn:mpeg:dash:utc:http-iso:2014")) {
            a(kVar, new b());
        } else if (v.a(str, "urn:mpeg:dash:utc:http-xsdate:2012") || v.a(str, "urn:mpeg:dash:utc:http-xsdate:2014")) {
            a(kVar, new f());
        } else {
            a(new IOException("Unsupported UTC timing scheme"));
        }
    }

    private void b(k kVar) {
        try {
            a(v.f(kVar.b) - this.s);
        } catch (ParserException e2) {
            a(e2);
        }
    }

    private void a(k kVar, p.a<Long> aVar) {
        a(new p(this.n, Uri.parse(kVar.b), 5, aVar), new e(), 1);
    }

    private void a(long j) {
        this.v = j;
        a(true);
    }

    private void a(IOException iOException) {
        Log.e("DashMediaSource", "Failed to resolve UtcTiming element.", iOException);
        a(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        long j;
        boolean z2;
        long j2;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.j.size()) {
                break;
            }
            int keyAt = this.j.keyAt(i2);
            if (keyAt >= this.w) {
                this.j.valueAt(i2).a(this.t, keyAt - this.w);
            }
            i = i2 + 1;
        }
        int a2 = this.t.a() - 1;
        d a3 = d.a(this.t.a(0), this.t.c(0));
        d a4 = d.a(this.t.a(a2), this.t.c(a2));
        long j3 = a3.b;
        long j4 = a4.c;
        if (!this.t.d || a4.f3385a) {
            j = j3;
            z2 = false;
            j2 = j4;
        } else {
            long min = Math.min((e() - com.google.android.exoplayer2.b.b(this.t.f3393a)) - com.google.android.exoplayer2.b.b(this.t.a(a2).b), j4);
            if (this.t.f != -9223372036854775807L) {
                long b2 = min - com.google.android.exoplayer2.b.b(this.t.f);
                int i3 = a2;
                while (b2 < 0 && i3 > 0) {
                    i3--;
                    b2 += this.t.c(i3);
                }
                if (i3 == 0) {
                    j3 = Math.max(j3, b2);
                } else {
                    j3 = this.t.c(0);
                }
            }
            j = j3;
            z2 = true;
            j2 = min;
        }
        long j5 = j2 - j;
        for (int i4 = 0; i4 < this.t.a() - 1; i4++) {
            j5 += this.t.c(i4);
        }
        long j6 = 0;
        if (this.t.d) {
            long j7 = this.e;
            if (j7 == -1) {
                j7 = this.t.g != -9223372036854775807L ? this.t.g : NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS;
            }
            j6 = j5 - com.google.android.exoplayer2.b.b(j7);
            if (j6 < 5000000) {
                j6 = Math.min(5000000L, j5 / 2);
            }
        }
        this.m.a(new a(this.t.f3393a, this.t.f3393a + this.t.a(0).b + com.google.android.exoplayer2.b.a(j), this.w, j, j5, j6, this.t), this.t);
        if (!this.f3381a) {
            this.u.removeCallbacks(this.l);
            if (z2) {
                this.u.postDelayed(this.l, 5000L);
            }
            if (z) {
                d();
            }
        }
    }

    private void d() {
        if (this.t.d) {
            long j = this.t.e;
            if (j == 0) {
                j = 5000;
            }
            this.u.postDelayed(this.k, Math.max(0L, (j + this.r) - SystemClock.elapsedRealtime()));
        }
    }

    private <T> void a(p<T> pVar, Loader.a<p<T>> aVar, int i) {
        this.f.a(pVar.f3497a, pVar.b, this.o.a(pVar, aVar, i));
    }

    private long e() {
        return this.v != 0 ? com.google.android.exoplayer2.b.b(SystemClock.elapsedRealtime() + this.v) : com.google.android.exoplayer2.b.b(System.currentTimeMillis());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DashMediaSource.java */
    /* loaded from: classes2.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final boolean f3385a;
        public final long b;
        public final long c;

        public static d a(com.google.android.exoplayer2.source.dash.manifest.d dVar, long j) {
            boolean z;
            int size = dVar.c.size();
            long j2 = 0;
            long j3 = Clock.MAX_TIME;
            boolean z2 = false;
            boolean z3 = false;
            int i = 0;
            while (i < size) {
                com.google.android.exoplayer2.source.dash.d e = dVar.c.get(i).c.get(0).e();
                if (e == null) {
                    return new d(true, 0L, j);
                }
                boolean b = e.b() | z2;
                int a2 = e.a(j);
                if (a2 == 0) {
                    z = true;
                    j2 = 0;
                    j3 = 0;
                } else {
                    if (!z3) {
                        int a3 = e.a();
                        j2 = Math.max(j2, e.a(a3));
                        if (a2 != -1) {
                            int i2 = (a2 + a3) - 1;
                            j3 = Math.min(j3, e.a(i2, j) + e.a(i2));
                            z = z3;
                        }
                    }
                    z = z3;
                }
                i++;
                z3 = z;
                z2 = b;
            }
            return new d(z2, j2, j3);
        }

        private d(boolean z, long j, long j2) {
            this.f3385a = z;
            this.b = j;
            this.c = j2;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DashMediaSource.java */
    /* loaded from: classes2.dex */
    public static final class a extends n {
        private final long b;
        private final long c;
        private final int d;
        private final long e;
        private final long f;
        private final long g;
        private final com.google.android.exoplayer2.source.dash.manifest.b h;

        public a(long j, long j2, int i, long j3, long j4, long j5, com.google.android.exoplayer2.source.dash.manifest.b bVar) {
            this.b = j;
            this.c = j2;
            this.d = i;
            this.e = j3;
            this.f = j4;
            this.g = j5;
            this.h = bVar;
        }

        @Override // com.google.android.exoplayer2.n
        public int c() {
            return this.h.a();
        }

        @Override // com.google.android.exoplayer2.n
        public n.a a(int i, n.a aVar, boolean z) {
            Integer num = null;
            com.google.android.exoplayer2.util.a.a(i, 0, this.h.a());
            String str = z ? this.h.a(i).f3396a : null;
            if (z) {
                num = Integer.valueOf(this.d + com.google.android.exoplayer2.util.a.a(i, 0, this.h.a()));
            }
            return aVar.a(str, num, 0, this.h.c(i), com.google.android.exoplayer2.b.b(this.h.a(i).b - this.h.a(0).b) - this.e);
        }

        @Override // com.google.android.exoplayer2.n
        public int b() {
            return 1;
        }

        @Override // com.google.android.exoplayer2.n
        public n.b a(int i, n.b bVar, boolean z, long j) {
            com.google.android.exoplayer2.util.a.a(i, 0, 1);
            return bVar.a(null, this.b, this.c, true, this.h.d, a(j), this.f, 0, this.h.a() - 1, this.e);
        }

        @Override // com.google.android.exoplayer2.n
        public int a(Object obj) {
            int intValue;
            if ((obj instanceof Integer) && (intValue = ((Integer) obj).intValue()) >= this.d && intValue < this.d + c()) {
                return intValue - this.d;
            }
            return -1;
        }

        private long a(long j) {
            com.google.android.exoplayer2.source.dash.d e;
            long j2 = this.g;
            if (!this.h.d) {
                return j2;
            }
            if (j > 0) {
                j2 += j;
                if (j2 > this.f) {
                    return -9223372036854775807L;
                }
            }
            long j3 = j2;
            long j4 = this.e + j3;
            long c = this.h.c(0);
            int i = 0;
            while (i < this.h.a() - 1 && j4 >= c) {
                long j5 = j4 - c;
                int i2 = i + 1;
                long c2 = this.h.c(i2);
                i = i2;
                j4 = j5;
                c = c2;
            }
            com.google.android.exoplayer2.source.dash.manifest.d a2 = this.h.a(i);
            int a3 = a2.a(2);
            return (a3 == -1 || (e = a2.c.get(a3).c.get(0).e()) == null || e.a(c) == 0) ? j3 : (e.a(e.a(j4, c)) + j3) - j4;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DashMediaSource.java */
    /* renamed from: com.google.android.exoplayer2.source.dash.c$c  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public final class C0142c implements Loader.a<p<com.google.android.exoplayer2.source.dash.manifest.b>> {
        private C0142c() {
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.a
        public void a(p<com.google.android.exoplayer2.source.dash.manifest.b> pVar, long j, long j2) {
            c.this.a(pVar, j, j2);
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.a
        public void a(p<com.google.android.exoplayer2.source.dash.manifest.b> pVar, long j, long j2, boolean z) {
            c.this.c(pVar, j, j2);
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.a
        public int a(p<com.google.android.exoplayer2.source.dash.manifest.b> pVar, long j, long j2, IOException iOException) {
            return c.this.a(pVar, j, j2, iOException);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DashMediaSource.java */
    /* loaded from: classes2.dex */
    public final class e implements Loader.a<p<Long>> {
        private e() {
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.a
        public void a(p<Long> pVar, long j, long j2) {
            c.this.b(pVar, j, j2);
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.a
        public void a(p<Long> pVar, long j, long j2, boolean z) {
            c.this.c(pVar, j, j2);
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.a
        public int a(p<Long> pVar, long j, long j2, IOException iOException) {
            return c.this.b(pVar, j, j2, iOException);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DashMediaSource.java */
    /* loaded from: classes2.dex */
    public static final class f implements p.a<Long> {
        private f() {
        }

        @Override // com.google.android.exoplayer2.upstream.p.a
        /* renamed from: a */
        public Long b(Uri uri, InputStream inputStream) throws IOException {
            return Long.valueOf(v.f(new BufferedReader(new InputStreamReader(inputStream)).readLine()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: DashMediaSource.java */
    /* loaded from: classes2.dex */
    public static final class b implements p.a<Long> {
        private b() {
        }

        @Override // com.google.android.exoplayer2.upstream.p.a
        /* renamed from: a */
        public Long b(Uri uri, InputStream inputStream) throws IOException {
            String readLine = new BufferedReader(new InputStreamReader(inputStream)).readLine();
            try {
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss'Z'", Locale.US);
                simpleDateFormat.setTimeZone(TimeZone.getTimeZone("UTC"));
                return Long.valueOf(simpleDateFormat.parse(readLine).getTime());
            } catch (ParseException e) {
                throw new ParserException(e);
            }
        }
    }
}
