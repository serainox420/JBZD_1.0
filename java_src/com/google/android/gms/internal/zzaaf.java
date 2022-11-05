package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import android.util.Pair;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.ResultTransform;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.TransformedResult;
import com.google.android.gms.internal.zzaby;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes.dex */
public abstract class zzaaf<R extends Result> extends PendingResult<R> {
    static final ThreadLocal<Boolean> zzaAg = new ThreadLocal<Boolean>() { // from class: com.google.android.gms.internal.zzaaf.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* renamed from: zzvJ */
        public Boolean initialValue() {
            return false;
        }
    };
    private boolean zzK;
    private final Object zzaAh;
    protected final zza<R> zzaAi;
    protected final WeakReference<GoogleApiClient> zzaAj;
    private final ArrayList<PendingResult.zza> zzaAk;
    private ResultCallback<? super R> zzaAl;
    private final AtomicReference<zzaby.zzb> zzaAm;
    private zzb zzaAn;
    private volatile boolean zzaAo;
    private boolean zzaAp;
    private com.google.android.gms.common.internal.zzs zzaAq;
    private volatile zzabx<R> zzaAr;
    private boolean zzaAs;
    private Status zzair;
    private R zzazt;
    private final CountDownLatch zztj;

    /* loaded from: classes2.dex */
    public static class zza<R extends Result> extends Handler {
        public zza() {
            this(Looper.getMainLooper());
        }

        public zza(Looper looper) {
            super(looper);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    Pair pair = (Pair) message.obj;
                    zzb((ResultCallback) pair.first, (Result) pair.second);
                    return;
                case 2:
                    ((zzaaf) message.obj).zzC(Status.zzazA);
                    return;
                default:
                    Log.wtf("BasePendingResult", new StringBuilder(45).append("Don't know how to handle message: ").append(message.what).toString(), new Exception());
                    return;
            }
        }

        public void zza(ResultCallback<? super R> resultCallback, R r) {
            sendMessage(obtainMessage(1, new Pair(resultCallback, r)));
        }

        public void zza(zzaaf<R> zzaafVar, long j) {
            sendMessageDelayed(obtainMessage(2, zzaafVar), j);
        }

        protected void zzb(ResultCallback<? super R> resultCallback, R r) {
            try {
                resultCallback.onResult(r);
            } catch (RuntimeException e) {
                zzaaf.zzd(r);
                throw e;
            }
        }

