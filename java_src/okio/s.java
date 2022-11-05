package okio;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
/* compiled from: Timeout.java */
/* loaded from: classes3.dex */
public class s {
    public static final s NONE = new s() { // from class: okio.s.1
        @Override // okio.s
        public s timeout(long j, TimeUnit timeUnit) {
            return this;
        }

        @Override // okio.s
        public s deadlineNanoTime(long j) {
            return this;
        }

        @Override // okio.s
        public void throwIfReached() throws IOException {
        }
    };
    private long deadlineNanoTime;
    private boolean hasDeadline;
    private long timeoutNanos;

    public s timeout(long j, TimeUnit timeUnit) {
        if (j < 0) {
            throw new IllegalArgumentException("timeout < 0: " + j);
        }
        if (timeUnit == null) {
            throw new IllegalArgumentException("unit == null");
        }
        this.timeoutNanos = timeUnit.toNanos(j);
        return this;
    }

    public long timeoutNanos() {
        return this.timeoutNanos;
    }

    public boolean hasDeadline() {
        return this.hasDeadline;
    }

    public long deadlineNanoTime() {
        if (!this.hasDeadline) {
            throw new IllegalStateException("No deadline");
        }
        return this.deadlineNanoTime;
    }

    public s deadlineNanoTime(long j) {
        this.hasDeadline = true;
        this.deadlineNanoTime = j;
        return this;
    }

    public final s deadline(long j, TimeUnit timeUnit) {
        if (j <= 0) {
            throw new IllegalArgumentException("duration <= 0: " + j);
        }
        if (timeUnit != null) {
            return deadlineNanoTime(System.nanoTime() + timeUnit.toNanos(j));
        }
        throw new IllegalArgumentException("unit == null");
    }

    public s clearTimeout() {
        this.timeoutNanos = 0L;
        return this;
    }

    public s clearDeadline() {
        this.hasDeadline = false;
        return this;
    }

    public void throwIfReached() throws IOException {
        if (Thread.interrupted()) {
            throw new InterruptedIOException("thread interrupted");
        }
        if (this.hasDeadline && this.deadlineNanoTime - System.nanoTime() <= 0) {
            throw new InterruptedIOException("deadline reached");
        }
    }

    public final void waitUntilNotified(Object obj) throws InterruptedIOException {
        long j = 0;
        try {
            boolean hasDeadline = hasDeadline();
            long timeoutNanos = timeoutNanos();
            if (!hasDeadline && timeoutNanos == 0) {
                obj.wait();
                return;
            }
            long nanoTime = System.nanoTime();
            if (hasDeadline && timeoutNanos != 0) {
                timeoutNanos = Math.min(timeoutNanos, deadlineNanoTime() - nanoTime);
            } else if (hasDeadline) {
                timeoutNanos = deadlineNanoTime() - nanoTime;
            }
            if (timeoutNanos > 0) {
                long j2 = timeoutNanos / 1000000;
                obj.wait(j2, (int) (timeoutNanos - (j2 * 1000000)));
                j = System.nanoTime() - nanoTime;
            }
            if (j >= timeoutNanos) {
                throw new InterruptedIOException("timeout");
            }
        } catch (InterruptedException e) {
            throw new InterruptedIOException("interrupted");
        }
    }
}
