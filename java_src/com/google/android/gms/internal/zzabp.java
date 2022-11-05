package com.google.android.gms.internal;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.TransformedResult;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class zzabp<R extends Result> extends PendingResult<R> {
    private final Status zzair;

    public zzabp(Status status) {
        com.google.android.gms.common.internal.zzac.zzb(status, "Status must not be null");
        com.google.android.gms.common.internal.zzac.zzb(!status.isSuccess(), "Status must not be success");
        this.zzair = status;
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public R await() {
        throw new UnsupportedOperationException("Operation not supported on PendingResults generated by ResultTransform.createFailedResult()");
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public R await(long j, TimeUnit timeUnit) {
        throw new UnsupportedOperationException("Operation not supported on PendingResults generated by ResultTransform.createFailedResult()");
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public void cancel() {
        throw new UnsupportedOperationException("Operation not supported on PendingResults generated by ResultTransform.createFailedResult()");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Status getStatus() {
        return this.zzair;
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public boolean isCanceled() {
        throw new UnsupportedOperationException("Operation not supported on PendingResults generated by ResultTransform.createFailedResult()");
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public void setResultCallback(ResultCallback<? super R> resultCallback) {
        throw new UnsupportedOperationException("Operation not supported on PendingResults generated by ResultTransform.createFailedResult()");
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public void setResultCallback(ResultCallback<? super R> resultCallback, long j, TimeUnit timeUnit) {
        throw new UnsupportedOperationException("Operation not supported on PendingResults generated by ResultTransform.createFailedResult()");
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public <S extends Result> TransformedResult<S> then(ResultTransform<? super R, ? extends S> resultTransform) {
        throw new UnsupportedOperationException("Operation not supported on PendingResults generated by ResultTransform.createFailedResult()");
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public void zza(PendingResult.zza zzaVar) {
        throw new UnsupportedOperationException("Operation not supported on PendingResults generated by ResultTransform.createFailedResult()");
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public Integer zzvr() {
        throw new UnsupportedOperationException("Operation not supported on PendingResults generated by ResultTransform.createFailedResult()");
    }
}
