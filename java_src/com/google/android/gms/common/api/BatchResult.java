package com.google.android.gms.common.api;

import com.google.android.gms.common.internal.zzac;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public final class BatchResult implements Result {
    private final Status zzair;
    private final PendingResult<?>[] zzayP;

    /* JADX INFO: Access modifiers changed from: package-private */
    public BatchResult(Status status, PendingResult<?>[] pendingResultArr) {
        this.zzair = status;
        this.zzayP = pendingResultArr;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.zzair;
    }

    public <R extends Result> R take(BatchResultToken<R> batchResultToken) {
        zzac.zzb(batchResultToken.mId < this.zzayP.length, "The result token does not belong to this batch");
        return (R) this.zzayP[batchResultToken.mId].await(0L, TimeUnit.MILLISECONDS);
    }
}
