package com.google.android.gms.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes2.dex */
public class zzabw {
    public static void zza(Status status, TaskCompletionSource<Void> taskCompletionSource) {
        zza(status, null, taskCompletionSource);
    }

    public static <TResult> void zza(Status status, TResult tresult, TaskCompletionSource<TResult> taskCompletionSource) {
        if (status.isSuccess()) {
            taskCompletionSource.setResult(tresult);
        } else {
            taskCompletionSource.setException(new com.google.android.gms.common.api.zza(status));
        }
    }
}
