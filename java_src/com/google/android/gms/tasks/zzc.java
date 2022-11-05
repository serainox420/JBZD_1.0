package com.google.android.gms.tasks;

import java.util.concurrent.Executor;
/* loaded from: classes2.dex */
class zzc<TResult> implements zzf<TResult> {
    private final Executor zzbFM;
    private OnCompleteListener<TResult> zzbNu;
    private final Object zzrJ = new Object();

    public zzc(Executor executor, OnCompleteListener<TResult> onCompleteListener) {
        this.zzbFM = executor;
        this.zzbNu = onCompleteListener;
    }

    @Override // com.google.android.gms.tasks.zzf
    public void cancel() {
        synchronized (this.zzrJ) {
            this.zzbNu = null;
        }
    }

    @Override // com.google.android.gms.tasks.zzf
    public void onComplete(final Task<TResult> task) {
        synchronized (this.zzrJ) {
            if (this.zzbNu == null) {
                return;
            }
            this.zzbFM.execute(new Runnable() { // from class: com.google.android.gms.tasks.zzc.1
                @Override // java.lang.Runnable
                public void run() {
                    synchronized (zzc.this.zzrJ) {
                        if (zzc.this.zzbNu != null) {
                            zzc.this.zzbNu.onComplete(task);
                        }
                    }
                }
            });
        }
    }
}
