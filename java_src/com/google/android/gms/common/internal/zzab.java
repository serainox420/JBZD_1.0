package com.google.android.gms.common.internal;

import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2.dex */
public class zzab {
    private static final zzb zzaGw = new zzb() { // from class: com.google.android.gms.common.internal.zzab.1
        @Override // com.google.android.gms.common.internal.zzab.zzb
        public com.google.android.gms.common.api.zza zzH(Status status) {
            return com.google.android.gms.common.internal.zzb.zzG(status);
        }
    };

    /* loaded from: classes2.dex */
    public interface zza<R extends Result, T> {
        T zzf(R r);
    }

    /* loaded from: classes2.dex */
    public interface zzb {
        com.google.android.gms.common.api.zza zzH(Status status);
    }

    public static <R extends Result, T extends com.google.android.gms.common.api.zze<R>> Task<T> zza(PendingResult<R> pendingResult, final T t) {
        return zza(pendingResult, new zza<R, T>() { // from class: com.google.android.gms.common.internal.zzab.3
            /* JADX WARN: Incorrect return type in method signature: (TR;)TT; */
            @Override // com.google.android.gms.common.internal.zzab.zza
            /* renamed from: zze */
            public com.google.android.gms.common.api.zze zzf(Result result) {
                com.google.android.gms.common.api.zze.this.zzb(result);
                return com.google.android.gms.common.api.zze.this;
            }
        });
    }

    public static <R extends Result, T> Task<T> zza(PendingResult<R> pendingResult, zza<R, T> zzaVar) {
        return zza(pendingResult, zzaVar, zzaGw);
    }

    public static <R extends Result, T> Task<T> zza(final PendingResult<R> pendingResult, final zza<R, T> zzaVar, final zzb zzbVar) {
        final TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        pendingResult.zza(new PendingResult.zza() { // from class: com.google.android.gms.common.internal.zzab.2
            @Override // com.google.android.gms.common.api.PendingResult.zza
            public void zzy(Status status) {
                if (!status.isSuccess()) {
                    taskCompletionSource.setException(zzbVar.zzH(status));
                    return;
                }
                taskCompletionSource.setResult(zzaVar.zzf(PendingResult.this.await(0L, TimeUnit.MILLISECONDS)));
            }
        });
        return taskCompletionSource.getTask();
    }
}
