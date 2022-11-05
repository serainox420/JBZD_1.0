package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzm;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzaaz;
import com.google.android.gms.internal.zzabc;
import com.google.android.gms.internal.zzaby;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.Lock;
/* loaded from: classes2.dex */
public final class zzaat extends GoogleApiClient implements zzabc.zza {
    private final Context mContext;
    private final Lock zzaAG;
    final com.google.android.gms.common.internal.zzg zzaAL;
    final Map<Api<?>, Boolean> zzaAO;
    private final com.google.android.gms.common.internal.zzm zzaBJ;
    private volatile boolean zzaBL;
    private final zza zzaBO;
    zzaaz zzaBP;
    final Map<Api.zzc<?>, Api.zze> zzaBQ;
    private final ArrayList<zzaag> zzaBT;
    private Integer zzaBU;
    final zzaby zzaBW;
    private final int zzazl;
    private final GoogleApiAvailability zzazn;
    final Api.zza<? extends zzbai, zzbaj> zzazo;
    private boolean zzazr;
    private final Looper zzrs;
    private zzabc zzaBK = null;
    final Queue<zzaad.zza<?, ?>> zzaAU = new LinkedList();
    private long zzaBM = 120000;
    private long zzaBN = 5000;
    Set<Scope> zzaBR = new HashSet();
    private final zzabi zzaBS = new zzabi();
    Set<zzabx> zzaBV = null;
    private final zzm.zza zzaBX = new zzm.zza() { // from class: com.google.android.gms.internal.zzaat.1
        @Override // com.google.android.gms.common.internal.zzm.zza
        public boolean isConnected() {
            return zzaat.this.isConnected();
        }

        @Override // com.google.android.gms.common.internal.zzm.zza
        public Bundle zzuC() {
            return null;
        }
    };

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public final class zza extends Handler {
        zza(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    zzaat.this.zzwn();
                    return;
                case 2:
                    zzaat.this.resume();
                    return;
                default:
                    Log.w("GoogleApiClientImpl", new StringBuilder(31).append("Unknown message id: ").append(message.what).toString());
                    return;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class zzb extends zzaaz.zza {
        private WeakReference<zzaat> zzaCc;

        zzb(zzaat zzaatVar) {
            this.zzaCc = new WeakReference<>(zzaatVar);
        }

        @Override // com.google.android.gms.internal.zzaaz.zza
        public void zzvE() {
            zzaat zzaatVar = this.zzaCc.get();
            if (zzaatVar == null) {
                return;
            }
            zzaatVar.resume();
        }
    }

    public zzaat(Context context, Lock lock, Looper looper, com.google.android.gms.common.internal.zzg zzgVar, GoogleApiAvailability googleApiAvailability, Api.zza<? extends zzbai, zzbaj> zzaVar, Map<Api<?>, Boolean> map, List<GoogleApiClient.ConnectionCallbacks> list, List<GoogleApiClient.OnConnectionFailedListener> list2, Map<Api.zzc<?>, Api.zze> map2, int i, int i2, ArrayList<zzaag> arrayList, boolean z) {
        this.zzaBU = null;
        this.mContext = context;
        this.zzaAG = lock;
        this.zzazr = z;
        this.zzaBJ = new com.google.android.gms.common.internal.zzm(looper, this.zzaBX);
        this.zzrs = looper;
        this.zzaBO = new zza(looper);
        this.zzazn = googleApiAvailability;
        this.zzazl = i;
        if (this.zzazl >= 0) {
            this.zzaBU = Integer.valueOf(i2);
        }
        this.zzaAO = map;
        this.zzaBQ = map2;
        this.zzaBT = arrayList;
        this.zzaBW = new zzaby(this.zzaBQ);
        for (GoogleApiClient.ConnectionCallbacks connectionCallbacks : list) {
            this.zzaBJ.registerConnectionCallbacks(connectionCallbacks);
        }
        for (GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener : list2) {
            this.zzaBJ.registerConnectionFailedListener(onConnectionFailedListener);
        }
        this.zzaAL = zzgVar;
        this.zzazo = zzaVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void resume() {
        this.zzaAG.lock();
        try {
            if (isResuming()) {
                zzwm();
            }
        } finally {
            this.zzaAG.unlock();
        }
    }

    public static int zza(Iterable<Api.zze> iterable, boolean z) {
        boolean z2 = false;
        boolean z3 = false;
        for (Api.zze zzeVar : iterable) {
            if (zzeVar.zzrd()) {
                z3 = true;
            }
            z2 = zzeVar.zzrr() ? true : z2;
        }
        if (z3) {
            return (!z2 || !z) ? 1 : 2;
        }
        return 3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(final GoogleApiClient googleApiClient, final zzabt zzabtVar, final boolean z) {
        zzacf.zzaGM.zzg(googleApiClient).setResultCallback(new ResultCallback<Status>() { // from class: com.google.android.gms.internal.zzaat.4
            @Override // com.google.android.gms.common.api.ResultCallback
            /* renamed from: zzp */
            public void onResult(Status status) {
                com.google.android.gms.auth.api.signin.internal.zzn.zzas(zzaat.this.mContext).zzrD();
                if (status.isSuccess() && zzaat.this.isConnected()) {
                    zzaat.this.reconnect();
                }
                zzabtVar.zzb((zzabt) status);
                if (z) {
                    googleApiClient.disconnect();
                }
            }
        });
    }

    private void zzb(zzabd zzabdVar) {
        if (this.zzazl >= 0) {
            zzaaa.zza(zzabdVar).zzcA(this.zzazl);
            return;
        }
        throw new IllegalStateException("Called stopAutoManage but automatic lifecycle management is not enabled.");
    }

    private void zzcD(int i) {
        if (this.zzaBU == null) {
            this.zzaBU = Integer.valueOf(i);
        } else if (this.zzaBU.intValue() != i) {
            String valueOf = String.valueOf(zzcE(i));
            String valueOf2 = String.valueOf(zzcE(this.zzaBU.intValue()));
            throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 51 + String.valueOf(valueOf2).length()).append("Cannot use sign-in mode: ").append(valueOf).append(". Mode was already set to ").append(valueOf2).toString());
        }
        if (this.zzaBK != null) {
            return;
        }
        boolean z = false;
        boolean z2 = false;
        for (Api.zze zzeVar : this.zzaBQ.values()) {
            if (zzeVar.zzrd()) {
                z2 = true;
            }
            z = zzeVar.zzrr() ? true : z;
        }
        switch (this.zzaBU.intValue()) {
            case 1:
                if (!z2) {
                    throw new IllegalStateException("SIGN_IN_MODE_REQUIRED cannot be used on a GoogleApiClient that does not contain any authenticated APIs. Use connect() instead.");
                }
                if (z) {
                    throw new IllegalStateException("Cannot use SIGN_IN_MODE_REQUIRED with GOOGLE_SIGN_IN_API. Use connect(SIGN_IN_MODE_OPTIONAL) instead.");
                }
                break;
            case 2:
                if (z2) {
                    if (this.zzazr) {
                        this.zzaBK = new zzaak(this.mContext, this.zzaAG, this.zzrs, this.zzazn, this.zzaBQ, this.zzaAL, this.zzaAO, this.zzazo, this.zzaBT, this, true);
                        return;
                    } else {
                        this.zzaBK = zzaai.zza(this.mContext, this, this.zzaAG, this.zzrs, this.zzazn, this.zzaBQ, this.zzaAL, this.zzaAO, this.zzazo, this.zzaBT);
                        return;
                    }
                }
                break;
        }
        if (!this.zzazr || z) {
            this.zzaBK = new zzaav(this.mContext, this, this.zzaAG, this.zzrs, this.zzazn, this.zzaBQ, this.zzaAL, this.zzaAO, this.zzazo, this.zzaBT, this);
        } else {
            this.zzaBK = new zzaak(this.mContext, this.zzaAG, this.zzrs, this.zzazn, this.zzaBQ, this.zzaAL, this.zzaAO, this.zzazo, this.zzaBT, this, false);
        }
    }

    static String zzcE(int i) {
        switch (i) {
            case 1:
                return "SIGN_IN_MODE_REQUIRED";
            case 2:
                return "SIGN_IN_MODE_OPTIONAL";
            case 3:
                return "SIGN_IN_MODE_NONE";
            default:
                return "UNKNOWN";
        }
    }

    private void zzwm() {
        this.zzaBJ.zzxY();
        this.zzaBK.connect();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzwn() {
        this.zzaAG.lock();
        try {
            if (zzwp()) {
                zzwm();
            }
        } finally {
            this.zzaAG.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public ConnectionResult blockingConnect() {
        boolean z = true;
        com.google.android.gms.common.internal.zzac.zza(Looper.myLooper() != Looper.getMainLooper(), "blockingConnect must not be called on the UI thread");
        this.zzaAG.lock();
        try {
            if (this.zzazl >= 0) {
                if (this.zzaBU == null) {
                    z = false;
                }
                com.google.android.gms.common.internal.zzac.zza(z, "Sign-in mode should have been set explicitly by auto-manage.");
            } else if (this.zzaBU == null) {
                this.zzaBU = Integer.valueOf(zza(this.zzaBQ.values(), false));
            } else if (this.zzaBU.intValue() == 2) {
                throw new IllegalStateException("Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            zzcD(this.zzaBU.intValue());
            this.zzaBJ.zzxY();
            return this.zzaBK.blockingConnect();
        } finally {
            this.zzaAG.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public ConnectionResult blockingConnect(long j, TimeUnit timeUnit) {
        boolean z = false;
        if (Looper.myLooper() != Looper.getMainLooper()) {
            z = true;
        }
        com.google.android.gms.common.internal.zzac.zza(z, "blockingConnect must not be called on the UI thread");
        com.google.android.gms.common.internal.zzac.zzb(timeUnit, "TimeUnit must not be null");
        this.zzaAG.lock();
        try {
            if (this.zzaBU == null) {
                this.zzaBU = Integer.valueOf(zza(this.zzaBQ.values(), false));
            } else if (this.zzaBU.intValue() == 2) {
                throw new IllegalStateException("Cannot call blockingConnect() when sign-in mode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            zzcD(this.zzaBU.intValue());
            this.zzaBJ.zzxY();
            return this.zzaBK.blockingConnect(j, timeUnit);
        } finally {
            this.zzaAG.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public PendingResult<Status> clearDefaultAccountAndReconnect() {
        com.google.android.gms.common.internal.zzac.zza(isConnected(), "GoogleApiClient is not connected yet.");
        com.google.android.gms.common.internal.zzac.zza(this.zzaBU.intValue() != 2, "Cannot use clearDefaultAccountAndReconnect with GOOGLE_SIGN_IN_API");
        final zzabt zzabtVar = new zzabt(this);
        if (this.zzaBQ.containsKey(zzacf.zzaid)) {
            zza(this, zzabtVar, false);
        } else {
            final AtomicReference atomicReference = new AtomicReference();
            GoogleApiClient build = new GoogleApiClient.Builder(this.mContext).addApi(zzacf.API).addConnectionCallbacks(new GoogleApiClient.ConnectionCallbacks() { // from class: com.google.android.gms.internal.zzaat.2
                @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
                public void onConnected(Bundle bundle) {
                    zzaat.this.zza((GoogleApiClient) atomicReference.get(), zzabtVar, true);
                }

                @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
                public void onConnectionSuspended(int i) {
                }
            }).addOnConnectionFailedListener(new GoogleApiClient.OnConnectionFailedListener(this) { // from class: com.google.android.gms.internal.zzaat.3
                @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
                public void onConnectionFailed(ConnectionResult connectionResult) {
                    zzabtVar.zzb((zzabt) new Status(8));
                }
            }).setHandler(this.zzaBO).build();
            atomicReference.set(build);
            build.connect();
        }
        return zzabtVar;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void connect() {
        boolean z = false;
        this.zzaAG.lock();
        try {
            if (this.zzazl >= 0) {
                if (this.zzaBU != null) {
                    z = true;
                }
                com.google.android.gms.common.internal.zzac.zza(z, "Sign-in mode should have been set explicitly by auto-manage.");
            } else if (this.zzaBU == null) {
                this.zzaBU = Integer.valueOf(zza(this.zzaBQ.values(), false));
            } else if (this.zzaBU.intValue() == 2) {
                throw new IllegalStateException("Cannot call connect() when SignInMode is set to SIGN_IN_MODE_OPTIONAL. Call connect(SIGN_IN_MODE_OPTIONAL) instead.");
            }
            connect(this.zzaBU.intValue());
        } finally {
            this.zzaAG.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void connect(int i) {
        boolean z = true;
        this.zzaAG.lock();
        if (i != 3 && i != 1 && i != 2) {
            z = false;
        }
        try {
            com.google.android.gms.common.internal.zzac.zzb(z, new StringBuilder(33).append("Illegal sign-in mode: ").append(i).toString());
            zzcD(i);
            zzwm();
        } finally {
            this.zzaAG.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void disconnect() {
        this.zzaAG.lock();
        try {
            this.zzaBW.release();
            if (this.zzaBK != null) {
                this.zzaBK.disconnect();
            }
            this.zzaBS.release();
            for (zzaad.zza<?, ?> zzaVar : this.zzaAU) {
                zzaVar.zza((zzaby.zzb) null);
                zzaVar.cancel();
            }
            this.zzaAU.clear();
            if (this.zzaBK == null) {
                return;
            }
            zzwp();
            this.zzaBJ.zzxX();
        } finally {
            this.zzaAG.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append("mContext=").println(this.mContext);
        printWriter.append((CharSequence) str).append("mResuming=").print(this.zzaBL);
        printWriter.append(" mWorkQueue.size()=").print(this.zzaAU.size());
        this.zzaBW.dump(printWriter);
        if (this.zzaBK != null) {
            this.zzaBK.dump(str, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public ConnectionResult getConnectionResult(Api<?> api) {
        this.zzaAG.lock();
        try {
            if (!isConnected() && !isResuming()) {
                throw new IllegalStateException("Cannot invoke getConnectionResult unless GoogleApiClient is connected");
            }
            if (!this.zzaBQ.containsKey(api.zzvg())) {
                throw new IllegalArgumentException(String.valueOf(api.getName()).concat(" was never registered with GoogleApiClient"));
            }
            ConnectionResult connectionResult = this.zzaBK.getConnectionResult(api);
            if (connectionResult == null) {
                if (isResuming()) {
                    connectionResult = ConnectionResult.zzayj;
                } else {
                    Log.w("GoogleApiClientImpl", zzwr());
                    Log.wtf("GoogleApiClientImpl", String.valueOf(api.getName()).concat(" requested in getConnectionResult is not connected but is not present in the failed  connections map"), new Exception());
                    connectionResult = new ConnectionResult(8, null);
                }
            }
            return connectionResult;
        } finally {
            this.zzaAG.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public Context getContext() {
        return this.mContext;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public Looper getLooper() {
        return this.zzrs;
    }

    public int getSessionId() {
        return System.identityHashCode(this);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean hasConnectedApi(Api<?> api) {
        if (!isConnected()) {
            return false;
        }
        Api.zze zzeVar = this.zzaBQ.get(api.zzvg());
        return zzeVar != null && zzeVar.isConnected();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean isConnected() {
        return this.zzaBK != null && this.zzaBK.isConnected();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean isConnecting() {
        return this.zzaBK != null && this.zzaBK.isConnecting();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean isConnectionCallbacksRegistered(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        return this.zzaBJ.isConnectionCallbacksRegistered(connectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean isConnectionFailedListenerRegistered(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        return this.zzaBJ.isConnectionFailedListenerRegistered(onConnectionFailedListener);
    }

    boolean isResuming() {
        return this.zzaBL;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void reconnect() {
        disconnect();
        connect();
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        this.zzaBJ.registerConnectionCallbacks(connectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void registerConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.zzaBJ.registerConnectionFailedListener(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void stopAutoManage(FragmentActivity fragmentActivity) {
        zzb(new zzabd(fragmentActivity));
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void unregisterConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        this.zzaBJ.unregisterConnectionCallbacks(connectionCallbacks);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void unregisterConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        this.zzaBJ.unregisterConnectionFailedListener(onConnectionFailedListener);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public <C extends Api.zze> C zza(Api.zzc<C> zzcVar) {
        C c = (C) this.zzaBQ.get(zzcVar);
        com.google.android.gms.common.internal.zzac.zzb(c, "Appropriate Api was not requested.");
        return c;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public <A extends Api.zzb, R extends Result, T extends zzaad.zza<R, A>> T zza(T t) {
        com.google.android.gms.common.internal.zzac.zzb(t.zzvg() != null, "This task can not be enqueued (it's probably a Batch or malformed)");
        boolean containsKey = this.zzaBQ.containsKey(t.zzvg());
        String name = t.getApi() != null ? t.getApi().getName() : "the API";
        com.google.android.gms.common.internal.zzac.zzb(containsKey, new StringBuilder(String.valueOf(name).length() + 65).append("GoogleApiClient is not configured to use ").append(name).append(" required for this call.").toString());
        this.zzaAG.lock();
        try {
            if (this.zzaBK == null) {
                this.zzaAU.add(t);
            } else {
                t = (T) this.zzaBK.zza((zzabc) t);
            }
            return t;
        } finally {
            this.zzaAG.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void zza(zzabx zzabxVar) {
        this.zzaAG.lock();
        try {
            if (this.zzaBV == null) {
                this.zzaBV = new HashSet();
            }
            this.zzaBV.add(zzabxVar);
        } finally {
            this.zzaAG.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean zza(Api<?> api) {
        return this.zzaBQ.containsKey(api.zzvg());
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public boolean zza(zzabq zzabqVar) {
        return this.zzaBK != null && this.zzaBK.zza(zzabqVar);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public <A extends Api.zzb, T extends zzaad.zza<? extends Result, A>> T zzb(T t) {
        com.google.android.gms.common.internal.zzac.zzb(t.zzvg() != null, "This task can not be executed (it's probably a Batch or malformed)");
        boolean containsKey = this.zzaBQ.containsKey(t.zzvg());
        String name = t.getApi() != null ? t.getApi().getName() : "the API";
        com.google.android.gms.common.internal.zzac.zzb(containsKey, new StringBuilder(String.valueOf(name).length() + 65).append("GoogleApiClient is not configured to use ").append(name).append(" required for this call.").toString());
        this.zzaAG.lock();
        try {
            if (this.zzaBK == null) {
                throw new IllegalStateException("GoogleApiClient is not connected yet.");
            }
            if (isResuming()) {
                this.zzaAU.add(t);
                while (!this.zzaAU.isEmpty()) {
                    zzaad.zza<?, ?> remove = this.zzaAU.remove();
                    this.zzaBW.zzb(remove);
                    remove.zzB(Status.zzazz);
                }
            } else {
                t = (T) this.zzaBK.zzb(t);
            }
            return t;
        } finally {
            this.zzaAG.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void zzb(zzabx zzabxVar) {
        this.zzaAG.lock();
        try {
            if (this.zzaBV == null) {
                Log.wtf("GoogleApiClientImpl", "Attempted to remove pending transform when no transforms are registered.", new Exception());
            } else if (!this.zzaBV.remove(zzabxVar)) {
                Log.wtf("GoogleApiClientImpl", "Failed to remove pending transform - this may lead to memory leaks!", new Exception());
            } else if (!zzwq()) {
                this.zzaBK.zzvM();
            }
        } finally {
            this.zzaAG.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public <C extends Api.zze> C zzc(Api.zzc<?> zzcVar) {
        C c = (C) this.zzaBQ.get(zzcVar);
        com.google.android.gms.common.internal.zzac.zzb(c, "Appropriate Api was not requested.");
        return c;
    }

    @Override // com.google.android.gms.internal.zzabc.zza
    public void zzc(int i, boolean z) {
        if (i == 1 && !z) {
            zzwo();
        }
        this.zzaBW.zzxd();
        this.zzaBJ.zzcV(i);
        this.zzaBJ.zzxX();
        if (i == 2) {
            zzwm();
        }
    }

    @Override // com.google.android.gms.internal.zzabc.zza
    public void zzc(ConnectionResult connectionResult) {
        if (!this.zzazn.zzd(this.mContext, connectionResult.getErrorCode())) {
            zzwp();
        }
        if (!isResuming()) {
            this.zzaBJ.zzn(connectionResult);
            this.zzaBJ.zzxX();
        }
    }

    @Override // com.google.android.gms.internal.zzabc.zza
    public void zzo(Bundle bundle) {
        while (!this.zzaAU.isEmpty()) {
            zzb((zzaat) this.zzaAU.remove());
        }
        this.zzaBJ.zzq(bundle);
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public <L> zzabh<L> zzr(L l) {
        this.zzaAG.lock();
        try {
            return this.zzaBS.zzb(l, this.zzrs);
        } finally {
            this.zzaAG.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient
    public void zzvn() {
        if (this.zzaBK != null) {
            this.zzaBK.zzvn();
        }
    }

    void zzwo() {
        if (isResuming()) {
            return;
        }
        this.zzaBL = true;
        if (this.zzaBP == null) {
            this.zzaBP = this.zzazn.zza(this.mContext.getApplicationContext(), new zzb(this));
        }
        this.zzaBO.sendMessageDelayed(this.zzaBO.obtainMessage(1), this.zzaBM);
        this.zzaBO.sendMessageDelayed(this.zzaBO.obtainMessage(2), this.zzaBN);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean zzwp() {
        if (!isResuming()) {
            return false;
        }
        this.zzaBL = false;
        this.zzaBO.removeMessages(2);
        this.zzaBO.removeMessages(1);
        if (this.zzaBP != null) {
            this.zzaBP.unregister();
            this.zzaBP = null;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean zzwq() {
        boolean z = false;
        this.zzaAG.lock();
        try {
            if (this.zzaBV != null) {
                if (!this.zzaBV.isEmpty()) {
                    z = true;
                }
            }
            return z;
        } finally {
            this.zzaAG.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String zzwr() {
        StringWriter stringWriter = new StringWriter();
        dump("", null, new PrintWriter(stringWriter), null);
        return stringWriter.toString();
    }
}
