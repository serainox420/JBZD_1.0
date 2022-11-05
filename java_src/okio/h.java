package okio;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
/* compiled from: ForwardingTimeout.java */
/* loaded from: classes3.dex */
public class h extends s {

    /* renamed from: a  reason: collision with root package name */
    private s f5863a;

    public h(s sVar) {
        if (sVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f5863a = sVar;
    }

    public final s a() {
        return this.f5863a;
    }

    public final h a(s sVar) {
        if (sVar == null) {
            throw new IllegalArgumentException("delegate == null");
        }
        this.f5863a = sVar;
        return this;
    }

    @Override // okio.s
    public s timeout(long j, TimeUnit timeUnit) {
        return this.f5863a.timeout(j, timeUnit);
    }

    @Override // okio.s
    public long timeoutNanos() {
        return this.f5863a.timeoutNanos();
    }

    @Override // okio.s
    public boolean hasDeadline() {
        return this.f5863a.hasDeadline();
    }

    @Override // okio.s
    public long deadlineNanoTime() {
        return this.f5863a.deadlineNanoTime();
    }

    @Override // okio.s
    public s deadlineNanoTime(long j) {
        return this.f5863a.deadlineNanoTime(j);
    }

    @Override // okio.s
    public s clearTimeout() {
        return this.f5863a.clearTimeout();
    }

    @Override // okio.s
    public s clearDeadline() {
        return this.f5863a.clearDeadline();
    }

    @Override // okio.s
    public void throwIfReached() throws IOException {
        this.f5863a.throwIfReached();
    }
}