        public void zzvK() {
            removeMessages(2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public final class zzb {
        private zzb() {
        }

        protected void finalize() throws Throwable {
            zzaaf.zzd(zzaaf.this.zzazt);
            super.finalize();
        }
    }

    @Deprecated
    zzaaf() {
        this.zzaAh = new Object();
        this.zztj = new CountDownLatch(1);
        this.zzaAk = new ArrayList<>();
        this.zzaAm = new AtomicReference<>();
        this.zzaAs = false;
        this.zzaAi = new zza<>(Looper.getMainLooper());
        this.zzaAj = new WeakReference<>(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Deprecated
    public zzaaf(Looper looper) {
        this.zzaAh = new Object();
        this.zztj = new CountDownLatch(1);
        this.zzaAk = new ArrayList<>();
        this.zzaAm = new AtomicReference<>();
        this.zzaAs = false;
        this.zzaAi = new zza<>(looper);
        this.zzaAj = new WeakReference<>(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzaaf(GoogleApiClient googleApiClient) {
        this.zzaAh = new Object();
        this.zztj = new CountDownLatch(1);
        this.zzaAk = new ArrayList<>();
        this.zzaAm = new AtomicReference<>();
        this.zzaAs = false;
        this.zzaAi = new zza<>(googleApiClient != null ? googleApiClient.getLooper() : Looper.getMainLooper());
        this.zzaAj = new WeakReference<>(googleApiClient);
    }

    private R get() {
        R r;
        boolean z = true;
        synchronized (this.zzaAh) {
            if (this.zzaAo) {
                z = false;
            }
            com.google.android.gms.common.internal.zzac.zza(z, "Result has already been consumed.");
            com.google.android.gms.common.internal.zzac.zza(isReady(), "Result is not ready.");
            r = this.zzazt;
            this.zzazt = null;
            this.zzaAl = null;
            this.zzaAo = true;
        }
        zzvG();
        return r;
    }

    private void zzc(R r) {
        this.zzazt = r;
        this.zzaAq = null;
        this.zztj.countDown();
        this.zzair = this.zzazt.getStatus();
        if (this.zzK) {
            this.zzaAl = null;
        } else if (this.zzaAl != null) {
            this.zzaAi.zzvK();
            this.zzaAi.zza((ResultCallback<? super ResultCallback<? super R>>) this.zzaAl, (ResultCallback<? super R>) get());
        } else if (this.zzazt instanceof Releasable) {
            this.zzaAn = new zzb();
        }
        Iterator<PendingResult.zza> it = this.zzaAk.iterator();
        while (it.hasNext()) {
            it.next().zzy(this.zzair);
        }
        this.zzaAk.clear();
    }

    public static void zzd(Result result) {
        if (result instanceof Releasable) {
            try {
                ((Releasable) result).release();
            } catch (RuntimeException e) {
                String valueOf = String.valueOf(result);
                Log.w("BasePendingResult", new StringBuilder(String.valueOf(valueOf).length() + 18).append("Unable to release ").append(valueOf).toString(), e);
            }
        }
    }

    private void zzvG() {
        zzaby.zzb andSet = this.zzaAm.getAndSet(null);
        if (andSet != null) {
            andSet.zzc(this);
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final R await() {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zza(Looper.myLooper() != Looper.getMainLooper(), "await must not be called on the UI thread");
        com.google.android.gms.common.internal.zzac.zza(!this.zzaAo, "Result has already been consumed");
        if (this.zzaAr != null) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zza(z, "Cannot await if then() has been called.");
        try {
            this.zztj.await();
        } catch (InterruptedException e) {
            zzC(Status.zzazy);
        }
        com.google.android.gms.common.internal.zzac.zza(isReady(), "Result is not ready.");
        return get();
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final R await(long j, TimeUnit timeUnit) {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zza(j <= 0 || Looper.myLooper() != Looper.getMainLooper(), "await must not be called on the UI thread when time is greater than zero.");
        com.google.android.gms.common.internal.zzac.zza(!this.zzaAo, "Result has already been consumed.");
        if (this.zzaAr != null) {
            z = false;
        }
        com.google.android.gms.common.internal.zzac.zza(z, "Cannot await if then() has been called.");
        try {
            if (!this.zztj.await(j, timeUnit)) {
                zzC(Status.zzazA);
            }
        } catch (InterruptedException e) {
            zzC(Status.zzazy);
        }
        com.google.android.gms.common.internal.zzac.zza(isReady(), "Result is not ready.");
        return get();
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public void cancel() {
        synchronized (this.zzaAh) {
            if (this.zzK || this.zzaAo) {
                return;
            }
            if (this.zzaAq != null) {
                try {
                    this.zzaAq.cancel();
                } catch (RemoteException e) {
                }
            }
            zzd(this.zzazt);
            this.zzK = true;
            zzc((zzaaf<R>) zzc(Status.zzazB));
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public boolean isCanceled() {
        boolean z;
        synchronized (this.zzaAh) {
            z = this.zzK;
        }
        return z;
    }

    public final boolean isReady() {
        return this.zztj.getCount() == 0;
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void setResultCallback(ResultCallback<? super R> resultCallback) {
        boolean z = true;
        synchronized (this.zzaAh) {
            if (resultCallback == null) {
                this.zzaAl = null;
                return;
            }
            com.google.android.gms.common.internal.zzac.zza(!this.zzaAo, "Result has already been consumed.");
            if (this.zzaAr != null) {
                z = false;
            }
            com.google.android.gms.common.internal.zzac.zza(z, "Cannot set callbacks if then() has been called.");
            if (isCanceled()) {
                return;
            }
            if (isReady()) {
                this.zzaAi.zza((ResultCallback<? super ResultCallback<? super R>>) resultCallback, (ResultCallback<? super R>) get());
            } else {
                this.zzaAl = resultCallback;
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void setResultCallback(ResultCallback<? super R> resultCallback, long j, TimeUnit timeUnit) {
        boolean z = true;
        synchronized (this.zzaAh) {
            if (resultCallback == null) {
                this.zzaAl = null;
                return;
            }
            com.google.android.gms.common.internal.zzac.zza(!this.zzaAo, "Result has already been consumed.");
            if (this.zzaAr != null) {
                z = false;
            }
            com.google.android.gms.common.internal.zzac.zza(z, "Cannot set callbacks if then() has been called.");
            if (isCanceled()) {
                return;
            }
            if (isReady()) {
                this.zzaAi.zza((ResultCallback<? super ResultCallback<? super R>>) resultCallback, (ResultCallback<? super R>) get());
            } else {
                this.zzaAl = resultCallback;
                this.zzaAi.zza(this, timeUnit.toMillis(j));
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public <S extends Result> TransformedResult<S> then(ResultTransform<? super R, ? extends S> resultTransform) {
        TransformedResult<S> then;
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zza(!this.zzaAo, "Result has already been consumed.");
        synchronized (this.zzaAh) {
            com.google.android.gms.common.internal.zzac.zza(this.zzaAr == null, "Cannot call then() twice.");
            com.google.android.gms.common.internal.zzac.zza(this.zzaAl == null, "Cannot call then() if callbacks are set.");
            if (this.zzK) {
                z = false;
            }
            com.google.android.gms.common.internal.zzac.zza(z, "Cannot call then() if result was canceled.");
            this.zzaAs = true;
            this.zzaAr = new zzabx<>(this.zzaAj);
            then = this.zzaAr.then(resultTransform);
            if (isReady()) {
                this.zzaAi.zza(this.zzaAr, (zzabx<R>) get());
            } else {
                this.zzaAl = this.zzaAr;
            }
        }
        return then;
    }

    public final void zzC(Status status) {
        synchronized (this.zzaAh) {
            if (!isReady()) {
                zzb(zzc(status));
                this.zzaAp = true;
            }
        }
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public final void zza(PendingResult.zza zzaVar) {
        com.google.android.gms.common.internal.zzac.zzb(zzaVar != null, "Callback cannot be null.");
        synchronized (this.zzaAh) {
            if (isReady()) {
                zzaVar.zzy(this.zzair);
            } else {
                this.zzaAk.add(zzaVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void zza(com.google.android.gms.common.internal.zzs zzsVar) {
        synchronized (this.zzaAh) {
            this.zzaAq = zzsVar;
        }
    }

    public void zza(zzaby.zzb zzbVar) {
        this.zzaAm.set(zzbVar);
    }

    public final void zzb(R r) {
        boolean z = true;
        synchronized (this.zzaAh) {
            if (this.zzaAp || this.zzK) {
                zzd(r);
                return;
            }
            if (isReady()) {
            }
            com.google.android.gms.common.internal.zzac.zza(!isReady(), "Results have already been set");
            if (this.zzaAo) {
                z = false;
            }
            com.google.android.gms.common.internal.zzac.zza(z, "Result has already been consumed");
            zzc((zzaaf<R>) r);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract R zzc(Status status);

    public boolean zzvF() {
        boolean isCanceled;
        synchronized (this.zzaAh) {
            if (this.zzaAj.get() == null || !this.zzaAs) {
                cancel();
            }
            isCanceled = isCanceled();
        }
        return isCanceled;
    }

    public void zzvH() {
        setResultCallback(null);
    }

    public void zzvI() {
        this.zzaAs = this.zzaAs || zzaAg.get().booleanValue();
    }

    @Override // com.google.android.gms.common.api.PendingResult
    public Integer zzvr() {
        return null;
    }
}
