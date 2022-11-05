package com.google.android.exoplayer2.upstream;

import android.os.Handler;
import android.os.SystemClock;
import com.google.android.exoplayer2.upstream.c;
/* compiled from: DefaultBandwidthMeter.java */
/* loaded from: classes2.dex */
public final class i implements c, r<Object> {

    /* renamed from: a  reason: collision with root package name */
    private final Handler f3491a;
    private final c.a b;
    private final com.google.android.exoplayer2.util.q c;
    private int d;
    private long e;
    private long f;
    private long g;
    private long h;
    private long i;

    public i() {
        this(null, null);
    }

    public i(Handler handler, c.a aVar) {
        this(handler, aVar, 2000);
    }

    public i(Handler handler, c.a aVar, int i) {
        this.f3491a = handler;
        this.b = aVar;
        this.c = new com.google.android.exoplayer2.util.q(i);
        this.i = -1L;
    }

    @Override // com.google.android.exoplayer2.upstream.c
    public synchronized long a() {
        return this.i;
    }

    @Override // com.google.android.exoplayer2.upstream.r
    public synchronized void a(Object obj, g gVar) {
        if (this.d == 0) {
            this.e = SystemClock.elapsedRealtime();
        }
        this.d++;
    }

    @Override // com.google.android.exoplayer2.upstream.r
    public synchronized void a(Object obj, int i) {
        this.f += i;
    }

    @Override // com.google.android.exoplayer2.upstream.r
    public synchronized void a(Object obj) {
        com.google.android.exoplayer2.util.a.b(this.d > 0);
        long elapsedRealtime = SystemClock.elapsedRealtime();
        int i = (int) (elapsedRealtime - this.e);
        this.g += i;
        this.h += this.f;
        if (i > 0) {
            this.c.a((int) Math.sqrt(this.f), (float) ((this.f * 8000) / i));
            if (this.g >= 2000 || this.h >= 524288) {
                float a2 = this.c.a(0.5f);
                this.i = Float.isNaN(a2) ? -1L : a2;
            }
        }
        a(i, this.f, this.i);
        int i2 = this.d - 1;
        this.d = i2;
        if (i2 > 0) {
            this.e = elapsedRealtime;
        }
        this.f = 0L;
    }

    private void a(final int i, final long j, final long j2) {
        if (this.f3491a != null && this.b != null) {
            this.f3491a.post(new Runnable() { // from class: com.google.android.exoplayer2.upstream.i.1
                @Override // java.lang.Runnable
                public void run() {
                    i.this.b.a(i, j, j2);
                }
            });
        }
    }
}
