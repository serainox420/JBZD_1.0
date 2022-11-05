package com.google.android.exoplayer2.util;

import com.facebook.common.time.Clock;
/* compiled from: TimestampAdjuster.java */
/* loaded from: classes2.dex */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    private long f3518a;
    private long b;
    private volatile long c = -9223372036854775807L;

    public s(long j) {
        a(j);
    }

    public synchronized void a(long j) {
        a.b(this.c == -9223372036854775807L);
        this.f3518a = j;
    }

    public long a() {
        return this.f3518a;
    }

    public long b() {
        if (this.c != -9223372036854775807L) {
            return this.c;
        }
        if (this.f3518a == Clock.MAX_TIME) {
            return -9223372036854775807L;
        }
        return this.f3518a;
    }

    public long c() {
        if (this.f3518a == Clock.MAX_TIME) {
            return 0L;
        }
        if (this.c == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return this.b;
    }

    public void d() {
        this.c = -9223372036854775807L;
    }

    public long b(long j) {
        long j2;
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        if (this.c != -9223372036854775807L) {
            long e = e(this.c);
            long j3 = (4294967296L + e) / 8589934592L;
            j2 = ((j3 - 1) * 8589934592L) + j;
            long j4 = (j3 * 8589934592L) + j;
            if (Math.abs(j2 - e) >= Math.abs(j4 - e)) {
                j2 = j4;
            }
        } else {
            j2 = j;
        }
        return c(d(j2));
    }

    public long c(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        if (this.c != -9223372036854775807L) {
            this.c = j;
        } else {
            if (this.f3518a != Clock.MAX_TIME) {
                this.b = this.f3518a - j;
            }
            synchronized (this) {
                this.c = j;
                notifyAll();
            }
        }
        return this.b + j;
    }

    public synchronized void e() throws InterruptedException {
        while (this.c == -9223372036854775807L) {
            wait();
        }
    }

    public static long d(long j) {
        return (1000000 * j) / 90000;
    }

    public static long e(long j) {
        return (90000 * j) / 1000000;
    }
}
