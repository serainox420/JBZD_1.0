package com.google.android.gms.common.api;

import android.util.Log;
import com.google.android.gms.common.api.Result;
/* loaded from: classes2.dex */
public abstract class ResultCallbacks<R extends Result> implements ResultCallback<R> {
    public abstract void onFailure(Status status);

    @Override // com.google.android.gms.common.api.ResultCallback
    public final void onResult(R r) {
        Status status = r.getStatus();
        if (status.isSuccess()) {
            onSuccess(r);
            return;
        }
        onFailure(status);
        if (!(r instanceof Releasable)) {
            return;
        }
        try {
            ((Releasable) r).release();
        } catch (RuntimeException e) {
            String valueOf = String.valueOf(r);
            Log.w("ResultCallbacks", new StringBuilder(String.valueOf(valueOf).length() + 18).append("Unable to release ").append(valueOf).toString(), e);
        }
    }

    public abstract void onSuccess(R r);
}
