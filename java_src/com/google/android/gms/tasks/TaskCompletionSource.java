package com.google.android.gms.tasks;
/* loaded from: classes2.dex */
public class TaskCompletionSource<TResult> {
    private final zzh<TResult> zzbNC = new zzh<>();

    public Task<TResult> getTask() {
        return this.zzbNC;
    }

    public void setException(Exception exc) {
        this.zzbNC.setException(exc);
    }

    public void setResult(TResult tresult) {
        this.zzbNC.setResult(tresult);
    }

    public boolean trySetException(Exception exc) {
        return this.zzbNC.trySetException(exc);
    }

    public boolean trySetResult(TResult tresult) {
        return this.zzbNC.trySetResult(tresult);
    }
}
