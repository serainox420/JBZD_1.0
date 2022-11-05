package com.flurry.sdk;

import java.lang.ref.WeakReference;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
/* loaded from: classes2.dex */
public final class kk<V> extends FutureTask<V> {

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<Callable<V>> f2965a;
    private final WeakReference<Runnable> b;

    public kk(Runnable runnable, V v) {
        super(runnable, v);
        this.f2965a = new WeakReference<>(null);
        this.b = new WeakReference<>(runnable);
    }

    public final Runnable a() {
        return this.b.get();
    }
}
