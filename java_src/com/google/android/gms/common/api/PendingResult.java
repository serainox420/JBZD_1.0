package com.google.android.gms.common.api;

import com.google.android.gms.common.api.Result;
import java.util.concurrent.TimeUnit;
/* loaded from: classes.dex */
public abstract class PendingResult<R extends Result> {

    /* loaded from: classes2.dex */
    public interface zza {
        void zzy(Status status);
    }

    public abstract R await();

    public abstract R await(long j, TimeUnit timeUnit);

    public abstract void cancel();

    public abstract boolean isCanceled();

    public abstract void setResultCallback(ResultCallback<? super R> resultCallback);

    public abstract void setResultCallback(ResultCallback<? super R> resultCallback, long j, TimeUnit timeUnit);

    public <S extends Result> TransformedResult<S> then(ResultTransform<? super R, ? extends S> resultTransform) {
        throw new UnsupportedOperationException();
    }

    public void zza(zza zzaVar) {
        throw new UnsupportedOperationException();
    }

    public Integer zzvr() {
        throw new UnsupportedOperationException();
    }
}
