package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzabc;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
/* loaded from: classes2.dex */
public class zzaav implements zzaah, zzabc {
    private final Context mContext;
    private final Lock zzaAG;
    final com.google.android.gms.common.internal.zzg zzaAL;
    final Map<Api<?>, Boolean> zzaAO;
    private final com.google.android.gms.common.zze zzaAQ;
    final zzaat zzaAw;
    final Map<Api.zzc<?>, Api.zze> zzaBQ;
    private final Condition zzaCd;
    private final zzb zzaCe;
    private volatile zzaau zzaCg;
    int zzaCi;
    final zzabc.zza zzaCj;
    final Api.zza<? extends zzbai, zzbaj> zzazo;
    final Map<Api.zzc<?>, ConnectionResult> zzaCf = new HashMap();
    private ConnectionResult zzaCh = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static abstract class zza {
        private final zzaau zzaCk;

        /* JADX INFO: Access modifiers changed from: protected */
        public zza(zzaau zzaauVar) {
            this.zzaCk = zzaauVar;
        }

        public final void zzc(zzaav zzaavVar) {
            zzaavVar.zzaAG.lock();
            try {
                if (zzaavVar.zzaCg != this.zzaCk) {
                    return;
                }
                zzwe();
            } finally {
                zzaavVar.zzaAG.unlock();
            }
        }

        protected abstract void zzwe();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public final class zzb extends Handler {
        zzb(Looper looper) {
            super(looper);
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            switch (message.what) {
                case 1:
                    ((zza) message.obj).zzc(zzaav.this);
                    return;
                case 2:
                    throw ((RuntimeException) message.obj);
                default:
                    Log.w("GACStateManager", new StringBuilder(31).append("Unknown message id: ").append(message.what).toString());
                    return;
            }
        }
    }

    public zzaav(Context context, zzaat zzaatVar, Lock lock, Looper looper, com.google.android.gms.common.zze zzeVar, Map<Api.zzc<?>, Api.zze> map, com.google.android.gms.common.internal.zzg zzgVar, Map<Api<?>, Boolean> map2, Api.zza<? extends zzbai, zzbaj> zzaVar, ArrayList<zzaag> arrayList, zzabc.zza zzaVar2) {
        this.mContext = context;
        this.zzaAG = lock;
        this.zzaAQ = zzeVar;
        this.zzaBQ = map;
        this.zzaAL = zzgVar;
        this.zzaAO = map2;
        this.zzazo = zzaVar;
        this.zzaAw = zzaatVar;
        this.zzaCj = zzaVar2;
        Iterator<zzaag> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().zza(this);
        }
        this.zzaCe = new zzb(looper);
        this.zzaCd = lock.newCondition();
        this.zzaCg = new zzaas(this);
    }

