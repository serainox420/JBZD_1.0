package com.google.android.exoplayer2.source.b.a;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.source.a;
import com.google.android.exoplayer2.source.a.h;
import com.google.android.exoplayer2.source.b.a.a;
import com.google.android.exoplayer2.source.b.a.b;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.p;
import com.google.android.exoplayer2.util.u;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.io.IOException;
import java.util.ArrayList;
import java.util.IdentityHashMap;
import java.util.List;
/* compiled from: HlsPlaylistTracker.java */
/* loaded from: classes2.dex */
public final class e implements Loader.a<p<com.google.android.exoplayer2.source.b.a.c>> {

    /* renamed from: a  reason: collision with root package name */
    private final Uri f3358a;
    private final com.google.android.exoplayer2.source.b.d b;
    private final int d;
    private final c g;
    private final a.C0138a j;
    private com.google.android.exoplayer2.source.b.a.a k;
    private a.C0139a l;
    private com.google.android.exoplayer2.source.b.a.b m;
    private boolean n;
    private final List<b> h = new ArrayList();
    private final Loader i = new Loader("HlsPlaylistTracker:MasterPlaylist");
    private final d c = new d();
    private final IdentityHashMap<a.C0139a, a> e = new IdentityHashMap<>();
    private final Handler f = new Handler();

    /* compiled from: HlsPlaylistTracker.java */
    /* loaded from: classes2.dex */
    public interface b {
        void a(a.C0139a c0139a, long j);

        void h();
    }

    /* compiled from: HlsPlaylistTracker.java */
    /* loaded from: classes2.dex */
    public interface c {
        void a(com.google.android.exoplayer2.source.b.a.b bVar);
    }

    public e(Uri uri, com.google.android.exoplayer2.source.b.d dVar, a.C0138a c0138a, int i, c cVar) {
        this.f3358a = uri;
        this.b = dVar;
        this.j = c0138a;
        this.d = i;
        this.g = cVar;
    }

    public void a(b bVar) {
        this.h.add(bVar);
    }

    public void b(b bVar) {
        this.h.remove(bVar);
    }

    public void a() {
        this.i.a(new p(this.b.a(4), this.f3358a, 4, this.c), this, this.d);
    }

    public com.google.android.exoplayer2.source.b.a.a b() {
        return this.k;
    }

    public com.google.android.exoplayer2.source.b.a.b a(a.C0139a c0139a) {
        com.google.android.exoplayer2.source.b.a.b a2 = this.e.get(c0139a).a();
        if (a2 != null) {
            d(c0139a);
        }
        return a2;
    }

    public boolean b(a.C0139a c0139a) {
        return this.e.get(c0139a).b();
    }

    public void c() {
        this.i.c();
        for (a aVar : this.e.values()) {
            aVar.c();
        }
        this.f.removeCallbacksAndMessages(null);
        this.e.clear();
    }

    public void d() throws IOException {
        this.i.d();
        if (this.l == null) {
            return;
        }
        this.e.get(this.l).c.d();
    }

    public void c(a.C0139a c0139a) {
        this.e.get(c0139a).d();
    }

