package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zza<TResult, TContinuationResult> implements zzf<TResult> {
    private final Executor zzbFM;
    private final Continuation<TResult, TContinuationResult> zzbNp;
    private final zzh<TContinuationResult> zzbNq;

    public zza(Executor executor, Continuation<TResult, TContinuationResult> continuation, zzh<TContinuationResult> zzhVar) {
        this.zzbFM = executor;
        this.zzbNp = continuation;
        this.zzbNq = zzhVar;
    }

    @Override // com.google.android.gms.tasks.zzf
    public void cancel() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.tasks.zzf
    public void onComplete(final Task<TResult> task) {
        this.zzbFM.execute(new Runnable() { // from class: com.google.android.gms.tasks.zza.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.lang.Runnable
            public void run() {
                try {
                    zza.this.zzbNq.setResult(zza.this.zzbNp.then(task));
                } catch (RuntimeExecutionException e) {
                    if (e.getCause() instanceof Exception) {
                        zza.this.zzbNq.setException((Exception) e.getCause());
                    } else {
                        zza.this.zzbNq.setException(e);
                    }
                } catch (Exception e2) {
                    zza.this.zzbNq.setException(e2);
                }
            }
        });
    }
}
