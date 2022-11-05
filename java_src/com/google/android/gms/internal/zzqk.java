package com.google.android.gms.internal;

import java.util.concurrent.TimeUnit;
@zzme
/* loaded from: classes.dex */
public class zzqk<T> implements zzqm<T> {
    private final T mValue;
    private final zzqn zzZc = new zzqn();

    public zzqk(T t) {
        this.mValue = t;
        this.zzZc.zzlm();
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return false;
    }

    @Override // java.util.concurrent.Future
    public T get() {
        return this.mValue;
    }

    @Override // java.util.concurrent.Future
    public T get(long j, TimeUnit timeUnit) {
        return this.mValue;
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return false;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return true;
    }

    @Override // com.google.android.gms.internal.zzqm
    public void zzc(Runnable runnable) {
        this.zzZc.zzc(runnable);
    }

    @Override // com.google.android.gms.internal.zzqm
    public void zzd(Runnable runnable) {
        this.zzZc.zzd(runnable);
    }
}