    public boolean e() {
        return this.n;
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.a
    public void a(p<com.google.android.exoplayer2.source.b.a.c> pVar, long j, long j2) {
        com.google.android.exoplayer2.source.b.a.a aVar;
        com.google.android.exoplayer2.source.b.a.c d = pVar.d();
        boolean z = d instanceof com.google.android.exoplayer2.source.b.a.b;
        if (z) {
            aVar = com.google.android.exoplayer2.source.b.a.a.a(d.n);
        } else {
            aVar = (com.google.android.exoplayer2.source.b.a.a) d;
        }
        this.k = aVar;
        this.l = aVar.f3352a.get(0);
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(aVar.f3352a);
        arrayList.addAll(aVar.b);
        arrayList.addAll(aVar.c);
        a(arrayList);
        a aVar2 = this.e.get(this.l);
        if (!z) {
            aVar2.d();
        } else {
            aVar2.a((com.google.android.exoplayer2.source.b.a.b) d);
        }
        this.j.a(pVar.f3497a, 4, j, j2, pVar.e());
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.a
    public void a(p<com.google.android.exoplayer2.source.b.a.c> pVar, long j, long j2, boolean z) {
        this.j.b(pVar.f3497a, 4, j, j2, pVar.e());
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.a
    public int a(p<com.google.android.exoplayer2.source.b.a.c> pVar, long j, long j2, IOException iOException) {
        boolean z = iOException instanceof ParserException;
        this.j.a(pVar.f3497a, 4, j, j2, pVar.e(), iOException, z);
        return z ? 3 : 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean f() {
        List<a.C0139a> list = this.k.f3352a;
        int size = list.size();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        for (int i = 0; i < size; i++) {
            a aVar = this.e.get(list.get(i));
            if (elapsedRealtime > aVar.h) {
                this.l = aVar.b;
                aVar.d();
                return true;
            }
        }
        return false;
    }

    private void d(a.C0139a c0139a) {
        if (this.k.f3352a.contains(c0139a)) {
            if ((this.m == null || !this.m.i) && this.e.get(this.l).g - SystemClock.elapsedRealtime() > 15000) {
                this.l = c0139a;
                this.e.get(this.l).d();
            }
        }
    }

    private void a(List<a.C0139a> list) {
        int size = list.size();
        long elapsedRealtime = SystemClock.elapsedRealtime();
        for (int i = 0; i < size; i++) {
            a.C0139a c0139a = list.get(i);
            this.e.put(c0139a, new a(c0139a, elapsedRealtime));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean a(a.C0139a c0139a, com.google.android.exoplayer2.source.b.a.b bVar) {
        if (c0139a == this.l) {
            if (this.m == null) {
                this.n = !bVar.i;
            }
            this.m = bVar;
            this.g.a(bVar);
        }
        int size = this.h.size();
        for (int i = 0; i < size; i++) {
            this.h.get(i).h();
        }
        return c0139a == this.l && !bVar.i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(a.C0139a c0139a, long j) {
        int size = this.h.size();
        for (int i = 0; i < size; i++) {
            this.h.get(i).a(c0139a, j);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public com.google.android.exoplayer2.source.b.a.b a(com.google.android.exoplayer2.source.b.a.b bVar, com.google.android.exoplayer2.source.b.a.b bVar2) {
        if (!bVar2.a(bVar)) {
            if (bVar2.i) {
                return bVar.b();
            }
            return bVar;
        }
        return bVar2.a(b(bVar, bVar2), c(bVar, bVar2));
    }

    private long b(com.google.android.exoplayer2.source.b.a.b bVar, com.google.android.exoplayer2.source.b.a.b bVar2) {
        if (bVar2.j) {
            return bVar2.c;
        }
        long j = this.m != null ? this.m.c : 0L;
        if (bVar != null) {
            int size = bVar.l.size();
            b.a d = d(bVar, bVar2);
            if (d != null) {
                return bVar.c + d.d;
            }
            if (size == bVar2.f - bVar.f) {
                return bVar.a();
            }
            return j;
        }
        return j;
    }

    private int c(com.google.android.exoplayer2.source.b.a.b bVar, com.google.android.exoplayer2.source.b.a.b bVar2) {
        b.a d;
        if (bVar2.d) {
            return bVar2.e;
        }
        int i = this.m != null ? this.m.e : 0;
        if (bVar != null && (d = d(bVar, bVar2)) != null) {
            return (d.c + bVar.e) - bVar2.l.get(0).c;
        }
        return i;
    }

    private static b.a d(com.google.android.exoplayer2.source.b.a.b bVar, com.google.android.exoplayer2.source.b.a.b bVar2) {
        int i = bVar2.f - bVar.f;
        List<b.a> list = bVar.l;
        if (i < list.size()) {
            return list.get(i);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: HlsPlaylistTracker.java */
    /* loaded from: classes2.dex */
    public final class a implements Loader.a<p<com.google.android.exoplayer2.source.b.a.c>>, Runnable {
        private final a.C0139a b;
        private final Loader c = new Loader("HlsPlaylistTracker:MediaPlaylist");
        private final p<com.google.android.exoplayer2.source.b.a.c> d;
        private com.google.android.exoplayer2.source.b.a.b e;
        private long f;
        private long g;
        private long h;
        private boolean i;

        public a(a.C0139a c0139a, long j) {
            this.b = c0139a;
            this.g = j;
            this.d = new p<>(e.this.b.a(4), u.a(e.this.k.n, c0139a.f3353a), 4, e.this.c);
        }

        public com.google.android.exoplayer2.source.b.a.b a() {
            this.g = SystemClock.elapsedRealtime();
            return this.e;
        }

        public boolean b() {
            if (this.e == null) {
                return false;
            }
            return this.e.i || this.e.f3354a == 2 || this.e.f3354a == 1 || Math.max((long) NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS, com.google.android.exoplayer2.b.a(this.e.m)) + this.f > SystemClock.elapsedRealtime();
        }

        public void c() {
            this.c.c();
        }

        public void d() {
            this.h = 0L;
            if (!this.i && !this.c.a()) {
                this.c.a(this.d, this, e.this.d);
            }
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.a
        public void a(p<com.google.android.exoplayer2.source.b.a.c> pVar, long j, long j2) {
            a((com.google.android.exoplayer2.source.b.a.b) pVar.d());
            e.this.j.a(pVar.f3497a, 4, j, j2, pVar.e());
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.a
        public void a(p<com.google.android.exoplayer2.source.b.a.c> pVar, long j, long j2, boolean z) {
            e.this.j.b(pVar.f3497a, 4, j, j2, pVar.e());
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.a
        public int a(p<com.google.android.exoplayer2.source.b.a.c> pVar, long j, long j2, IOException iOException) {
            boolean z = iOException instanceof ParserException;
            e.this.j.a(pVar.f3497a, 4, j, j2, pVar.e(), iOException, z);
            if (z) {
                return 3;
            }
            boolean z2 = true;
            if (h.a(iOException)) {
                this.h = SystemClock.elapsedRealtime() + 60000;
                e.this.a(this.b, 60000L);
                z2 = e.this.l == this.b && !e.this.f();
            }
            return z2 ? 0 : 2;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.i = false;
            d();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(com.google.android.exoplayer2.source.b.a.b bVar) {
            long j;
            com.google.android.exoplayer2.source.b.a.b bVar2 = this.e;
            this.f = SystemClock.elapsedRealtime();
            this.e = e.this.a(bVar2, bVar);
            if (this.e != bVar2) {
                if (e.this.a(this.b, this.e)) {
                    j = this.e.h;
                }
                j = -9223372036854775807L;
            } else {
                if (!this.e.i) {
                    j = this.e.h / 2;
                }
                j = -9223372036854775807L;
            }
            if (j != -9223372036854775807L) {
                this.i = e.this.f.postDelayed(this, com.google.android.exoplayer2.b.a(j));
            }
        }
    }
}
