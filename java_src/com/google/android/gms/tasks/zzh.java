package com.google.android.gms.tasks;

import android.app.Activity;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzabe;
import com.google.android.gms.internal.zzabf;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzh<TResult> extends Task<TResult> {
    private boolean zzbNF;
    private TResult zzbNG;
    private Exception zzbNH;
    private final Object zzrJ = new Object();
    private final zzg<TResult> zzbNE = new zzg<>();

    /* loaded from: classes2.dex */
    private static class zza extends zzabe {
        private final List<WeakReference<zzf<?>>> mListeners;

        private zza(zzabf zzabfVar) {
            super(zzabfVar);
            this.mListeners = new ArrayList();
            this.zzaCR.zza("TaskOnStopCallback", this);
        }

        public static zza zzw(Activity activity) {
            zzabf zzs = zzs(activity);
            zza zzaVar = (zza) zzs.zza("TaskOnStopCallback", zza.class);
            return zzaVar == null ? new zza(zzs) : zzaVar;
        }

        @Override // com.google.android.gms.internal.zzabe
        public void onStop() {
            synchronized (this.mListeners) {
                for (WeakReference<zzf<?>> weakReference : this.mListeners) {
                    zzf<?> zzfVar = weakReference.get();
                    if (zzfVar != null) {
                        zzfVar.cancel();
                    }
                }
                this.mListeners.clear();
            }
        }

        public <T> void zzb(zzf<T> zzfVar) {
            synchronized (this.mListeners) {
                this.mListeners.add(new WeakReference<>(zzfVar));
            }
        }
    }

    private void zzTG() {
        zzac.zza(this.zzbNF, "Task is not yet complete");
    }

    private void zzTH() {
        zzac.zza(!this.zzbNF, "Task is already complete");
    }

    private void zzTI() {
        synchronized (this.zzrJ) {
            if (!this.zzbNF) {
                return;
            }
            this.zzbNE.zza(this);
        }
    }

    @Override // com.google.android.gms.tasks.Task
    public Task<TResult> addOnCompleteListener(Activity activity, OnCompleteListener<TResult> onCompleteListener) {
        zzc zzcVar = new zzc(TaskExecutors.MAIN_THREAD, onCompleteListener);
        this.zzbNE.zza(zzcVar);
        zza.zzw(activity).zzb(zzcVar);
        zzTI();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public Task<TResult> addOnCompleteListener(OnCompleteListener<TResult> onCompleteListener) {
        return addOnCompleteListener(TaskExecutors.MAIN_THREAD, onCompleteListener);
    }

    @Override // com.google.android.gms.tasks.Task
    public Task<TResult> addOnCompleteListener(Executor executor, OnCompleteListener<TResult> onCompleteListener) {
        this.zzbNE.zza(new zzc(executor, onCompleteListener));
        zzTI();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public Task<TResult> addOnFailureListener(Activity activity, OnFailureListener onFailureListener) {
        zzd zzdVar = new zzd(TaskExecutors.MAIN_THREAD, onFailureListener);
        this.zzbNE.zza(zzdVar);
        zza.zzw(activity).zzb(zzdVar);
        zzTI();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public Task<TResult> addOnFailureListener(OnFailureListener onFailureListener) {
        return addOnFailureListener(TaskExecutors.MAIN_THREAD, onFailureListener);
    }

    @Override // com.google.android.gms.tasks.Task
    public Task<TResult> addOnFailureListener(Executor executor, OnFailureListener onFailureListener) {
        this.zzbNE.zza(new zzd(executor, onFailureListener));
        zzTI();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public Task<TResult> addOnSuccessListener(Activity activity, OnSuccessListener<? super TResult> onSuccessListener) {
        zze zzeVar = new zze(TaskExecutors.MAIN_THREAD, onSuccessListener);
        this.zzbNE.zza(zzeVar);
        zza.zzw(activity).zzb(zzeVar);
        zzTI();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public Task<TResult> addOnSuccessListener(OnSuccessListener<? super TResult> onSuccessListener) {
        return addOnSuccessListener(TaskExecutors.MAIN_THREAD, onSuccessListener);
    }

    @Override // com.google.android.gms.tasks.Task
    public Task<TResult> addOnSuccessListener(Executor executor, OnSuccessListener<? super TResult> onSuccessListener) {
        this.zzbNE.zza(new zze(executor, onSuccessListener));
        zzTI();
        return this;
    }

    @Override // com.google.android.gms.tasks.Task
    public <TContinuationResult> Task<TContinuationResult> continueWith(Continuation<TResult, TContinuationResult> continuation) {
        return continueWith(TaskExecutors.MAIN_THREAD, continuation);
    }

    @Override // com.google.android.gms.tasks.Task
    public <TContinuationResult> Task<TContinuationResult> continueWith(Executor executor, Continuation<TResult, TContinuationResult> continuation) {
        zzh zzhVar = new zzh();
        this.zzbNE.zza(new com.google.android.gms.tasks.zza(executor, continuation, zzhVar));
        zzTI();
        return zzhVar;
    }

    @Override // com.google.android.gms.tasks.Task
    public <TContinuationResult> Task<TContinuationResult> continueWithTask(Continuation<TResult, Task<TContinuationResult>> continuation) {
        return continueWithTask(TaskExecutors.MAIN_THREAD, continuation);
    }

    @Override // com.google.android.gms.tasks.Task
    public <TContinuationResult> Task<TContinuationResult> continueWithTask(Executor executor, Continuation<TResult, Task<TContinuationResult>> continuation) {
        zzh zzhVar = new zzh();
        this.zzbNE.zza(new zzb(executor, continuation, zzhVar));
        zzTI();
        return zzhVar;
    }

    @Override // com.google.android.gms.tasks.Task
    public Exception getException() {
        Exception exc;
        synchronized (this.zzrJ) {
            exc = this.zzbNH;
        }
        return exc;
    }

    @Override // com.google.android.gms.tasks.Task
    public TResult getResult() {
        TResult tresult;
        synchronized (this.zzrJ) {
            zzTG();
            if (this.zzbNH != null) {
                throw new RuntimeExecutionException(this.zzbNH);
            }
            tresult = this.zzbNG;
        }
        return tresult;
    }

    @Override // com.google.android.gms.tasks.Task
    public <X extends Throwable> TResult getResult(Class<X> cls) throws Throwable {
        TResult tresult;
        synchronized (this.zzrJ) {
            zzTG();
            if (cls.isInstance(this.zzbNH)) {
                throw cls.cast(this.zzbNH);
            }
            if (this.zzbNH != null) {
                throw new RuntimeExecutionException(this.zzbNH);
            }
            tresult = this.zzbNG;
        }
        return tresult;
    }

    @Override // com.google.android.gms.tasks.Task
    public boolean isComplete() {
        boolean z;
        synchronized (this.zzrJ) {
            z = this.zzbNF;
        }
        return z;
    }

    @Override // com.google.android.gms.tasks.Task
    public boolean isSuccessful() {
        boolean z;
        synchronized (this.zzrJ) {
            z = this.zzbNF && this.zzbNH == null;
        }
        return z;
    }

    public void setException(Exception exc) {
        zzac.zzb(exc, "Exception must not be null");
        synchronized (this.zzrJ) {
            zzTH();
            this.zzbNF = true;
            this.zzbNH = exc;
        }
        this.zzbNE.zza(this);
    }

    public void setResult(TResult tresult) {
        synchronized (this.zzrJ) {
            zzTH();
            this.zzbNF = true;
            this.zzbNG = tresult;
        }
        this.zzbNE.zza(this);
    }

    public boolean trySetException(Exception exc) {
        boolean z = true;
        zzac.zzb(exc, "Exception must not be null");
        synchronized (this.zzrJ) {
            if (this.zzbNF) {
                z = false;
            } else {
                this.zzbNF = true;
                this.zzbNH = exc;
                this.zzbNE.zza(this);
            }
        }
        return z;
    }

    public boolean trySetResult(TResult tresult) {
        boolean z = true;
        synchronized (this.zzrJ) {
            if (this.zzbNF) {
                z = false;
            } else {
                this.zzbNF = true;
                this.zzbNG = tresult;
                this.zzbNE.zza(this);
            }
        }
        return z;
    }
}