    @Override // com.google.android.gms.internal.zzabc
    public ConnectionResult blockingConnect() {
        connect();
        while (isConnecting()) {
            try {
                this.zzaCd.await();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
        }
        return isConnected() ? ConnectionResult.zzayj : this.zzaCh != null ? this.zzaCh : new ConnectionResult(13, null);
    }

    @Override // com.google.android.gms.internal.zzabc
    public ConnectionResult blockingConnect(long j, TimeUnit timeUnit) {
        connect();
        long nanos = timeUnit.toNanos(j);
        while (isConnecting()) {
            if (nanos <= 0) {
                disconnect();
                return new ConnectionResult(14, null);
            }
            try {
                nanos = this.zzaCd.awaitNanos(nanos);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
            Thread.currentThread().interrupt();
            return new ConnectionResult(15, null);
        }
        return isConnected() ? ConnectionResult.zzayj : this.zzaCh != null ? this.zzaCh : new ConnectionResult(13, null);
    }

    @Override // com.google.android.gms.internal.zzabc
    public void connect() {
        this.zzaCg.connect();
    }

    @Override // com.google.android.gms.internal.zzabc
    public void disconnect() {
        if (this.zzaCg.disconnect()) {
            this.zzaCf.clear();
        }
    }

    @Override // com.google.android.gms.internal.zzabc
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        String concat = String.valueOf(str).concat("  ");
        printWriter.append((CharSequence) str).append("mState=").println(this.zzaCg);
        for (Api<?> api : this.zzaAO.keySet()) {
            printWriter.append((CharSequence) str).append((CharSequence) api.getName()).println(":");
            this.zzaBQ.get(api.zzvg()).dump(concat, fileDescriptor, printWriter, strArr);
        }
    }

    @Override // com.google.android.gms.internal.zzabc
    public ConnectionResult getConnectionResult(Api<?> api) {
        Api.zzc<?> zzvg = api.zzvg();
        if (this.zzaBQ.containsKey(zzvg)) {
            if (this.zzaBQ.get(zzvg).isConnected()) {
                return ConnectionResult.zzayj;
            }
            if (this.zzaCf.containsKey(zzvg)) {
                return this.zzaCf.get(zzvg);
            }
        }
        return null;
    }

    @Override // com.google.android.gms.internal.zzabc
    public boolean isConnected() {
        return this.zzaCg instanceof zzaaq;
    }

    @Override // com.google.android.gms.internal.zzabc
    public boolean isConnecting() {
        return this.zzaCg instanceof zzaar;
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public void onConnected(Bundle bundle) {
        this.zzaAG.lock();
        try {
            this.zzaCg.onConnected(bundle);
        } finally {
            this.zzaAG.unlock();
        }
    }

    @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
    public void onConnectionSuspended(int i) {
        this.zzaAG.lock();
        try {
            this.zzaCg.onConnectionSuspended(i);
        } finally {
            this.zzaAG.unlock();
        }
    }

    @Override // com.google.android.gms.internal.zzabc
    public <A extends Api.zzb, R extends Result, T extends zzaad.zza<R, A>> T zza(T t) {
        t.zzvI();
        return (T) this.zzaCg.zza(t);
    }

    @Override // com.google.android.gms.internal.zzaah
    public void zza(ConnectionResult connectionResult, Api<?> api, boolean z) {
        this.zzaAG.lock();
        try {
            this.zzaCg.zza(connectionResult, api, z);
        } finally {
            this.zzaAG.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zza(zza zzaVar) {
        this.zzaCe.sendMessage(this.zzaCe.obtainMessage(1, zzaVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zza(RuntimeException runtimeException) {
        this.zzaCe.sendMessage(this.zzaCe.obtainMessage(2, runtimeException));
    }

    @Override // com.google.android.gms.internal.zzabc
    public boolean zza(zzabq zzabqVar) {
        return false;
    }

    @Override // com.google.android.gms.internal.zzabc
    public <A extends Api.zzb, T extends zzaad.zza<? extends Result, A>> T zzb(T t) {
        t.zzvI();
        return (T) this.zzaCg.zzb(t);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzh(ConnectionResult connectionResult) {
        this.zzaAG.lock();
        try {
            this.zzaCh = connectionResult;
            this.zzaCg = new zzaas(this);
            this.zzaCg.begin();
            this.zzaCd.signalAll();
        } finally {
            this.zzaAG.unlock();
        }
    }

    @Override // com.google.android.gms.internal.zzabc
    public void zzvM() {
        if (isConnected()) {
            ((zzaaq) this.zzaCg).zzwd();
        }
    }

    @Override // com.google.android.gms.internal.zzabc
    public void zzvn() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzws() {
        this.zzaAG.lock();
        try {
            this.zzaCg = new zzaar(this, this.zzaAL, this.zzaAO, this.zzaAQ, this.zzazo, this.zzaAG, this.mContext);
            this.zzaCg.begin();
            this.zzaCd.signalAll();
        } finally {
            this.zzaAG.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzwt() {
        this.zzaAG.lock();
        try {
            this.zzaAw.zzwp();
            this.zzaCg = new zzaaq(this);
            this.zzaCg.begin();
            this.zzaCd.signalAll();
        } finally {
            this.zzaAG.unlock();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzwu() {
        for (Api.zze zzeVar : this.zzaBQ.values()) {
            zzeVar.disconnect();
        }
    }
}
