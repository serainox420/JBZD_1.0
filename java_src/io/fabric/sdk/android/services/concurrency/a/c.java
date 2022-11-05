package io.fabric.sdk.android.services.concurrency.a;
/* compiled from: ExponentialBackoff.java */
/* loaded from: classes3.dex */
public class c implements a {

    /* renamed from: a  reason: collision with root package name */
    private final long f5694a;
    private final int b;

    public c(long j, int i) {
        this.f5694a = j;
        this.b = i;
    }

    @Override // io.fabric.sdk.android.services.concurrency.a.a
    public long getDelayMillis(int i) {
        return (long) (this.f5694a * Math.pow(this.b, i));
    }
}
