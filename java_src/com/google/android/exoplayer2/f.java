package com.google.android.exoplayer2;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import com.google.android.exoplayer2.d;
import com.google.android.exoplayer2.g;
import com.google.android.exoplayer2.n;
import com.google.android.exoplayer2.util.v;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ExoPlayerImpl.java */
/* loaded from: classes2.dex */
public final class f implements d {

    /* renamed from: a  reason: collision with root package name */
    private final j[] f3292a;
    private final com.google.android.exoplayer2.b.h b;
    private final com.google.android.exoplayer2.b.g c;
    private final Handler d;
    private final g e;
    private final CopyOnWriteArraySet<d.a> f;
    private final n.b g;
    private final n.a h;
    private boolean i;
    private boolean j;
    private int k;
    private int l;
    private boolean m;
    private n n;
    private Object o;
    private com.google.android.exoplayer2.source.m p;
    private com.google.android.exoplayer2.b.g q;
    private g.b r;
    private int s;
    private long t;

    @SuppressLint({"HandlerLeak"})
    public f(j[] jVarArr, com.google.android.exoplayer2.b.h hVar, i iVar) {
        Log.i("ExoPlayerImpl", "Init 2.3.1 [" + v.e + "]");
        com.google.android.exoplayer2.util.a.b(jVarArr.length > 0);
        this.f3292a = (j[]) com.google.android.exoplayer2.util.a.a(jVarArr);
        this.b = (com.google.android.exoplayer2.b.h) com.google.android.exoplayer2.util.a.a(hVar);
        this.j = false;
        this.k = 1;
        this.f = new CopyOnWriteArraySet<>();
        this.c = new com.google.android.exoplayer2.b.g(new com.google.android.exoplayer2.b.f[jVarArr.length]);
        this.n = n.f3332a;
        this.g = new n.b();
        this.h = new n.a();
        this.p = com.google.android.exoplayer2.source.m.f3408a;
        this.q = this.c;
        this.d = new Handler() { // from class: com.google.android.exoplayer2.f.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                f.this.a(message);
            }
        };
        this.r = new g.b(0, 0L);
        this.e = new g(jVarArr, hVar, iVar, this.j, this.d, this.r, this);
    }

    @Override // com.google.android.exoplayer2.d
    public void a(d.a aVar) {
        this.f.add(aVar);
    }

    @Override // com.google.android.exoplayer2.d
    public void b(d.a aVar) {
        this.f.remove(aVar);
    }

    @Override // com.google.android.exoplayer2.d
    public int a() {
        return this.k;
    }

    @Override // com.google.android.exoplayer2.d
    public void a(com.google.android.exoplayer2.source.g gVar) {
        a(gVar, true, true);
    }

    public void a(com.google.android.exoplayer2.source.g gVar, boolean z, boolean z2) {
        if (z2) {
            if (!this.n.a() || this.o != null) {
                this.n = n.f3332a;
                this.o = null;
                Iterator<d.a> it = this.f.iterator();
                while (it.hasNext()) {
                    it.next().onTimelineChanged(this.n, this.o);
                }
            }
            if (this.i) {
                this.i = false;
                this.p = com.google.android.exoplayer2.source.m.f3408a;
                this.q = this.c;
                this.b.a((Object) null);
                Iterator<d.a> it2 = this.f.iterator();
                while (it2.hasNext()) {
                    it2.next().a(this.p, this.q);
                }
            }
        }
        this.e.a(gVar, z);
    }

    @Override // com.google.android.exoplayer2.d
    public void a(boolean z) {
        if (this.j != z) {
            this.j = z;
            this.e.a(z);
            Iterator<d.a> it = this.f.iterator();
            while (it.hasNext()) {
                it.next().onPlayerStateChanged(z, this.k);
            }
        }
    }

    @Override // com.google.android.exoplayer2.d
    public boolean b() {
        return this.j;
    }

    @Override // com.google.android.exoplayer2.d
    public void c() {
        b(h());
    }

    public void b(int i) {
        a(i, -9223372036854775807L);
    }

    @Override // com.google.android.exoplayer2.d
    public void a(long j) {
        a(h(), j);
    }

    @Override // com.google.android.exoplayer2.d
    public void a(int i, long j) {
        if (i < 0 || (!this.n.a() && i >= this.n.b())) {
            throw new IllegalSeekPositionException(this.n, i, j);
        }
        this.l++;
        this.s = i;
        if (j == -9223372036854775807L) {
            this.t = 0L;
            this.e.a(this.n, i, -9223372036854775807L);
            return;
        }
        this.t = j;
        this.e.a(this.n, i, b.b(j));
        Iterator<d.a> it = this.f.iterator();
        while (it.hasNext()) {
            it.next().onPositionDiscontinuity();
        }
    }

    @Override // com.google.android.exoplayer2.d
    public void d() {
        this.e.a();
    }

    @Override // com.google.android.exoplayer2.d
    public void e() {
        this.e.b();
        this.d.removeCallbacksAndMessages(null);
    }

    @Override // com.google.android.exoplayer2.d
    public void a(d.c... cVarArr) {
        this.e.a(cVarArr);
    }

    @Override // com.google.android.exoplayer2.d
    public void b(d.c... cVarArr) {
        this.e.b(cVarArr);
    }

    @Override // com.google.android.exoplayer2.d
    public int h() {
        return (this.n.a() || this.l > 0) ? this.s : this.n.a(this.r.f3296a, this.h).c;
    }

    @Override // com.google.android.exoplayer2.d
    public long i() {
        if (this.n.a()) {
            return -9223372036854775807L;
        }
        return this.n.a(h(), this.g).b();
    }

    @Override // com.google.android.exoplayer2.d
    public long j() {
        if (this.n.a() || this.l > 0) {
            return this.t;
        }
        this.n.a(this.r.f3296a, this.h);
        return this.h.b() + b.a(this.r.c);
    }

    @Override // com.google.android.exoplayer2.d
    public long k() {
        if (this.n.a() || this.l > 0) {
            return this.t;
        }
        this.n.a(this.r.f3296a, this.h);
        return this.h.b() + b.a(this.r.d);
    }

    @Override // com.google.android.exoplayer2.d
    public int l() {
        int i;
        long j = 100;
        if (this.n.a()) {
            return 0;
        }
        long k = k();
        long i2 = i();
        if (k == -9223372036854775807L || i2 == -9223372036854775807L) {
            i = 0;
        } else {
            if (i2 != 0) {
                j = (100 * k) / i2;
            }
            i = (int) j;
        }
        return i;
    }

    @Override // com.google.android.exoplayer2.d
    public int a(int i) {
        return this.f3292a[i].a();
    }

    @Override // com.google.android.exoplayer2.d
    public com.google.android.exoplayer2.b.g f() {
        return this.q;
    }

    @Override // com.google.android.exoplayer2.d
    public n g() {
        return this.n;
    }

    void a(Message message) {
        switch (message.what) {
            case 1:
                this.k = message.arg1;
                Iterator<d.a> it = this.f.iterator();
                while (it.hasNext()) {
                    it.next().onPlayerStateChanged(this.j, this.k);
                }
                return;
            case 2:
                this.m = message.arg1 != 0;
                Iterator<d.a> it2 = this.f.iterator();
                while (it2.hasNext()) {
                    it2.next().onLoadingChanged(this.m);
                }
                return;
            case 3:
                com.google.android.exoplayer2.b.i iVar = (com.google.android.exoplayer2.b.i) message.obj;
                this.i = true;
                this.p = iVar.f3180a;
                this.q = iVar.b;
                this.b.a(iVar.c);
                Iterator<d.a> it3 = this.f.iterator();
                while (it3.hasNext()) {
                    it3.next().a(this.p, this.q);
                }
                return;
            case 4:
                int i = this.l - 1;
                this.l = i;
                if (i == 0) {
                    this.r = (g.b) message.obj;
                    if (message.arg1 != 0) {
                        Iterator<d.a> it4 = this.f.iterator();
                        while (it4.hasNext()) {
                            it4.next().onPositionDiscontinuity();
                        }
                        return;
                    }
                    return;
                }
                return;
            case 5:
                if (this.l == 0) {
                    this.r = (g.b) message.obj;
                    Iterator<d.a> it5 = this.f.iterator();
                    while (it5.hasNext()) {
                        it5.next().onPositionDiscontinuity();
                    }
                    return;
                }
                return;
            case 6:
                g.d dVar = (g.d) message.obj;
                this.n = dVar.f3298a;
                this.o = dVar.b;
                this.r = dVar.c;
                this.l -= dVar.d;
                Iterator<d.a> it6 = this.f.iterator();
                while (it6.hasNext()) {
                    it6.next().onTimelineChanged(this.n, this.o);
                }
                return;
            case 7:
                ExoPlaybackException exoPlaybackException = (ExoPlaybackException) message.obj;
                Iterator<d.a> it7 = this.f.iterator();
                while (it7.hasNext()) {
                    it7.next().onPlayerError(exoPlaybackException);
                }
                return;
            default:
                return;
        }
    }
}
