package com.google.android.exoplayer2.source.smoothstreaming;

import android.net.Uri;
import android.os.Handler;
import android.os.SystemClock;
import com.facebook.common.time.Clock;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.source.a;
import com.google.android.exoplayer2.source.f;
import com.google.android.exoplayer2.source.g;
import com.google.android.exoplayer2.source.k;
import com.google.android.exoplayer2.source.smoothstreaming.b;
import com.google.android.exoplayer2.source.smoothstreaming.manifest.SsManifestParser;
import com.google.android.exoplayer2.source.smoothstreaming.manifest.a;
import com.google.android.exoplayer2.upstream.Loader;
import com.google.android.exoplayer2.upstream.e;
import com.google.android.exoplayer2.upstream.o;
import com.google.android.exoplayer2.upstream.p;
import com.google.android.exoplayer2.util.v;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import java.io.IOException;
import java.util.ArrayList;
/* compiled from: SsMediaSource.java */
/* loaded from: classes2.dex */
public final class d implements g, Loader.a<p<com.google.android.exoplayer2.source.smoothstreaming.manifest.a>> {

    /* renamed from: a  reason: collision with root package name */
    private final Uri f3412a;
    private final e.a b;
    private final b.a c;
    private final int d;
    private final long e;
    private final a.C0138a f;
    private final SsManifestParser g;
    private final ArrayList<c> h;
    private g.a i;
    private e j;
    private Loader k;
    private o l;
    private long m;
    private com.google.android.exoplayer2.source.smoothstreaming.manifest.a n;
    private Handler o;

    public d(Uri uri, e.a aVar, b.a aVar2, Handler handler, com.google.android.exoplayer2.source.a aVar3) {
        this(uri, aVar, aVar2, 3, NotificationOptions.SKIP_STEP_THIRTY_SECONDS_IN_MS, handler, aVar3);
    }

    public d(Uri uri, e.a aVar, b.a aVar2, int i, long j, Handler handler, com.google.android.exoplayer2.source.a aVar3) {
        this(uri, aVar, new SsManifestParser(), aVar2, i, j, handler, aVar3);
    }

    public d(Uri uri, e.a aVar, SsManifestParser ssManifestParser, b.a aVar2, int i, long j, Handler handler, com.google.android.exoplayer2.source.a aVar3) {
        this(null, uri, aVar, ssManifestParser, aVar2, i, j, handler, aVar3);
    }

    private d(com.google.android.exoplayer2.source.smoothstreaming.manifest.a aVar, Uri uri, e.a aVar2, SsManifestParser ssManifestParser, b.a aVar3, int i, long j, Handler handler, com.google.android.exoplayer2.source.a aVar4) {
        com.google.android.exoplayer2.util.a.b(aVar == null || !aVar.d);
        this.n = aVar;
        if (uri == null) {
            uri = null;
        } else if (!v.d(uri.getLastPathSegment()).equals("manifest")) {
            uri = Uri.withAppendedPath(uri, "Manifest");
        }
        this.f3412a = uri;
        this.b = aVar2;
        this.g = ssManifestParser;
        this.c = aVar3;
        this.d = i;
        this.e = j;
        this.f = new a.C0138a(handler, aVar4);
        this.h = new ArrayList<>();
    }

    @Override // com.google.android.exoplayer2.source.g
    public void a(com.google.android.exoplayer2.d dVar, boolean z, g.a aVar) {
        this.i = aVar;
        if (this.n != null) {
            this.l = new o.a();
            c();
            return;
        }
        this.j = this.b.a();
        this.k = new Loader("Loader:Manifest");
        this.l = this.k;
        this.o = new Handler();
        e();
    }

    @Override // com.google.android.exoplayer2.source.g
    public void a() throws IOException {
        this.l.d();
    }

    @Override // com.google.android.exoplayer2.source.g
    public f a(int i, com.google.android.exoplayer2.upstream.b bVar, long j) {
        com.google.android.exoplayer2.util.a.a(i == 0);
        c cVar = new c(this.n, this.c, this.d, this.f, this.l, bVar);
        this.h.add(cVar);
        return cVar;
    }

    @Override // com.google.android.exoplayer2.source.g
    public void a(f fVar) {
        ((c) fVar).b();
        this.h.remove(fVar);
    }

    @Override // com.google.android.exoplayer2.source.g
    public void b() {
        this.i = null;
        this.n = null;
        this.j = null;
        this.m = 0L;
        if (this.k != null) {
            this.k.c();
            this.k = null;
        }
        if (this.o != null) {
            this.o.removeCallbacksAndMessages(null);
            this.o = null;
        }
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.a
    public void a(p<com.google.android.exoplayer2.source.smoothstreaming.manifest.a> pVar, long j, long j2) {
        this.f.a(pVar.f3497a, pVar.b, j, j2, pVar.e());
        this.n = pVar.d();
        this.m = j - j2;
        c();
        d();
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.a
    public void a(p<com.google.android.exoplayer2.source.smoothstreaming.manifest.a> pVar, long j, long j2, boolean z) {
        this.f.a(pVar.f3497a, pVar.b, j, j2, pVar.e());
    }

    @Override // com.google.android.exoplayer2.upstream.Loader.a
    public int a(p<com.google.android.exoplayer2.source.smoothstreaming.manifest.a> pVar, long j, long j2, IOException iOException) {
        boolean z = iOException instanceof ParserException;
        this.f.a(pVar.f3497a, pVar.b, j, j2, pVar.e(), iOException, z);
        return z ? 3 : 0;
    }

    private void c() {
        k kVar;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 >= this.h.size()) {
                break;
            }
            this.h.get(i2).a(this.n);
            i = i2 + 1;
        }
        if (this.n.d) {
            long j = Clock.MAX_TIME;
            long j2 = Long.MIN_VALUE;
            for (int i3 = 0; i3 < this.n.f.length; i3++) {
                a.b bVar = this.n.f[i3];
                if (bVar.k > 0) {
                    j = Math.min(j, bVar.a(0));
                    j2 = Math.max(j2, bVar.a(bVar.k - 1) + bVar.b(bVar.k - 1));
                }
            }
            if (j == Clock.MAX_TIME) {
                kVar = new k(-9223372036854775807L, false);
            } else {
                long max = (this.n.h == -9223372036854775807L || this.n.h <= 0) ? j : Math.max(j, j2 - this.n.h);
                long j3 = j2 - max;
                long b = j3 - com.google.android.exoplayer2.b.b(this.e);
                if (b < 5000000) {
                    b = Math.min(5000000L, j3 / 2);
                }
                kVar = new k(-9223372036854775807L, j3, max, b, true, true);
            }
        } else {
            kVar = new k(this.n.g, this.n.g != -9223372036854775807L);
        }
        this.i.a(kVar, this.n);
    }

    private void d() {
        if (this.n.d) {
            this.o.postDelayed(new Runnable() { // from class: com.google.android.exoplayer2.source.smoothstreaming.d.1
                @Override // java.lang.Runnable
                public void run() {
                    d.this.e();
                }
            }, Math.max(0L, (this.m + 5000) - SystemClock.elapsedRealtime()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        p pVar = new p(this.j, this.f3412a, 4, this.g);
        this.f.a(pVar.f3497a, pVar.b, this.k.a(pVar, this, this.d));
    }
}
