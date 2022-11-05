package io.realm.internal.async;

import io.realm.m;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadPoolExecutor;
/* compiled from: RealmAsyncTaskImpl.java */
/* loaded from: classes3.dex */
public final class b implements m {

    /* renamed from: a  reason: collision with root package name */
    private final Future<?> f5789a;
    private final ThreadPoolExecutor b;
    private volatile boolean c = false;

    public b(Future<?> future, ThreadPoolExecutor threadPoolExecutor) {
        this.f5789a = future;
        this.b = threadPoolExecutor;
    }
}
