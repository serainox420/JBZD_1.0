package com.google.android.gms.internal;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
@zzme
/* loaded from: classes.dex */
public class zzqj<T> implements zzqm<T> {
    private T mValue;
    private boolean zzLs;
    private Throwable zzZa;
    private boolean zzZb;
    private final Object zzrJ = new Object();
    private final zzqn zzZc = new zzqn();

    private boolean zzll() {
        return this.zzZa != null || this.zzZb;
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        boolean z2 = false;
        if (z) {
            synchronized (this.zzrJ) {
                if (!zzll()) {
                    this.zzLs = true;
                    this.zzZb = true;
                    this.zzrJ.notifyAll();
                    this.zzZc.zzlm();
                    z2 = true;
                }
            }
        }
        return z2;
    }

    @Override // java.util.concurrent.Future
    public T get() throws CancellationException, ExecutionException, InterruptedException {
        T t;
        synchronized (this.zzrJ) {
            if (!zzll()) {
                try {
                    this.zzrJ.wait();
                } catch (InterruptedException e) {
                    throw e;
                }
            }
            if (this.zzZa != null) {
                throw new ExecutionException(this.zzZa);
            }
            if (this.zzLs) {
                throw new CancellationException("CallbackFuture was cancelled.");
            }
            t = this.mValue;
        }
        return t;
    }

    @Override // java.util.concurrent.Future
    public T get(long j, TimeUnit timeUnit) throws CancellationException, ExecutionException, InterruptedException, TimeoutException {
        T t;
        synchronized (this.zzrJ) {
            if (!zzll()) {
                try {
                    long millis = timeUnit.toMillis(j);
                    if (millis != 0) {
                        this.zzrJ.wait(millis);
                    }
                } catch (InterruptedException e) {
                    throw e;
                }
            }
            if (this.zzZa != null) {
                throw new ExecutionException(this.zzZa);
            }
            if (!this.zzZb) {
                throw new TimeoutException("CallbackFuture timed out.");
            }
            if (this.zzLs) {
                throw new CancellationException("CallbackFuture was cancelled.");
            }
            t = this.mValue;
        }
        return t;
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        boolean z;
        synchronized (this.zzrJ) {
            z = this.zzLs;
        }
        return z;
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        boolean zzll;
        synchronized (this.zzrJ) {
            zzll = zzll();
        }
        return zzll;
    }

    @Override // com.google.android.gms.internal.zzqm
    public void zzc(Runnable runnable) {
        this.zzZc.zzc(runnable);
    }

    @Override // com.google.android.gms.internal.zzqm
    public void zzd(Runnable runnable) {
        this.zzZc.zzd(runnable);
    }

    public void zze(Throwable th) {
        synchronized (this.zzrJ) {
            if (this.zzLs) {
                return;
            }
            if (zzll()) {
                com.google.android.gms.ads.internal.zzw.zzcQ().zza(new IllegalStateException("Provided CallbackFuture with multiple values."), "CallbackFuture.provideException");
                return;
            }
            this.zzZa = th;
            this.zzrJ.notifyAll();
            this.zzZc.zzlm();
        }
    }

    public void zzh(T t) {
        synchronized (this.zzrJ) {
            if (this.zzLs) {
                return;
            }
            if (zzll()) {
                com.google.android.gms.ads.internal.zzw.zzcQ().zza(new IllegalStateException("Provided CallbackFuture with multiple values."), "CallbackFuture.provideValue");
                return;
            }
            this.zzZb = true;
            this.mValue = t;
            this.zzrJ.notifyAll();
            this.zzZc.zzlm();
        }
    }
}
