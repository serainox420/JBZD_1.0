package com.google.android.gms.common.api;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.internal.zzabp;
/* loaded from: classes2.dex */
public abstract class ResultTransform<R extends Result, S extends Result> {
    public final PendingResult<S> createFailedResult(Status status) {
        return new zzabp(status);
    }

    public Status onFailure(Status status) {
        return status;
    }

    public abstract PendingResult<S> onSuccess(R r);
}
