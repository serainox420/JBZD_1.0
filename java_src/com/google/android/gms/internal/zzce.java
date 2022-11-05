package com.google.android.gms.internal;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public abstract class zzce<T1 extends Result, T2 extends Result> extends PendingResult<T1> {
    private final PendingResult<T2> zzro;

    /* JADX INFO: Access modifiers changed from: protected */
    public zzce(PendingResult<T2> pendingResult) {
        this.zzro = (PendingResult) com.google.android.gms.common.internal.zzac.zzw(pendingResult);
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public T1 await() {
        return zza((zzce<T1, T2>) this.zzro.await());
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public T1 await(long j, TimeUnit timeUnit) {
        return zza((zzce<T1, T2>) this.zzro.await(j, timeUnit));
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public void cancel() {
        this.zzro.cancel();
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public boolean isCanceled() {
        return this.zzro.isCanceled();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.PendingResult
    public void setResultCallback(final ResultCallback<? super T1> resultCallback) {
        this.zzro.setResultCallback(new ResultCallback<T2>() { // from class: com.google.android.gms.internal.zzce.1
            @Override // com.google.android.gms.common.api.ResultCallback
            public void onResult(T2 t2) {
                resultCallback.onResult(zzce.this.zza((zzce) t2));
            }
        });
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.api.PendingResult
    public void setResultCallback(final ResultCallback<? super T1> resultCallback, long j, TimeUnit timeUnit) {
        this.zzro.setResultCallback(new ResultCallback<T2>() { // from class: com.google.android.gms.internal.zzce.2
            @Override // com.google.android.gms.common.api.ResultCallback
            public void onResult(T2 t2) {
                resultCallback.onResult(zzce.this.zza((zzce) t2));
            }
        }, j, timeUnit);
    }

    protected abstract T1 zza(T2 t2);

    @Override // com.google.android.gms.common.api.PendingResult
    public void zza(PendingResult.zza zzaVar) {
        this.zzro.zza(zzaVar);
    }
}
