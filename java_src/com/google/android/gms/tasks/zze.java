package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
class zze<TResult> implements zzf<TResult> {
    private final Executor zzbFM;
    private OnSuccessListener<? super TResult> zzbNy;
    private final Object zzrJ = new Object();

    public zze(Executor executor, OnSuccessListener<? super TResult> onSuccessListener) {
        this.zzbFM = executor;
        this.zzbNy = onSuccessListener;
    }

    @Override // com.google.android.gms.tasks.zzf
    public void cancel() {
        synchronized (this.zzrJ) {
            this.zzbNy = null;
        }
    }

    @Override // com.google.android.gms.tasks.zzf
    public void onComplete(final Task<TResult> task) {
        if (task.isSuccessful()) {
            synchronized (this.zzrJ) {
                if (this.zzbNy != null) {
                    this.zzbFM.execute(new Runnable() { // from class: com.google.android.gms.tasks.zze.1
                        /* JADX WARN: Multi-variable type inference failed */
                        @Override // java.lang.Runnable
                        public void run() {
                            synchronized (zze.this.zzrJ) {
                                if (zze.this.zzbNy != null) {
                                    zze.this.zzbNy.onSuccess(task.getResult());
                                }
                            }
                        }
                    });
                }
            }
        }
    }
}
