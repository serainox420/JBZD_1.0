package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultCallbacks;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.TransformedResult;
import java.lang.ref.WeakReference;
/* loaded from: classes2.dex */
public class zzabx<R extends Result> extends TransformedResult<R> implements ResultCallback<R> {
    private final WeakReference<GoogleApiClient> zzaAj;
    private final zza zzaDq;
    private ResultTransform<? super R, ? extends Result> zzaDl = null;
    private zzabx<? extends Result> zzaDm = null;
    private volatile ResultCallbacks<? super R> zzaDn = null;
    private PendingResult<R> zzaDo = null;
    private final Object zzaAh = new Object();
    private Status zzaDp = null;
    private boolean zzaDr = false;

    /* loaded from: classes2.dex */
    private final class zza extends Handler {
        public zza(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 0:
                    PendingResult<?> pendingResult = (PendingResult) message.obj;
                    synchronized (zzabx.this.zzaAh) {
                        if (pendingResult == null) {
                            zzabx.this.zzaDm.zzE(new Status(13, "Transform returned null"));
                        } else if (pendingResult instanceof zzabp) {
                            zzabx.this.zzaDm.zzE(((zzabp) pendingResult).getStatus());
                        } else {
                            zzabx.this.zzaDm.zza(pendingResult);
                        }
                    }
                    return;
                case 1:
                    RuntimeException runtimeException = (RuntimeException) message.obj;
                    String valueOf = String.valueOf(runtimeException.getMessage());
                    Log.e("TransformedResultImpl", valueOf.length() != 0 ? "Runtime exception on the transformation worker thread: ".concat(valueOf) : new String("Runtime exception on the transformation worker thread: "));
                    throw runtimeException;
                default:
                    Log.e("TransformedResultImpl", new StringBuilder(70).append("TransformationResultHandler received unknown message type: ").append(message.what).toString());
                    return;
            }
        }
    }

    public zzabx(WeakReference<GoogleApiClient> weakReference) {
        com.google.android.gms.common.internal.zzac.zzb(weakReference, "GoogleApiClient reference must not be null");
        this.zzaAj = weakReference;
        GoogleApiClient googleApiClient = this.zzaAj.get();
        this.zzaDq = new zza(googleApiClient != null ? googleApiClient.getLooper() : Looper.getMainLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzE(Status status) {
        synchronized (this.zzaAh) {
            this.zzaDp = status;
            zzF(this.zzaDp);
        }
    }

    private void zzF(Status status) {
        synchronized (this.zzaAh) {
            if (this.zzaDl != null) {
                Status onFailure = this.zzaDl.onFailure(status);
                com.google.android.gms.common.internal.zzac.zzb(onFailure, "onFailure must not return null");
                this.zzaDm.zzE(onFailure);
            } else if (zzxc()) {
                this.zzaDn.onFailure(status);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzd(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).release();
            } catch (RuntimeException e) {
                String valueOf = String.valueOf(result);
                Log.w("TransformedResultImpl", new StringBuilder(String.valueOf(valueOf).length() + 18).append("Unable to release ").append(valueOf).toString(), e);
            }
        }
    }

    private void zzxa() {
        if (this.zzaDl == null && this.zzaDn == null) {
            return;
        }
        GoogleApiClient googleApiClient = this.zzaAj.get();
        if (!this.zzaDr && this.zzaDl != null && googleApiClient != null) {
            googleApiClient.zza(this);
            this.zzaDr = true;
        }
        if (this.zzaDp != null) {
            zzF(this.zzaDp);
        } else if (this.zzaDo == null) {
        } else {
            this.zzaDo.setResultCallback(this);
        }
    }

    private boolean zzxc() {
        return (this.zzaDn == null || this.zzaAj.get() == null) ? false : true;
    }

    @Override // com.google.android.gms.common.api.TransformedResult
    public void andFinally(ResultCallbacks<? super R> resultCallbacks) {
        boolean z = true;
        synchronized (this.zzaAh) {
            com.google.android.gms.common.internal.zzac.zza(this.zzaDn == null, "Cannot call andFinally() twice.");
            if (this.zzaDl != null) {
                z = false;
            }
            com.google.android.gms.common.internal.zzac.zza(z, "Cannot call then() and andFinally() on the same TransformedResult.");
            this.zzaDn = resultCallbacks;
            zzxa();
        }
    }

    @Override // com.google.android.gms.common.api.ResultCallback
    public void onResult(final R r) {
        synchronized (this.zzaAh) {
            if (!r.getStatus().isSuccess()) {
                zzE(r.getStatus());
                zzd(r);
            } else if (this.zzaDl != null) {
                zzabo.zzwv().submit(new Runnable() { // from class: com.google.android.gms.internal.zzabx.1
                    /* JADX WARN: Multi-variable type inference failed */
                    @Override // java.lang.Runnable
                    public void run() {
                        try {
                            try {
                                zzaaf.zzaAg.set(true);
                                zzabx.this.zzaDq.sendMessage(zzabx.this.zzaDq.obtainMessage(0, zzabx.this.zzaDl.onSuccess(r)));
                                zzaaf.zzaAg.set(false);
                                zzabx.this.zzd(r);
                                GoogleApiClient googleApiClient = (GoogleApiClient) zzabx.this.zzaAj.get();
                                if (googleApiClient == null) {
                                    return;
                                }
                                googleApiClient.zzb(zzabx.this);
                            } catch (RuntimeException e) {
                                zzabx.this.zzaDq.sendMessage(zzabx.this.zzaDq.obtainMessage(1, e));
                                zzaaf.zzaAg.set(false);
                                zzabx.this.zzd(r);
                                GoogleApiClient googleApiClient2 = (GoogleApiClient) zzabx.this.zzaAj.get();
                                if (googleApiClient2 == null) {
                                    return;
                                }
                                googleApiClient2.zzb(zzabx.this);
                            }
                        } catch (Throwable th) {
                            zzaaf.zzaAg.set(false);
                            zzabx.this.zzd(r);
                            GoogleApiClient googleApiClient3 = (GoogleApiClient) zzabx.this.zzaAj.get();
                            if (googleApiClient3 != null) {
                                googleApiClient3.zzb(zzabx.this);
                            }
                            throw th;
                        }
                    }
                });
            } else if (zzxc()) {
                this.zzaDn.onSuccess(r);
            }
        }
    }

    @Override // com.google.android.gms.common.api.TransformedResult
    public <S extends Result> TransformedResult<S> then(ResultTransform<? super R, ? extends S> resultTransform) {
        zzabx<? extends Result> zzabxVar;
        boolean z = true;
        synchronized (this.zzaAh) {
            com.google.android.gms.common.internal.zzac.zza(this.zzaDl == null, "Cannot call then() twice.");
            if (this.zzaDn != null) {
                z = false;
            }
            com.google.android.gms.common.internal.zzac.zza(z, "Cannot call then() and andFinally() on the same TransformedResult.");
            this.zzaDl = resultTransform;
            zzabxVar = new zzabx<>(this.zzaAj);
            this.zzaDm = zzabxVar;
            zzxa();
        }
        return zzabxVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void zza(PendingResult<?> pendingResult) {
        synchronized (this.zzaAh) {
            this.zzaDo = pendingResult;
            zzxa();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzxb() {
        this.zzaDn = null;
    }
}
