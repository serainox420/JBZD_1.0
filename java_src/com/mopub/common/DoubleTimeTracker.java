package com.mopub.common;

import android.os.SystemClock;
import com.mopub.common.logging.MoPubLog;
/* loaded from: classes3.dex */
public class DoubleTimeTracker {

    /* renamed from: a  reason: collision with root package name */
    private volatile a f4335a;
    private long b;
    private long c;
    private final Clock d;

    /* loaded from: classes3.dex */
    public interface Clock {
        long elapsedRealTime();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public enum a {
        STARTED,
        PAUSED
    }

    public DoubleTimeTracker() {
        this(new b());
    }

    @VisibleForTesting
    public DoubleTimeTracker(Clock clock) {
        this.d = clock;
        this.f4335a = a.PAUSED;
    }

    public synchronized void start() {
        if (this.f4335a == a.STARTED) {
            MoPubLog.v("DoubleTimeTracker already started.");
        } else {
            this.f4335a = a.STARTED;
            this.b = this.d.elapsedRealTime();
        }
    }

    public synchronized void pause() {
        if (this.f4335a == a.PAUSED) {
            MoPubLog.v("DoubleTimeTracker already paused.");
        } else {
            this.c += a();
            this.b = 0L;
            this.f4335a = a.PAUSED;
        }
    }

    public synchronized double getInterval() {
        return this.c + a();
    }

    private synchronized long a() {
        return this.f4335a == a.PAUSED ? 0L : this.d.elapsedRealTime() - this.b;
    }

    /* loaded from: classes3.dex */
    private static class b implements Clock {
        private b() {
        }

        @Override // com.mopub.common.DoubleTimeTracker.Clock
        public long elapsedRealTime() {
            return SystemClock.elapsedRealtime();
        }
    }
}
