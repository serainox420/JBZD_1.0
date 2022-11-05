package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
class zzd<TResult> implements zzf<TResult> {
    private final Executor zzbFM;
    private OnFailureListener zzbNw;
    private final Object zzrJ = new Object();

    public zzd(Executor executor, OnFailureListener onFailureListener) {
        this.zzbFM = executor;
        this.zzbNw = onFailureListener;
    }

    @Override // com.google.android.gms.tasks.zzf
    public void cancel() {
        synchronized (this.zzrJ) {
            this.zzbNw = null;
        }
    }

    @Override // com.google.android.gms.tasks.zzf
    public void onComplete(final Task<TResult> task) {
        if (!task.isSuccessful()) {
            synchronized (this.zzrJ) {
                if (this.zzbNw != null) {
                    this.zzbFM.execute(new Runnable() { // from class: com.google.android.gms.tasks.zzd.1
                        @Override // java.lang.Runnable
                        public void run() {
                            synchronized (zzd.this.zzrJ) {
                                if (zzd.this.zzbNw != null) {
                                    zzd.this.zzbNw.onFailure(task.getException());
                                }
                            }
                        }
                    });
                }
            }
        }
    }
}
