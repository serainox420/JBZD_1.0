package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzb<TResult, TContinuationResult> implements OnFailureListener, OnSuccessListener<TContinuationResult>, zzf<TResult> {
    private final Executor zzbFM;
    private final Continuation<TResult, Task<TContinuationResult>> zzbNp;
    private final zzh<TContinuationResult> zzbNq;

    public zzb(Executor executor, Continuation<TResult, Task<TContinuationResult>> continuation, zzh<TContinuationResult> zzhVar) {
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
        this.zzbFM.execute(new Runnable() { // from class: com.google.android.gms.tasks.zzb.1
            @Override // java.lang.Runnable
            public void run() {
                try {
                    Task task2 = (Task) zzb.this.zzbNp.then(task);
                    if (task2 == null) {
                        zzb.this.onFailure(new NullPointerException("Continuation returned null"));
                        return;
                    }
                    task2.addOnSuccessListener(TaskExecutors.zzbND, zzb.this);
                    task2.addOnFailureListener(TaskExecutors.zzbND, zzb.this);
                } catch (RuntimeExecutionException e) {
                    if (e.getCause() instanceof Exception) {
                        zzb.this.zzbNq.setException((Exception) e.getCause());
                    } else {
                        zzb.this.zzbNq.setException(e);
                    }
                } catch (Exception e2) {
                    zzb.this.zzbNq.setException(e2);
                }
            }
        });
    }

    @Override // com.google.android.gms.tasks.OnFailureListener
    public void onFailure(Exception exc) {
        this.zzbNq.setException(exc);
    }

    @Override // com.google.android.gms.tasks.OnSuccessListener
    public void onSuccess(TContinuationResult tcontinuationresult) {
        this.zzbNq.setResult(tcontinuationresult);
    }
}
