package io.fabric.sdk.android.services.concurrency.a;
/* compiled from: RetryState.java */
/* loaded from: classes3.dex */
public class e {

    /* renamed from: a  reason: collision with root package name */
    private final int f5695a;
    private final a b;
    private final d c;

    public e(a aVar, d dVar) {
        this(0, aVar, dVar);
    }

    public e(int i, a aVar, d dVar) {
        this.f5695a = i;
        this.b = aVar;
        this.c = dVar;
    }

    public long a() {
        return this.b.getDelayMillis(this.f5695a);
    }

    public e b() {
        return new e(this.f5695a + 1, this.b, this.c);
    }

    public e c() {
        return new e(this.b, this.c);
    }
}
