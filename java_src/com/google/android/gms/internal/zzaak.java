package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import android.support.v4.f.a;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzaby;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
/* loaded from: classes2.dex */
public class zzaak implements zzabc {
    private final Lock zzaAG;
    private final com.google.android.gms.common.internal.zzg zzaAL;
    private final Map<Api<?>, Boolean> zzaAO;
    private final zzaat zzaAP;
    private final com.google.android.gms.common.zze zzaAQ;
    private final Condition zzaAR;
    private final boolean zzaAS;
    private final boolean zzaAT;
    private boolean zzaAV;
    private Map<zzzz<?>, ConnectionResult> zzaAW;
    private Map<zzzz<?>, ConnectionResult> zzaAX;
    private zzb zzaAY;
    private ConnectionResult zzaAZ;
    private final zzaax zzayX;
    private final Looper zzrs;
    private final Map<Api.zzc<?>, zzaaj<?>> zzaAM = new HashMap();
    private final Map<Api.zzc<?>, zzaaj<?>> zzaAN = new HashMap();
    private final Queue<zzaad.zza<?, ?>> zzaAU = new LinkedList();

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zza implements OnCompleteListener<Void> {
        private zza() {
        }

        @Override // com.google.android.gms.tasks.OnCompleteListener
        public void onComplete(Task<Void> task) {
            zzaak.this.zzaAG.lock();
            try {
                if (!zzaak.this.zzaAV) {
                    return;
                }
                if (task.isSuccessful()) {
                    zzaak.this.zzaAW = new a(zzaak.this.zzaAM.size());
                    for (zzaaj zzaajVar : zzaak.this.zzaAM.values()) {
                        zzaak.this.zzaAW.put(zzaajVar.getApiKey(), ConnectionResult.zzayj);
                    }
                } else if (task.getException() instanceof com.google.android.gms.common.api.zzb) {
                    com.google.android.gms.common.api.zzb zzbVar = (com.google.android.gms.common.api.zzb) task.getException();
                    if (zzaak.this.zzaAT) {
                        zzaak.this.zzaAW = new a(zzaak.this.zzaAM.size());
                        for (zzaaj zzaajVar2 : zzaak.this.zzaAM.values()) {
                            Object apiKey = zzaajVar2.getApiKey();
                            ConnectionResult zza = zzbVar.zza(zzaajVar2);
                            if (zzaak.this.zza(zzaajVar2, zza)) {
                                zzaak.this.zzaAW.put(apiKey, new ConnectionResult(16));
                            } else {
                                zzaak.this.zzaAW.put(apiKey, zza);
                            }
                        }
                    } else {
                        zzaak.this.zzaAW = zzbVar.zzvj();
                    }
                    zzaak.this.zzaAZ = zzaak.this.zzvX();
                } else {
                    Log.e("ConnectionlessGAC", "Unexpected availability exception", task.getException());
                    zzaak.this.zzaAW = Collections.emptyMap();
                    zzaak.this.zzaAZ = new ConnectionResult(8);
                }
                if (zzaak.this.zzaAX != null) {
                    zzaak.this.zzaAW.putAll(zzaak.this.zzaAX);
                    zzaak.this.zzaAZ = zzaak.this.zzvX();
                }
                if (zzaak.this.zzaAZ == null) {
                    zzaak.this.zzvV();
                    zzaak.this.zzvW();
                } else {
                    zzaak.this.zzaAV = false;
                    zzaak.this.zzaAP.zzc(zzaak.this.zzaAZ);
                }
                zzaak.this.zzaAR.signalAll();
            } finally {
                zzaak.this.zzaAG.unlock();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zzb implements OnCompleteListener<Void> {
        private zzabq zzaBb;

        zzb(zzabq zzabqVar) {
            this.zzaBb = zzabqVar;
        }

        void cancel() {
            this.zzaBb.zzrq();
        }

        @Override // com.google.android.gms.tasks.OnCompleteListener
        public void onComplete(Task<Void> task) {
            zzaak.this.zzaAG.lock();
            try {
                if (!zzaak.this.zzaAV) {
                    this.zzaBb.zzrq();
                    return;
                }
                if (task.isSuccessful()) {
                    zzaak.this.zzaAX = new a(zzaak.this.zzaAN.size());
                    for (zzaaj zzaajVar : zzaak.this.zzaAN.values()) {
                        zzaak.this.zzaAX.put(zzaajVar.getApiKey(), ConnectionResult.zzayj);
                    }
                } else if (task.getException() instanceof com.google.android.gms.common.api.zzb) {
                    com.google.android.gms.common.api.zzb zzbVar = (com.google.android.gms.common.api.zzb) task.getException();
                    if (zzaak.this.zzaAT) {
                        zzaak.this.zzaAX = new a(zzaak.this.zzaAN.size());
                        for (zzaaj zzaajVar2 : zzaak.this.zzaAN.values()) {
                            Object apiKey = zzaajVar2.getApiKey();
                            ConnectionResult zza = zzbVar.zza(zzaajVar2);
                            if (zzaak.this.zza(zzaajVar2, zza)) {
                                zzaak.this.zzaAX.put(apiKey, new ConnectionResult(16));
                            } else {
                                zzaak.this.zzaAX.put(apiKey, zza);
                            }
                        }
                    } else {
                        zzaak.this.zzaAX = zzbVar.zzvj();
                    }
                } else {
                    Log.e("ConnectionlessGAC", "Unexpected availability exception", task.getException());
                    zzaak.this.zzaAX = Collections.emptyMap();
                }
                if (zzaak.this.isConnected()) {
                    zzaak.this.zzaAW.putAll(zzaak.this.zzaAX);
                    if (zzaak.this.zzvX() == null) {
                        zzaak.this.zzvV();
                        zzaak.this.zzvW();
                        zzaak.this.zzaAR.signalAll();
                    }
                }
                this.zzaBb.zzrq();
            } finally {
                zzaak.this.zzaAG.unlock();
            }
        }
    }

    public zzaak(Context context, Lock lock, Looper looper, com.google.android.gms.common.zze zzeVar, Map<Api.zzc<?>, Api.zze> map, com.google.android.gms.common.internal.zzg zzgVar, Map<Api<?>, Boolean> map2, Api.zza<? extends zzbai, zzbaj> zzaVar, ArrayList<zzaag> arrayList, zzaat zzaatVar, boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        this.zzaAG = lock;
        this.zzrs = looper;
        this.zzaAR = lock.newCondition();
        this.zzaAQ = zzeVar;
        this.zzaAP = zzaatVar;
        this.zzaAO = map2;
        this.zzaAL = zzgVar;
        this.zzaAS = z;
        HashMap hashMap = new HashMap();
        for (Api<?> api : map2.keySet()) {
            hashMap.put(api.zzvg(), api);
        }
        HashMap hashMap2 = new HashMap();
        Iterator<zzaag> it = arrayList.iterator();
        while (it.hasNext()) {
            zzaag next = it.next();
            hashMap2.put(next.zzaxf, next);
        }
        boolean z5 = true;
        boolean z6 = false;
        boolean z7 = false;
        for (Map.Entry<Api.zzc<?>, Api.zze> entry : map.entrySet()) {
            Api api2 = (Api) hashMap.get(entry.getKey());
            Api.zze value = entry.getValue();
            if (value.zzvh()) {
                z2 = true;
                if (!this.zzaAO.get(api2).booleanValue()) {
                    z3 = z5;
                    z4 = true;
                } else {
                    z3 = z5;
                    z4 = z6;
                }
            } else {
                z2 = z7;
                z3 = false;
                z4 = z6;
            }
            zzaaj<?> zzaajVar = new zzaaj<>(context, api2, looper, value, (zzaag) hashMap2.get(api2), zzgVar, zzaVar);
            this.zzaAM.put(entry.getKey(), zzaajVar);
            if (value.zzrd()) {
                this.zzaAN.put(entry.getKey(), zzaajVar);
            }
            z7 = z2;
            z5 = z3;
            z6 = z4;
        }
        this.zzaAT = z7 && !z5 && !z6;
        this.zzayX = zzaax.zzww();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean zza(zzaaj<?> zzaajVar, ConnectionResult connectionResult) {
        return !connectionResult.isSuccess() && !connectionResult.hasResolution() && this.zzaAO.get(zzaajVar.getApi()).booleanValue() && zzaajVar.zzvU().zzvh() && this.zzaAQ.isUserResolvableError(connectionResult.getErrorCode());
    }

    private ConnectionResult zzb(Api.zzc<?> zzcVar) {
        this.zzaAG.lock();
        try {
            zzaaj<?> zzaajVar = this.zzaAM.get(zzcVar);
            if (this.zzaAW != null && zzaajVar != null) {
                return this.zzaAW.get(zzaajVar.getApiKey());
            }
            this.zzaAG.unlock();
            return null;
        } finally {
            this.zzaAG.unlock();
        }
    }

    private <T extends zzaad.zza<? extends Result, ? extends Api.zzb>> boolean zzd(T t) {
        Api.zzc<?> zzvg = t.zzvg();
        ConnectionResult zzb2 = zzb(zzvg);
        if (zzb2 == null || zzb2.getErrorCode() != 4) {
            return false;
        }
        t.zzB(new Status(4, null, this.zzayX.zza(this.zzaAM.get(zzvg).getApiKey(), this.zzaAP.getSessionId())));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzvV() {
        if (this.zzaAL == null) {
            this.zzaAP.zzaBR = Collections.emptySet();
            return;
        }
        HashSet hashSet = new HashSet(this.zzaAL.zzxL());
        Map<Api<?>, zzg.zza> zzxN = this.zzaAL.zzxN();
        for (Api<?> api : zzxN.keySet()) {
            ConnectionResult connectionResult = getConnectionResult(api);
            if (connectionResult != null && connectionResult.isSuccess()) {
                hashSet.addAll(zzxN.get(api).zzakq);
            }
        }
        this.zzaAP.zzaBR = hashSet;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzvW() {
        while (!this.zzaAU.isEmpty()) {
            zzb((zzaak) this.zzaAU.remove());
        }
        this.zzaAP.zzo(null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ConnectionResult zzvX() {
        ConnectionResult connectionResult;
        int i;
        int i2 = 0;
        ConnectionResult connectionResult2 = null;
        int i3 = 0;
        ConnectionResult connectionResult3 = null;
        for (zzaaj<?> zzaajVar : this.zzaAM.values()) {
            Api<?> api = zzaajVar.getApi();
            ConnectionResult connectionResult4 = this.zzaAW.get(zzaajVar.getApiKey());
            if (!connectionResult4.isSuccess() && (!this.zzaAO.get(api).booleanValue() || connectionResult4.hasResolution() || this.zzaAQ.isUserResolvableError(connectionResult4.getErrorCode()))) {
                if (connectionResult4.getErrorCode() != 4 || !this.zzaAS) {
                    int priority = api.zzve().getPriority();
                    if (connectionResult3 == null || i3 > priority) {
                        connectionResult = connectionResult4;
                        i = priority;
                    } else {
                        i = i3;
                        connectionResult = connectionResult3;
                    }
                    i3 = i;
                    connectionResult3 = connectionResult;
                } else {
                    int priority2 = api.zzve().getPriority();
                    if (connectionResult2 == null || i2 > priority2) {
                        i2 = priority2;
                        connectionResult2 = connectionResult4;
                    }
                }
            }
        }
        return (connectionResult3 == null || connectionResult2 == null || i3 <= i2) ? connectionResult3 : connectionResult2;
    }

    @Override // com.google.android.gms.internal.zzabc
    public ConnectionResult blockingConnect() {
        connect();
        while (isConnecting()) {
            try {
                this.zzaAR.await();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
        }
        return isConnected() ? ConnectionResult.zzayj : this.zzaAZ != null ? this.zzaAZ : new ConnectionResult(13, null);
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
                nanos = this.zzaAR.awaitNanos(nanos);
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                return new ConnectionResult(15, null);
            }
            Thread.currentThread().interrupt();
            return new ConnectionResult(15, null);
        }
        return isConnected() ? ConnectionResult.zzayj : this.zzaAZ != null ? this.zzaAZ : new ConnectionResult(13, null);
    }

    @Override // com.google.android.gms.internal.zzabc
    public void connect() {
        this.zzaAG.lock();
        try {
            if (this.zzaAV) {
                return;
            }
            this.zzaAV = true;
            this.zzaAW = null;
            this.zzaAX = null;
            this.zzaAY = null;
            this.zzaAZ = null;
            this.zzayX.zzvx();
            this.zzayX.zza(this.zzaAM.values()).addOnCompleteListener(new zzadb(this.zzrs), new zza());
        } finally {
            this.zzaAG.unlock();
        }
    }

    @Override // com.google.android.gms.internal.zzabc
    public void disconnect() {
        this.zzaAG.lock();
        try {
            this.zzaAV = false;
            this.zzaAW = null;
            this.zzaAX = null;
            if (this.zzaAY != null) {
                this.zzaAY.cancel();
                this.zzaAY = null;
            }
            this.zzaAZ = null;
            while (!this.zzaAU.isEmpty()) {
                zzaad.zza<?, ?> remove = this.zzaAU.remove();
                remove.zza((zzaby.zzb) null);
                remove.cancel();
            }
            this.zzaAR.signalAll();
        } finally {
            this.zzaAG.unlock();
        }
    }

    @Override // com.google.android.gms.internal.zzabc
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @Override // com.google.android.gms.internal.zzabc
    public ConnectionResult getConnectionResult(Api<?> api) {
        return zzb(api.zzvg());
    }

    @Override // com.google.android.gms.internal.zzabc
    public boolean isConnected() {
        boolean z;
        this.zzaAG.lock();
        try {
            if (this.zzaAW != null) {
                if (this.zzaAZ == null) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        } finally {
            this.zzaAG.unlock();
        }
    }

    @Override // com.google.android.gms.internal.zzabc
    public boolean isConnecting() {
        boolean z;
        this.zzaAG.lock();
        try {
            if (this.zzaAW == null) {
                if (this.zzaAV) {
                    z = true;
                    return z;
                }
            }
            z = false;
            return z;
        } finally {
            this.zzaAG.unlock();
        }
    }

    @Override // com.google.android.gms.internal.zzabc
    public <A extends Api.zzb, R extends Result, T extends zzaad.zza<R, A>> T zza(T t) {
        if (!this.zzaAS || !zzd((zzaak) t)) {
            if (!isConnected()) {
                this.zzaAU.add(t);
                return t;
            }
            this.zzaAP.zzaBW.zzb(t);
            return (T) this.zzaAM.get(t.zzvg()).doRead((zzaaj<?>) t);
        }
        return t;
    }

    @Override // com.google.android.gms.internal.zzabc
    public boolean zza(zzabq zzabqVar) {
        this.zzaAG.lock();
        try {
            if (!this.zzaAV || zzvN()) {
                this.zzaAG.unlock();
                return false;
            }
            this.zzayX.zzvx();
            this.zzaAY = new zzb(zzabqVar);
            this.zzayX.zza(this.zzaAN.values()).addOnCompleteListener(new zzadb(this.zzrs), this.zzaAY);
            this.zzaAG.unlock();
            return true;
        } catch (Throwable th) {
            this.zzaAG.unlock();
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.zzabc
    public <A extends Api.zzb, T extends zzaad.zza<? extends Result, A>> T zzb(T t) {
        Api.zzc<A> zzvg = t.zzvg();
        if (!this.zzaAS || !zzd((zzaak) t)) {
            this.zzaAP.zzaBW.zzb(t);
            return (T) this.zzaAM.get(zzvg).doWrite((zzaaj<?>) t);
        }
        return t;
    }

    @Override // com.google.android.gms.internal.zzabc
    public void zzvM() {
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0025 A[Catch: all -> 0x0045, TryCatch #0 {all -> 0x0045, blocks: (B:3:0x0006, B:5:0x000a, B:9:0x0015, B:10:0x001f, B:12:0x0025, B:14:0x0031), top: B:21:0x0006 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean zzvN() {
        this.zzaAG.lock();
        try {
            if (!this.zzaAV || !this.zzaAS) {
                return false;
            }
            for (Api.zzc<?> zzcVar : this.zzaAN.keySet()) {
                ConnectionResult zzb2 = zzb(zzcVar);
                if (zzb2 == null || !zzb2.isSuccess()) {
                    return false;
                }
                while (r2.hasNext()) {
                }
            }
            this.zzaAG.unlock();
            return true;
        } finally {
            this.zzaAG.unlock();
        }
    }

    @Override // com.google.android.gms.internal.zzabc
    public void zzvn() {
        this.zzaAG.lock();
        try {
            this.zzayX.zzvn();
            if (this.zzaAY != null) {
                this.zzaAY.cancel();
                this.zzaAY = null;
            }
            if (this.zzaAX == null) {
                this.zzaAX = new a(this.zzaAN.size());
            }
            ConnectionResult connectionResult = new ConnectionResult(4);
            for (zzaaj<?> zzaajVar : this.zzaAN.values()) {
                this.zzaAX.put(zzaajVar.getApiKey(), connectionResult);
            }
            if (this.zzaAW != null) {
                this.zzaAW.putAll(this.zzaAX);
            }
        } finally {
            this.zzaAG.unlock();
        }
    }
}
