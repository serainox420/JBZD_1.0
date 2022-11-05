package okio;

import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.concurrent.TimeUnit;
/* compiled from: AsyncTimeout.java */
/* loaded from: classes3.dex */
public class a extends s {
    private static final long IDLE_TIMEOUT_MILLIS = TimeUnit.SECONDS.toMillis(60);
    private static final long IDLE_TIMEOUT_NANOS = TimeUnit.MILLISECONDS.toNanos(IDLE_TIMEOUT_MILLIS);
    private static final int TIMEOUT_WRITE_SIZE = 65536;
    private static a head;
    private boolean inQueue;
    private a next;
    private long timeoutAt;

    public final void enter() {
        if (this.inQueue) {
            throw new IllegalStateException("Unbalanced enter/exit");
        }
        long timeoutNanos = timeoutNanos();
        boolean hasDeadline = hasDeadline();
        if (timeoutNanos != 0 || hasDeadline) {
            this.inQueue = true;
            scheduleTimeout(this, timeoutNanos, hasDeadline);
        }
    }

    private static synchronized void scheduleTimeout(a aVar, long j, boolean z) {
        synchronized (a.class) {
            if (head == null) {
                head = new a();
                new C0599a().start();
            }
            long nanoTime = System.nanoTime();
            if (j != 0 && z) {
                aVar.timeoutAt = Math.min(j, aVar.deadlineNanoTime() - nanoTime) + nanoTime;
            } else if (j != 0) {
                aVar.timeoutAt = nanoTime + j;
            } else if (z) {
                aVar.timeoutAt = aVar.deadlineNanoTime();
            } else {
                throw new AssertionError();
            }
            long remainingNanos = aVar.remainingNanos(nanoTime);
            a aVar2 = head;
            while (aVar2.next != null && remainingNanos >= aVar2.next.remainingNanos(nanoTime)) {
                aVar2 = aVar2.next;
            }
            aVar.next = aVar2.next;
            aVar2.next = aVar;
            if (aVar2 == head) {
                a.class.notify();
            }
        }
    }

    public final boolean exit() {
        if (!this.inQueue) {
            return false;
        }
        this.inQueue = false;
        return cancelScheduledTimeout(this);
    }

    /* JADX WARN: Code restructure failed: missing block: B:8:0x000b, code lost:
        r0.next = r3.next;
        r3.next = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0012, code lost:
        r0 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static synchronized boolean cancelScheduledTimeout(a aVar) {
        boolean z;
        synchronized (a.class) {
            a aVar2 = head;
            while (true) {
                if (aVar2 != null) {
                    if (aVar2.next == aVar) {
                        break;
                    }
                    aVar2 = aVar2.next;
                } else {
                    z = true;
                    break;
                }
            }
        }
        return z;
    }

    private long remainingNanos(long j) {
        return this.timeoutAt - j;
    }

    protected void timedOut() {
    }

    public final q sink(final q qVar) {
        return new q() { // from class: okio.a.1
            @Override // okio.q
            public void write(c cVar, long j) throws IOException {
                t.a(cVar.b, 0L, j);
                long j2 = j;
                while (j2 > 0) {
                    n nVar = cVar.f5861a;
                    long j3 = 0;
                    while (true) {
                        if (j3 >= 65536) {
                            break;
                        }
                        long j4 = (cVar.f5861a.c - cVar.f5861a.b) + j3;
                        if (j4 >= j2) {
                            j3 = j2;
                            break;
                        } else {
                            nVar = nVar.f;
                            j3 = j4;
                        }
                    }
                    a.this.enter();
                    try {
                        try {
                            qVar.write(cVar, j3);
                            j2 -= j3;
                            a.this.exit(true);
                        } catch (IOException e) {
                            throw a.this.exit(e);
                        }
                    } catch (Throwable th) {
                        a.this.exit(false);
                        throw th;
                    }
                }
            }

            @Override // okio.q, java.io.Flushable
            public void flush() throws IOException {
                a.this.enter();
                try {
                    try {
                        qVar.flush();
                        a.this.exit(true);
                    } catch (IOException e) {
                        throw a.this.exit(e);
                    }
                } catch (Throwable th) {
                    a.this.exit(false);
                    throw th;
                }
            }

            @Override // okio.q, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                a.this.enter();
                try {
                    try {
                        qVar.close();
                        a.this.exit(true);
                    } catch (IOException e) {
                        throw a.this.exit(e);
                    }
                } catch (Throwable th) {
                    a.this.exit(false);
                    throw th;
                }
            }

            @Override // okio.q
            public s timeout() {
                return a.this;
            }

            public String toString() {
                return "AsyncTimeout.sink(" + qVar + ")";
            }
        };
    }

    public final r source(final r rVar) {
        return new r() { // from class: okio.a.2
            @Override // okio.r
            public long read(c cVar, long j) throws IOException {
                a.this.enter();
                try {
                    try {
                        long read = rVar.read(cVar, j);
                        a.this.exit(true);
                        return read;
                    } catch (IOException e) {
                        throw a.this.exit(e);
                    }
                } catch (Throwable th) {
                    a.this.exit(false);
                    throw th;
                }
            }

            @Override // okio.r, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                try {
                    try {
                        rVar.close();
                        a.this.exit(true);
                    } catch (IOException e) {
                        throw a.this.exit(e);
                    }
                } catch (Throwable th) {
                    a.this.exit(false);
                    throw th;
                }
            }

            @Override // okio.r
            public s timeout() {
                return a.this;
            }

            public String toString() {
                return "AsyncTimeout.source(" + rVar + ")";
            }
        };
    }

    final void exit(boolean z) throws IOException {
        if (!exit() || !z) {
            return;
        }
        throw newTimeoutException(null);
    }

    final IOException exit(IOException iOException) throws IOException {
        return !exit() ? iOException : newTimeoutException(iOException);
    }

    protected IOException newTimeoutException(IOException iOException) {
        InterruptedIOException interruptedIOException = new InterruptedIOException("timeout");
        if (iOException != null) {
            interruptedIOException.initCause(iOException);
        }
        return interruptedIOException;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: AsyncTimeout.java */
    /* renamed from: okio.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public static final class C0599a extends Thread {
        public C0599a() {
            super("Okio Watchdog");
            setDaemon(true);
        }

        /* JADX WARN: Code restructure failed: missing block: B:19:0x001d, code lost:
            r0.timedOut();
         */
        @Override // java.lang.Thread, java.lang.Runnable
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void run() {
            while (true) {
                synchronized (a.class) {
                    a awaitTimeout = a.awaitTimeout();
                    if (awaitTimeout != null) {
                        if (awaitTimeout == a.head) {
                            a unused = a.head = null;
                            return;
                        }
                    }
                }
            }
        }
    }

    static a awaitTimeout() throws InterruptedException {
        a aVar = head.next;
        if (aVar == null) {
            long nanoTime = System.nanoTime();
            a.class.wait(IDLE_TIMEOUT_MILLIS);
            if (head.next == null && System.nanoTime() - nanoTime >= IDLE_TIMEOUT_NANOS) {
                return head;
            }
            return null;
        }
        long remainingNanos = aVar.remainingNanos(System.nanoTime());
        if (remainingNanos > 0) {
            long j = remainingNanos / 1000000;
            a.class.wait(j, (int) (remainingNanos - (1000000 * j)));
            return null;
        }
        head.next = aVar.next;
        aVar.next = null;
        return aVar;
    }
}
