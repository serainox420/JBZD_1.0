package com.google.android.exoplayer2;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.os.SystemClock;
import android.util.Log;
import android.util.Pair;
import com.google.android.exoplayer2.b.h;
import com.google.android.exoplayer2.d;
import com.google.android.exoplayer2.n;
import com.google.android.exoplayer2.source.f;
import com.google.android.exoplayer2.source.g;
import com.google.android.exoplayer2.util.o;
import com.google.android.exoplayer2.util.r;
import com.google.android.exoplayer2.util.t;
import java.io.IOException;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ExoPlayerImplInternal.java */
/* loaded from: classes2.dex */
public final class g implements Handler.Callback, h.a, f.a, g.a {
    private long A;
    private a B;
    private a C;
    private a D;
    private n E;

    /* renamed from: a  reason: collision with root package name */
    private final j[] f3294a;
    private final k[] b;
    private final com.google.android.exoplayer2.b.h c;
    private final i d;
    private final r e;
    private final Handler f;
    private final HandlerThread g;
    private final Handler h;
    private final com.google.android.exoplayer2.d i;
    private final n.b j;
    private final n.a k;
    private b l;
    private j m;
    private com.google.android.exoplayer2.util.h n;
    private com.google.android.exoplayer2.source.g o;
    private j[] p;
    private boolean q;
    private boolean r;
    private boolean s;
    private boolean t;
    private int u = 1;
    private int v;
    private int w;
    private long x;
    private int y;
    private c z;

    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes2.dex */
    public static final class b {

        /* renamed from: a  reason: collision with root package name */
        public final int f3296a;
        public final long b;
        public volatile long c;
        public volatile long d;

        public b(int i, long j) {
            this.f3296a = i;
            this.b = j;
            this.c = j;
            this.d = j;
        }

        public b a(int i) {
            b bVar = new b(i, this.b);
            bVar.c = this.c;
            bVar.d = this.d;
            return bVar;
        }
    }

    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes2.dex */
    public static final class d {

        /* renamed from: a  reason: collision with root package name */
        public final n f3298a;
        public final Object b;
        public final b c;
        public final int d;

        public d(n nVar, Object obj, b bVar, int i) {
            this.f3298a = nVar;
            this.b = obj;
            this.c = bVar;
            this.d = i;
        }
    }

    public g(j[] jVarArr, com.google.android.exoplayer2.b.h hVar, i iVar, boolean z, Handler handler, b bVar, com.google.android.exoplayer2.d dVar) {
        this.f3294a = jVarArr;
        this.c = hVar;
        this.d = iVar;
        this.r = z;
        this.h = handler;
        this.l = bVar;
        this.i = dVar;
        this.b = new k[jVarArr.length];
        for (int i = 0; i < jVarArr.length; i++) {
            jVarArr[i].a(i);
            this.b[i] = jVarArr[i].b();
        }
        this.e = new r();
        this.p = new j[0];
        this.j = new n.b();
        this.k = new n.a();
        hVar.a((h.a) this);
        this.g = new o("ExoPlayerImplInternal:Handler", -16);
        this.g.start();
        this.f = new Handler(this.g.getLooper(), this);
    }

    public void a(com.google.android.exoplayer2.source.g gVar, boolean z) {
        this.f.obtainMessage(0, z ? 1 : 0, 0, gVar).sendToTarget();
    }

    public void a(boolean z) {
        this.f.obtainMessage(1, z ? 1 : 0, 0).sendToTarget();
    }

    public void a(n nVar, int i, long j) {
        this.f.obtainMessage(3, new c(nVar, i, j)).sendToTarget();
    }

    public void a() {
        this.f.sendEmptyMessage(4);
    }

    public void a(d.c... cVarArr) {
        if (this.q) {
            Log.w("ExoPlayerImplInternal", "Ignoring messages sent after release.");
            return;
        }
        this.v++;
        this.f.obtainMessage(10, cVarArr).sendToTarget();
    }

    public synchronized void b(d.c... cVarArr) {
        if (this.q) {
            Log.w("ExoPlayerImplInternal", "Ignoring messages sent after release.");
        } else {
            int i = this.v;
            this.v = i + 1;
            this.f.obtainMessage(10, cVarArr).sendToTarget();
            while (this.w <= i) {
                try {
                    wait();
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                }
            }
        }
    }

    public synchronized void b() {
        if (!this.q) {
            this.f.sendEmptyMessage(5);
            while (!this.q) {
                try {
                    wait();
                } catch (InterruptedException e) {
                    Thread.currentThread().interrupt();
                }
            }
            this.g.quit();
        }
    }

    @Override // com.google.android.exoplayer2.source.g.a
    public void a(n nVar, Object obj) {
        this.f.obtainMessage(6, Pair.create(nVar, obj)).sendToTarget();
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.android.exoplayer2.source.f.a
    public void a(com.google.android.exoplayer2.source.f fVar) {
        this.f.obtainMessage(7, fVar).sendToTarget();
    }

    @Override // com.google.android.exoplayer2.source.j.a
    /* renamed from: b */
    public void a(com.google.android.exoplayer2.source.f fVar) {
        this.f.obtainMessage(8, fVar).sendToTarget();
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        boolean z;
        boolean z2 = false;
        try {
            switch (message.what) {
                case 0:
                    com.google.android.exoplayer2.source.g gVar = (com.google.android.exoplayer2.source.g) message.obj;
                    if (message.arg1 != 0) {
                        z2 = true;
                    }
                    b(gVar, z2);
                    z = true;
                    break;
                case 1:
                    if (message.arg1 != 0) {
                        z2 = true;
                    }
                    c(z2);
                    z = true;
                    break;
                case 2:
                    f();
                    z = true;
                    break;
                case 3:
                    a((c) message.obj);
                    z = true;
                    break;
                case 4:
                    g();
                    z = true;
                    break;
                case 5:
                    h();
                    z = true;
                    break;
                case 6:
                    a((Pair) message.obj);
                    z = true;
                    break;
                case 7:
                    c((com.google.android.exoplayer2.source.f) message.obj);
                    z = true;
                    break;
                case 8:
                    d((com.google.android.exoplayer2.source.f) message.obj);
                    z = true;
                    break;
                case 9:
                    i();
                    z = true;
                    break;
                case 10:
                    c((d.c[]) message.obj);
                    z = true;
                    break;
                default:
                    z = false;
                    break;
            }
            return z;
        } catch (ExoPlaybackException e) {
            Log.e("ExoPlayerImplInternal", "Renderer error.", e);
            this.h.obtainMessage(7, e).sendToTarget();
            g();
            return true;
        } catch (IOException e2) {
            Log.e("ExoPlayerImplInternal", "Source error.", e2);
            this.h.obtainMessage(7, ExoPlaybackException.createForSource(e2)).sendToTarget();
            g();
            return true;
        } catch (RuntimeException e3) {
            Log.e("ExoPlayerImplInternal", "Internal runtime error.", e3);
            this.h.obtainMessage(7, ExoPlaybackException.a(e3)).sendToTarget();
            g();
            return true;
        }
    }

    private void a(int i) {
        if (this.u != i) {
            this.u = i;
            this.h.obtainMessage(1, i, 0).sendToTarget();
        }
    }

    private void b(boolean z) {
        if (this.t != z) {
            this.t = z;
            this.h.obtainMessage(2, z ? 1 : 0, 0).sendToTarget();
        }
    }

    private void b(com.google.android.exoplayer2.source.g gVar, boolean z) {
        d(true);
        this.d.a();
        if (z) {
            this.l = new b(0, -9223372036854775807L);
        }
        this.o = gVar;
        gVar.a(this.i, true, (g.a) this);
        a(2);
        this.f.sendEmptyMessage(2);
    }

    private void c(boolean z) throws ExoPlaybackException {
        this.s = false;
        this.r = z;
        if (!z) {
            d();
            e();
        } else if (this.u == 3) {
            c();
            this.f.sendEmptyMessage(2);
        } else if (this.u == 2) {
            this.f.sendEmptyMessage(2);
        }
    }

    private void c() throws ExoPlaybackException {
        this.s = false;
        this.e.a();
        for (j jVar : this.p) {
            jVar.e();
        }
    }

    private void d() throws ExoPlaybackException {
        this.e.b();
        for (j jVar : this.p) {
            a(jVar);
        }
    }

    private void e() throws ExoPlaybackException {
        if (this.D != null) {
            long e = this.D.f3295a.e();
            if (e != -9223372036854775807L) {
                a(e);
            } else {
                if (this.m != null && !this.m.u()) {
                    this.A = this.n.w();
                    this.e.a(this.A);
                } else {
                    this.A = this.e.w();
                }
                e = this.D.b(this.A);
            }
            this.l.c = e;
            this.x = SystemClock.elapsedRealtime() * 1000;
            long f = this.p.length == 0 ? Long.MIN_VALUE : this.D.f3295a.f();
            b bVar = this.l;
            if (f == Long.MIN_VALUE) {
                f = this.E.a(this.D.f, this.k).a();
            }
            bVar.d = f;
        }
    }

    private void f() throws ExoPlaybackException, IOException {
        j[] jVarArr;
        boolean b2;
        long elapsedRealtime = SystemClock.elapsedRealtime();
        k();
        if (this.D == null) {
            j();
            a(elapsedRealtime, 10L);
            return;
        }
        t.a("doSomeWork");
        e();
        this.D.f3295a.b(this.l.c);
        boolean z = true;
        boolean z2 = true;
        for (j jVar : this.p) {
            jVar.a(this.A, this.x);
            z2 = z2 && jVar.u();
            boolean z3 = jVar.t() || jVar.u();
            if (!z3) {
                jVar.j();
            }
            z = z && z3;
        }
        if (!z) {
            j();
        }
        long a2 = this.E.a(this.D.f, this.k).a();
        if (z2 && ((a2 == -9223372036854775807L || a2 <= this.l.c) && this.D.h)) {
            a(4);
            d();
        } else if (this.u == 2) {
            if (this.p.length > 0) {
                b2 = z && e(this.s);
            } else {
                b2 = b(a2);
            }
            if (b2) {
                a(3);
                if (this.r) {
                    c();
                }
            }
        } else if (this.u == 3) {
            if (!(this.p.length > 0 ? z : b(a2))) {
                this.s = this.r;
                a(2);
                d();
            }
        }
        if (this.u == 2) {
            for (j jVar2 : this.p) {
                jVar2.j();
            }
        }
        if ((this.r && this.u == 3) || this.u == 2) {
            a(elapsedRealtime, 10L);
        } else if (this.p.length != 0) {
            a(elapsedRealtime, 1000L);
        } else {
            this.f.removeMessages(2);
        }
        t.a();
    }

    private void a(long j, long j2) {
        this.f.removeMessages(2);
        long elapsedRealtime = (j + j2) - SystemClock.elapsedRealtime();
        if (elapsedRealtime <= 0) {
            this.f.sendEmptyMessage(2);
        } else {
            this.f.sendEmptyMessageDelayed(2, elapsedRealtime);
        }
    }

    private void a(c cVar) throws ExoPlaybackException {
        if (this.E == null) {
            this.y++;
            this.z = cVar;
            return;
        }
        Pair<Integer, Long> b2 = b(cVar);
        if (b2 == null) {
            this.l = new b(0, 0L);
            this.h.obtainMessage(4, 1, 0, this.l).sendToTarget();
            this.l = new b(0, -9223372036854775807L);
            a(4);
            d(false);
            return;
        }
        boolean z = cVar.c == -9223372036854775807L;
        int intValue = ((Integer) b2.first).intValue();
        long longValue = ((Long) b2.second).longValue();
        try {
            if (intValue == this.l.f3296a && longValue / 1000 == this.l.c / 1000) {
                return;
            }
            long a2 = a(intValue, longValue);
            boolean z2 = (longValue != a2) | z;
            this.l = new b(intValue, a2);
            this.h.obtainMessage(4, z2 ? 1 : 0, 0, this.l).sendToTarget();
        } finally {
            this.l = new b(intValue, longValue);
            this.h.obtainMessage(4, z ? 1 : 0, 0, this.l).sendToTarget();
        }
    }

    private long a(int i, long j) throws ExoPlaybackException {
        a aVar;
        d();
        this.s = false;
        a(2);
        if (this.D == null) {
            if (this.B != null) {
                this.B.e();
                aVar = null;
            } else {
                aVar = null;
            }
        } else {
            aVar = null;
            for (a aVar2 = this.D; aVar2 != null; aVar2 = aVar2.k) {
                if (aVar2.f != i || !aVar2.i) {
                    aVar2.e();
                } else {
                    aVar = aVar2;
                }
            }
        }
        if (this.D != aVar || this.D != this.C) {
            for (j jVar : this.p) {
                jVar.l();
            }
            this.p = new j[0];
            this.n = null;
            this.m = null;
            this.D = null;
        }
        if (aVar != null) {
            aVar.k = null;
            this.B = aVar;
            this.C = aVar;
            b(aVar);
            if (this.D.j) {
                j = this.D.f3295a.c(j);
            }
            a(j);
            m();
        } else {
            this.B = null;
            this.C = null;
            this.D = null;
            a(j);
        }
        this.f.sendEmptyMessage(2);
        return j;
    }

    private void a(long j) throws ExoPlaybackException {
        this.A = this.D == null ? 60000000 + j : this.D.a(j);
        this.e.a(this.A);
        for (j jVar : this.p) {
            jVar.a(this.A);
        }
    }

    private void g() {
        d(true);
        this.d.b();
        a(1);
    }

    private void h() {
        d(true);
        this.d.c();
        a(1);
        synchronized (this) {
            this.q = true;
            notifyAll();
        }
    }

    private void d(boolean z) {
        j[] jVarArr;
        this.f.removeMessages(2);
        this.s = false;
        this.e.b();
        this.n = null;
        this.m = null;
        this.A = 60000000L;
        for (j jVar : this.p) {
            try {
                a(jVar);
                jVar.l();
            } catch (ExoPlaybackException | RuntimeException e) {
                Log.e("ExoPlayerImplInternal", "Stop failed.", e);
            }
        }
        this.p = new j[0];
        a(this.D != null ? this.D : this.B);
        this.B = null;
        this.C = null;
        this.D = null;
        b(false);
        if (z) {
            if (this.o != null) {
                this.o.b();
                this.o = null;
            }
            this.E = null;
        }
    }

    private void c(d.c[] cVarArr) throws ExoPlaybackException {
        try {
            for (d.c cVar : cVarArr) {
                cVar.f3196a.a(cVar.b, cVar.c);
            }
            if (this.o != null) {
                this.f.sendEmptyMessage(2);
            }
            synchronized (this) {
                this.w++;
                notifyAll();
            }
        } catch (Throwable th) {
            synchronized (this) {
                this.w++;
                notifyAll();
                throw th;
            }
        }
    }

    private void a(j jVar) throws ExoPlaybackException {
        if (jVar.d() == 2) {
            jVar.k();
        }
    }

    private void i() throws ExoPlaybackException {
        if (this.D != null) {
            boolean z = true;
            for (a aVar = this.D; aVar != null && aVar.i; aVar = aVar.k) {
                if (!aVar.d()) {
                    if (aVar == this.C) {
                        z = false;
                    }
                } else {
                    if (z) {
                        boolean z2 = this.C != this.D;
                        a(this.D.k);
                        this.D.k = null;
                        this.B = this.D;
                        this.C = this.D;
                        boolean[] zArr = new boolean[this.f3294a.length];
                        long a2 = this.D.a(this.l.c, z2, zArr);
                        if (a2 != this.l.c) {
                            this.l.c = a2;
                            a(a2);
                        }
                        boolean[] zArr2 = new boolean[this.f3294a.length];
                        int i = 0;
                        for (int i2 = 0; i2 < this.f3294a.length; i2++) {
                            j jVar = this.f3294a[i2];
                            zArr2[i2] = jVar.d() != 0;
                            com.google.android.exoplayer2.source.i iVar = this.D.c[i2];
                            if (iVar != null) {
                                i++;
                            }
                            if (zArr2[i2]) {
                                if (iVar != jVar.f()) {
                                    if (jVar == this.m) {
                                        if (iVar == null) {
                                            this.e.a(this.n.w());
                                        }
                                        this.n = null;
                                        this.m = null;
                                    }
                                    a(jVar);
                                    jVar.l();
                                } else if (zArr[i2]) {
                                    jVar.a(this.A);
                                }
                            }
                        }
                        this.h.obtainMessage(3, aVar.m).sendToTarget();
                        a(zArr2, i);
                    } else {
                        this.B = aVar;
                        for (a aVar2 = this.B.k; aVar2 != null; aVar2 = aVar2.k) {
                            aVar2.e();
                        }
                        this.B.k = null;
                        if (this.B.i) {
                            this.B.a(Math.max(this.B.g, this.B.b(this.A)), false);
                        }
                    }
                    m();
                    e();
                    this.f.sendEmptyMessage(2);
                    return;
                }
            }
        }
    }

    private boolean b(long j) {
        return j == -9223372036854775807L || this.l.c < j || (this.D.k != null && this.D.k.i);
    }

    private boolean e(boolean z) {
        long f = !this.B.i ? this.B.g : this.B.f3295a.f();
        if (f == Long.MIN_VALUE) {
            if (this.B.h) {
                return true;
            }
            f = this.E.a(this.B.f, this.k).a();
        }
        return this.d.a(f - this.B.b(this.A), z);
    }

    private void j() throws IOException {
        if (this.B == null || this.B.i) {
            return;
        }
        if (this.C == null || this.C.k == this.B) {
            for (j jVar : this.p) {
                if (!jVar.g()) {
                    return;
                }
            }
            this.B.f3295a.c();
        }
    }

    private void a(Pair<n, Object> pair) throws ExoPlaybackException {
        n nVar = this.E;
        this.E = (n) pair.first;
        Object obj = pair.second;
        int i = 0;
        if (nVar == null) {
            if (this.y > 0) {
                Pair<Integer, Long> b2 = b(this.z);
                i = this.y;
                this.y = 0;
                this.z = null;
                if (b2 == null) {
                    a(obj, i);
                    return;
                }
                this.l = new b(((Integer) b2.first).intValue(), ((Long) b2.second).longValue());
            } else if (this.l.b == -9223372036854775807L) {
                if (this.E.a()) {
                    a(obj, 0);
                    return;
                } else {
                    Pair<Integer, Long> b3 = b(0, -9223372036854775807L);
                    this.l = new b(((Integer) b3.first).intValue(), ((Long) b3.second).longValue());
                }
            }
        }
        a aVar = this.D != null ? this.D : this.B;
        if (aVar == null) {
            b(obj, i);
            return;
        }
        int a2 = this.E.a(aVar.b);
        if (a2 == -1) {
            int a3 = a(aVar.f, nVar, this.E);
            if (a3 == -1) {
                a(obj, i);
                return;
            }
            Pair<Integer, Long> b4 = b(this.E.a(a3, this.k).c, -9223372036854775807L);
            int intValue = ((Integer) b4.first).intValue();
            long longValue = ((Long) b4.second).longValue();
            this.E.a(intValue, this.k, true);
            Object obj2 = this.k.b;
            aVar.f = -1;
            a aVar2 = aVar;
            while (aVar2.k != null) {
                aVar2 = aVar2.k;
                aVar2.f = aVar2.b.equals(obj2) ? intValue : -1;
            }
            this.l = new b(intValue, a(intValue, longValue));
            b(obj, i);
            return;
        }
        this.E.a(a2, this.k);
        aVar.a(a2, a2 == this.E.c() + (-1) && !this.E.a(this.k.c, this.j).e);
        boolean z = aVar == this.C;
        if (a2 != this.l.f3296a) {
            this.l = this.l.a(a2);
        }
        a aVar3 = aVar;
        int i2 = a2;
        while (true) {
            if (aVar3.k == null) {
                break;
            }
            a aVar4 = aVar3.k;
            i2++;
            this.E.a(i2, this.k, true);
            boolean z2 = i2 == this.E.c() + (-1) && !this.E.a(this.k.c, this.j).e;
            if (aVar4.b.equals(this.k.b)) {
                aVar4.a(i2, z2);
                z |= aVar4 == this.C;
                aVar3 = aVar4;
            } else if (!z) {
                int i3 = this.D.f;
                this.l = new b(i3, a(i3, this.l.c));
            } else {
                this.B = aVar3;
                this.B.k = null;
                a(aVar4);
            }
        }
        b(obj, i);
    }

    private void a(Object obj, int i) {
        this.l = new b(0, 0L);
        b(obj, i);
        this.l = new b(0, -9223372036854775807L);
        a(4);
        d(false);
    }

    private void b(Object obj, int i) {
        this.h.obtainMessage(6, new d(this.E, obj, this.l, i)).sendToTarget();
    }

    private int a(int i, n nVar, n nVar2) {
        int i2 = -1;
        while (i2 == -1 && i < nVar.c() - 1) {
            i++;
            i2 = nVar2.a(nVar.a(i, this.k, true).b);
        }
        return i2;
    }

    private Pair<Integer, Long> b(c cVar) {
        n nVar = cVar.f3297a;
        n nVar2 = nVar.a() ? this.E : nVar;
        try {
            Pair<Integer, Long> b2 = b(nVar2, cVar.b, cVar.c);
            if (this.E == nVar2) {
                return b2;
            }
            int a2 = this.E.a(nVar2.a(((Integer) b2.first).intValue(), this.k, true).b);
            if (a2 != -1) {
                return Pair.create(Integer.valueOf(a2), b2.second);
            }
            int a3 = a(((Integer) b2.first).intValue(), nVar2, this.E);
            if (a3 != -1) {
                return b(this.E.a(a3, this.k).c, -9223372036854775807L);
            }
            return null;
        } catch (IndexOutOfBoundsException e) {
            throw new IllegalSeekPositionException(this.E, cVar.b, cVar.c);
        }
    }

    private Pair<Integer, Long> b(int i, long j) {
        return b(this.E, i, j);
    }

    private Pair<Integer, Long> b(n nVar, int i, long j) {
        return a(nVar, i, j, 0L);
    }

    private Pair<Integer, Long> a(n nVar, int i, long j, long j2) {
        com.google.android.exoplayer2.util.a.a(i, 0, nVar.b());
        nVar.a(i, this.j, false, j2);
        if (j == -9223372036854775807L) {
            j = this.j.a();
            if (j == -9223372036854775807L) {
                return null;
            }
        }
        int i2 = this.j.f;
        long c2 = this.j.c() + j;
        long a2 = nVar.a(i2, this.k).a();
        while (a2 != -9223372036854775807L && c2 >= a2 && i2 < this.j.g) {
            c2 -= a2;
            i2++;
            a2 = nVar.a(i2, this.k).a();
        }
        return Pair.create(Integer.valueOf(i2), Long.valueOf(c2));
    }

    private void k() throws ExoPlaybackException, IOException {
        if (this.E == null) {
            this.o.a();
            return;
        }
        l();
        if (this.B == null || this.B.b()) {
            b(false);
        } else if (this.B != null && this.B.l) {
            m();
        }
        if (this.D != null) {
            while (this.D != this.C && this.A >= this.D.k.e) {
                this.D.e();
                b(this.D.k);
                this.l = new b(this.D.f, this.D.g);
                e();
                this.h.obtainMessage(5, this.l).sendToTarget();
            }
            if (this.C.h) {
                for (int i = 0; i < this.f3294a.length; i++) {
                    j jVar = this.f3294a[i];
                    com.google.android.exoplayer2.source.i iVar = this.C.c[i];
                    if (iVar != null && jVar.f() == iVar && jVar.g()) {
                        jVar.h();
                    }
                }
                return;
            }
            for (int i2 = 0; i2 < this.f3294a.length; i2++) {
                j jVar2 = this.f3294a[i2];
                com.google.android.exoplayer2.source.i iVar2 = this.C.c[i2];
                if (jVar2.f() == iVar2) {
                    if (iVar2 != null && !jVar2.g()) {
                        return;
                    }
                } else {
                    return;
                }
            }
            if (this.C.k != null && this.C.k.i) {
                com.google.android.exoplayer2.b.i iVar3 = this.C.m;
                this.C = this.C.k;
                com.google.android.exoplayer2.b.i iVar4 = this.C.m;
                boolean z = this.C.f3295a.e() != -9223372036854775807L;
                for (int i3 = 0; i3 < this.f3294a.length; i3++) {
                    j jVar3 = this.f3294a[i3];
                    if (iVar3.b.a(i3) != null) {
                        if (z) {
                            jVar3.h();
                        } else if (!jVar3.i()) {
                            com.google.android.exoplayer2.b.f a2 = iVar4.b.a(i3);
                            l lVar = iVar3.d[i3];
                            l lVar2 = iVar4.d[i3];
                            if (a2 != null && lVar2.equals(lVar)) {
                                Format[] formatArr = new Format[a2.e()];
                                for (int i4 = 0; i4 < formatArr.length; i4++) {
                                    formatArr[i4] = a2.a(i4);
                                }
                                jVar3.a(formatArr, this.C.c[i3], this.C.a());
                            } else {
                                jVar3.h();
                            }
                        }
                    }
                }
            }
        }
    }

    private void l() throws IOException {
        int i;
        int intValue;
        long j = 0;
        if (this.B == null) {
            i = this.l.f3296a;
        } else {
            int i2 = this.B.f;
            if (!this.B.h && this.B.b() && this.E.a(i2, this.k).a() != -9223372036854775807L) {
                if (this.D == null || i2 - this.D.f != 100) {
                    i = this.B.f + 1;
                } else {
                    return;
                }
            } else {
                return;
            }
        }
        if (i >= this.E.c()) {
            this.o.a();
            return;
        }
        if (this.B == null) {
            j = this.l.c;
            intValue = i;
        } else {
            int i3 = this.E.a(i, this.k).c;
            if (i != this.E.a(i3, this.j).f) {
                intValue = i;
            } else {
                Pair<Integer, Long> a2 = a(this.E, i3, -9223372036854775807L, Math.max(0L, (this.B.a() + this.E.a(this.B.f, this.k).a()) - this.A));
                if (a2 != null) {
                    intValue = ((Integer) a2.first).intValue();
                    j = ((Long) a2.second).longValue();
                } else {
                    return;
                }
            }
        }
        long a3 = this.B == null ? j + 60000000 : this.B.a() + this.E.a(this.B.f, this.k).a();
        this.E.a(intValue, this.k, true);
        a aVar = new a(this.f3294a, this.b, a3, this.c, this.d, this.o, this.k.b, intValue, intValue == this.E.c() + (-1) && !this.E.a(this.k.c, this.j).e, j);
        if (this.B != null) {
            this.B.k = aVar;
        }
        this.B = aVar;
        this.B.f3295a.a(this);
        b(true);
    }

    private void c(com.google.android.exoplayer2.source.f fVar) throws ExoPlaybackException {
        if (this.B != null && this.B.f3295a == fVar) {
            this.B.c();
            if (this.D == null) {
                this.C = this.B;
                a(this.C.g);
                b(this.C);
            }
            m();
        }
    }

    private void d(com.google.android.exoplayer2.source.f fVar) {
        if (this.B != null && this.B.f3295a == fVar) {
            m();
        }
    }

    private void m() {
        long b_ = !this.B.i ? 0L : this.B.f3295a.b_();
        if (b_ == Long.MIN_VALUE) {
            b(false);
            return;
        }
        long b2 = this.B.b(this.A);
        boolean a2 = this.d.a(b_ - b2);
        b(a2);
        if (a2) {
            this.B.l = false;
            this.B.f3295a.a(b2);
            return;
        }
        this.B.l = true;
    }

    private void a(a aVar) {
        while (aVar != null) {
            aVar.e();
            aVar = aVar.k;
        }
    }

    private void b(a aVar) throws ExoPlaybackException {
        if (this.D != aVar) {
            boolean[] zArr = new boolean[this.f3294a.length];
            int i = 0;
            for (int i2 = 0; i2 < this.f3294a.length; i2++) {
                j jVar = this.f3294a[i2];
                zArr[i2] = jVar.d() != 0;
                com.google.android.exoplayer2.b.f a2 = aVar.m.b.a(i2);
                if (a2 != null) {
                    i++;
                }
                if (zArr[i2] && (a2 == null || (jVar.i() && jVar.f() == this.D.c[i2]))) {
                    if (jVar == this.m) {
                        this.e.a(this.n.w());
                        this.n = null;
                        this.m = null;
                    }
                    a(jVar);
                    jVar.l();
                }
            }
            this.D = aVar;
            this.h.obtainMessage(3, aVar.m).sendToTarget();
            a(zArr, i);
        }
    }

    private void a(boolean[] zArr, int i) throws ExoPlaybackException {
        this.p = new j[i];
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i3;
            if (i4 < this.f3294a.length) {
                j jVar = this.f3294a[i4];
                com.google.android.exoplayer2.b.f a2 = this.D.m.b.a(i4);
                if (a2 != null) {
                    int i5 = i2 + 1;
                    this.p[i2] = jVar;
                    if (jVar.d() == 0) {
                        l lVar = this.D.m.d[i4];
                        boolean z = this.r && this.u == 3;
                        boolean z2 = !zArr[i4] && z;
                        Format[] formatArr = new Format[a2.e()];
                        for (int i6 = 0; i6 < formatArr.length; i6++) {
                            formatArr[i6] = a2.a(i6);
                        }
                        jVar.a(lVar, formatArr, this.D.c[i4], this.A, z2, this.D.a());
                        com.google.android.exoplayer2.util.h c2 = jVar.c();
                        if (c2 != null) {
                            if (this.n != null) {
                                throw ExoPlaybackException.a(new IllegalStateException("Multiple renderer media clocks enabled."));
                            }
                            this.n = c2;
                            this.m = jVar;
                        }
                        if (z) {
                            jVar.e();
                        }
                    }
                    i2 = i5;
                }
                i3 = i4 + 1;
            } else {
                return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public final com.google.android.exoplayer2.source.f f3295a;
        public final Object b;
        public final com.google.android.exoplayer2.source.i[] c;
        public final boolean[] d;
        public final long e;
        public int f;
        public long g;
        public boolean h;
        public boolean i;
        public boolean j;
        public a k;
        public boolean l;
        public com.google.android.exoplayer2.b.i m;
        private final j[] n;
        private final k[] o;
        private final com.google.android.exoplayer2.b.h p;
        private final i q;
        private final com.google.android.exoplayer2.source.g r;
        private com.google.android.exoplayer2.b.i s;

        public a(j[] jVarArr, k[] kVarArr, long j, com.google.android.exoplayer2.b.h hVar, i iVar, com.google.android.exoplayer2.source.g gVar, Object obj, int i, boolean z, long j2) {
            this.n = jVarArr;
            this.o = kVarArr;
            this.e = j;
            this.p = hVar;
            this.q = iVar;
            this.r = gVar;
            this.b = com.google.android.exoplayer2.util.a.a(obj);
            this.f = i;
            this.h = z;
            this.g = j2;
            this.c = new com.google.android.exoplayer2.source.i[jVarArr.length];
            this.d = new boolean[jVarArr.length];
            this.f3295a = gVar.a(i, iVar.d(), j2);
        }

        public long a(long j) {
            return a() + j;
        }

        public long b(long j) {
            return j - a();
        }

        public long a() {
            return this.e - this.g;
        }

        public void a(int i, boolean z) {
            this.f = i;
            this.h = z;
        }

        public boolean b() {
            return this.i && (!this.j || this.f3295a.f() == Long.MIN_VALUE);
        }

        public void c() throws ExoPlaybackException {
            this.i = true;
            d();
            this.g = a(this.g, false);
        }

        public boolean d() throws ExoPlaybackException {
            com.google.android.exoplayer2.b.i a2 = this.p.a(this.o, this.f3295a.d());
            if (a2.a(this.s)) {
                return false;
            }
            this.m = a2;
            return true;
        }

        public long a(long j, boolean z) {
            return a(j, z, new boolean[this.n.length]);
        }

        public long a(long j, boolean z, boolean[] zArr) {
            com.google.android.exoplayer2.b.g gVar = this.m.b;
            for (int i = 0; i < gVar.f3178a; i++) {
                this.d[i] = !z && this.m.a(this.s, i);
            }
            long a2 = this.f3295a.a(gVar.a(), this.d, this.c, zArr, j);
            this.s = this.m;
            this.j = false;
            for (int i2 = 0; i2 < this.c.length; i2++) {
                if (this.c[i2] != null) {
                    com.google.android.exoplayer2.util.a.b(gVar.a(i2) != null);
                    this.j = true;
                } else {
                    com.google.android.exoplayer2.util.a.b(gVar.a(i2) == null);
                }
            }
            this.q.a(this.n, this.m.f3180a, gVar);
            return a2;
        }

        public void e() {
            try {
                this.r.a(this.f3295a);
            } catch (RuntimeException e) {
                Log.e("ExoPlayerImplInternal", "Period release failed.", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ExoPlayerImplInternal.java */
    /* loaded from: classes2.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        public final n f3297a;
        public final int b;
        public final long c;

        public c(n nVar, int i, long j) {
            this.f3297a = nVar;
            this.b = i;
            this.c = j;
        }
    }
}
