package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.f.a;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzabc;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Lock;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzaai implements zzabc {
    private final Context mContext;
    private final Api.zze zzaAB;
    private Bundle zzaAC;
    private final Lock zzaAG;
    private final zzaat zzaAw;
    private final zzaav zzaAx;
    private final zzaav zzaAy;
    private final Map<Api.zzc<?>, zzaav> zzaAz;
    private final Looper zzrs;
    private final Set<zzabq> zzaAA = Collections.newSetFromMap(new WeakHashMap());
    private ConnectionResult zzaAD = null;
    private ConnectionResult zzaAE = null;
    private boolean zzaAF = false;
    private int zzaAH = 0;

    /* loaded from: classes2.dex */
    private class zza implements zzabc.zza {
        private zza() {
        }

        @Override // com.google.android.gms.internal.zzabc.zza
        public void zzc(int i, boolean z) {
            zzaai.this.zzaAG.lock();
            try {
                if (zzaai.this.zzaAF || zzaai.this.zzaAE == null || !zzaai.this.zzaAE.isSuccess()) {
                    zzaai.this.zzaAF = false;
                    zzaai.this.zzb(i, z);
                    return;
                }
                zzaai.this.zzaAF = true;
                zzaai.this.zzaAy.onConnectionSuspended(i);
            } finally {
                zzaai.this.zzaAG.unlock();
            }
        }

        @Override // com.google.android.gms.internal.zzabc.zza
        public void zzc(ConnectionResult connectionResult) {
            zzaai.this.zzaAG.lock();
            try {
                zzaai.this.zzaAD = connectionResult;
                zzaai.this.zzvP();
            } finally {
                zzaai.this.zzaAG.unlock();
            }
        }

        @Override // com.google.android.gms.internal.zzabc.zza
        public void zzo(Bundle bundle) {
            zzaai.this.zzaAG.lock();
            try {
                zzaai.this.zzn(bundle);
                zzaai.this.zzaAD = ConnectionResult.zzayj;
                zzaai.this.zzvP();
            } finally {
                zzaai.this.zzaAG.unlock();
            }
        }
    }

    /* loaded from: classes2.dex */
    private class zzb implements zzabc.zza {
        private zzb() {
        }

        @Override // com.google.android.gms.internal.zzabc.zza
        public void zzc(int i, boolean z) {
            zzaai.this.zzaAG.lock();
            try {
                if (zzaai.this.zzaAF) {
                    zzaai.this.zzaAF = false;
                    zzaai.this.zzb(i, z);
                    return;
                }
                zzaai.this.zzaAF = true;
                zzaai.this.zzaAx.onConnectionSuspended(i);
            } finally {
                zzaai.this.zzaAG.unlock();
            }
        }

        @Override // com.google.android.gms.internal.zzabc.zza
        public void zzc(ConnectionResult connectionResult) {
            zzaai.this.zzaAG.lock();
            try {
                zzaai.this.zzaAE = connectionResult;
                zzaai.this.zzvP();
            } finally {
                zzaai.this.zzaAG.unlock();
            }
        }

        @Override // com.google.android.gms.internal.zzabc.zza
        public void zzo(Bundle bundle) {
            zzaai.this.zzaAG.lock();
            try {
                zzaai.this.zzaAE = ConnectionResult.zzayj;
                zzaai.this.zzvP();
            } finally {
                zzaai.this.zzaAG.unlock();
            }
        }
    }

    private zzaai(Context context, zzaat zzaatVar, Lock lock, Looper looper, com.google.android.gms.common.zze zzeVar, Map<Api.zzc<?>, Api.zze> map, Map<Api.zzc<?>, Api.zze> map2, com.google.android.gms.common.internal.zzg zzgVar, Api.zza<? extends zzbai, zzbaj> zzaVar, Api.zze zzeVar2, ArrayList<zzaag> arrayList, ArrayList<zzaag> arrayList2, Map<Api<?>, Boolean> map3, Map<Api<?>, Boolean> map4) {
        this.mContext = context;
        this.zzaAw = zzaatVar;
        this.zzaAG = lock;
        this.zzrs = looper;
        this.zzaAB = zzeVar2;
        this.zzaAx = new zzaav(context, this.zzaAw, lock, looper, zzeVar, map2, null, map4, null, arrayList2, new zza());
        this.zzaAy = new zzaav(context, this.zzaAw, lock, looper, zzeVar, map, zzgVar, map3, zzaVar, arrayList, new zzb());
        a aVar = new a();
        for (Api.zzc<?> zzcVar : map2.keySet()) {
            aVar.put(zzcVar, this.zzaAx);
        }
        for (Api.zzc<?> zzcVar2 : map.keySet()) {
            aVar.put(zzcVar2, this.zzaAy);
        }
        this.zzaAz = Collections.unmodifiableMap(aVar);
    }

    public static zzaai zza(Context context, zzaat zzaatVar, Lock lock, Looper looper, com.google.android.gms.common.zze zzeVar, Map<Api.zzc<?>, Api.zze> map, com.google.android.gms.common.internal.zzg zzgVar, Map<Api<?>, Boolean> map2, Api.zza<? extends zzbai, zzbaj> zzaVar, ArrayList<zzaag> arrayList) {
        Api.zze zzeVar2 = null;
        a aVar = new a();
        a aVar2 = new a();
        for (Map.Entry<Api.zzc<?>, Api.zze> entry : map.entrySet()) {
            Api.zze value = entry.getValue();
            if (value.zzrr()) {
                zzeVar2 = value;
            }
            if (value.zzrd()) {
                aVar.put(entry.getKey(), value);
            } else {
                aVar2.put(entry.getKey(), value);
            }
        }
        com.google.android.gms.common.internal.zzac.zza(!aVar.isEmpty(), "CompositeGoogleApiClient should not be used without any APIs that require sign-in.");
        a aVar3 = new a();
        a aVar4 = new a();
        for (Api<?> api : map2.keySet()) {
            Api.zzc<?> zzvg = api.zzvg();
            if (aVar.containsKey(zzvg)) {
                aVar3.put(api, map2.get(api));
            } else if (!aVar2.containsKey(zzvg)) {
                throw new IllegalStateException("Each API in the isOptionalMap must have a corresponding client in the clients map.");
            } else {
                aVar4.put(api, map2.get(api));
            }
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        Iterator<zzaag> it = arrayList.iterator();
        while (it.hasNext()) {
            zzaag next = it.next();
            if (aVar3.containsKey(next.zzaxf)) {
                arrayList2.add(next);
            } else if (!aVar4.containsKey(next.zzaxf)) {
                throw new IllegalStateException("Each ClientCallbacks must have a corresponding API in the isOptionalMap");
            } else {
                arrayList3.add(next);
            }
        }
        return new zzaai(context, zzaatVar, lock, looper, zzeVar, aVar, aVar2, zzgVar, zzaVar, zzeVar2, arrayList2, arrayList3, aVar3, aVar4);
    }

    private void zza(ConnectionResult connectionResult) {
        switch (this.zzaAH) {
            case 2:
                this.zzaAw.zzc(connectionResult);
            case 1:
                zzvR();
                break;
            default:
                Log.wtf("CompositeGAC", "Attempted to call failure callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new Exception());
                break;
        }
        this.zzaAH = 0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzb(int i, boolean z) {
        this.zzaAw.zzc(i, z);
        this.zzaAE = null;
        this.zzaAD = null;
    }

    private static boolean zzb(ConnectionResult connectionResult) {
        return connectionResult != null && connectionResult.isSuccess();
    }

    private boolean zzc(zzaad.zza<? extends Result, ? extends Api.zzb> zzaVar) {
        Api.zzc<? extends Api.zzb> zzvg = zzaVar.zzvg();
        com.google.android.gms.common.internal.zzac.zzb(this.zzaAz.containsKey(zzvg), "GoogleApiClient is not configured to use the API required for this call.");
        return this.zzaAz.get(zzvg).equals(this.zzaAy);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzn(Bundle bundle) {
        if (this.zzaAC == null) {
            this.zzaAC = bundle;
        } else if (bundle == null) {
        } else {
            this.zzaAC.putAll(bundle);
        }
    }

    private void zzvO() {
        this.zzaAE = null;
        this.zzaAD = null;
        this.zzaAx.connect();
        this.zzaAy.connect();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzvP() {
        if (zzb(this.zzaAD)) {
            if (zzb(this.zzaAE) || zzvS()) {
                zzvQ();
            } else if (this.zzaAE == null) {
            } else {
                if (this.zzaAH == 1) {
                    zzvR();
                    return;
                }
                zza(this.zzaAE);
                this.zzaAx.disconnect();
            }
        } else if (this.zzaAD != null && zzb(this.zzaAE)) {
            this.zzaAy.disconnect();
            zza(this.zzaAD);
        } else if (this.zzaAD == null || this.zzaAE == null) {
        } else {
            ConnectionResult connectionResult = this.zzaAD;
            if (this.zzaAy.zzaCi < this.zzaAx.zzaCi) {
                connectionResult = this.zzaAE;
            }
            zza(connectionResult);
        }
    }

    private void zzvQ() {
        switch (this.zzaAH) {
            case 2:
                this.zzaAw.zzo(this.zzaAC);
            case 1:
                zzvR();
                break;
            default:
                Log.wtf("CompositeGAC", "Attempted to call success callbacks in CONNECTION_MODE_NONE. Callbacks should be disabled via GmsClientSupervisor", new AssertionError());
                break;
        }
        this.zzaAH = 0;
    }

    private void zzvR() {
        for (zzabq zzabqVar : this.zzaAA) {
            zzabqVar.zzrq();
        }
        this.zzaAA.clear();
    }

    private boolean zzvS() {
        return this.zzaAE != null && this.zzaAE.getErrorCode() == 4;
    }

    private PendingIntent zzvT() {
        if (this.zzaAB == null) {
            return null;
        }
        return PendingIntent.getActivity(this.mContext, this.zzaAw.getSessionId(), this.zzaAB.zzrs(), 134217728);
    }

    @Override // com.google.android.gms.internal.zzabc
    public ConnectionResult blockingConnect() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.zzabc
    public ConnectionResult blockingConnect(long j, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.zzabc
    public void connect() {
        this.zzaAH = 2;
        this.zzaAF = false;
        zzvO();
    }

    @Override // com.google.android.gms.internal.zzabc
    public void disconnect() {
        this.zzaAE = null;
        this.zzaAD = null;
        this.zzaAH = 0;
        this.zzaAx.disconnect();
        this.zzaAy.disconnect();
        zzvR();
    }

    @Override // com.google.android.gms.internal.zzabc
    public void dump(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        printWriter.append((CharSequence) str).append("authClient").println(":");
        this.zzaAy.dump(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
        printWriter.append((CharSequence) str).append("anonClient").println(":");
        this.zzaAx.dump(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
    }

    @Override // com.google.android.gms.internal.zzabc
    public ConnectionResult getConnectionResult(Api<?> api) {
        return this.zzaAz.get(api.zzvg()).equals(this.zzaAy) ? zzvS() ? new ConnectionResult(4, zzvT()) : this.zzaAy.getConnectionResult(api) : this.zzaAx.getConnectionResult(api);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001c, code lost:
        if (r2.zzaAH == 1) goto L12;
     */
    @Override // com.google.android.gms.internal.zzabc
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean isConnected() {
        boolean z = true;
        this.zzaAG.lock();
        try {
            if (this.zzaAx.isConnected()) {
                if (!zzvN() && !zzvS()) {
                }
                return z;
            }
            z = false;
            return z;
        } finally {
            this.zzaAG.unlock();
        }
    }

    @Override // com.google.android.gms.internal.zzabc
    public boolean isConnecting() {
        this.zzaAG.lock();
        try {
            return this.zzaAH == 2;
        } finally {
            this.zzaAG.unlock();
        }
    }

    @Override // com.google.android.gms.internal.zzabc
    public <A extends Api.zzb, R extends Result, T extends zzaad.zza<R, A>> T zza(T t) {
        if (zzc((zzaad.zza<? extends Result, ? extends Api.zzb>) t)) {
            if (!zzvS()) {
                return (T) this.zzaAy.zza((zzaav) t);
            }
            t.zzB(new Status(4, null, zzvT()));
            return t;
        }
        return (T) this.zzaAx.zza((zzaav) t);
    }

    @Override // com.google.android.gms.internal.zzabc
    public boolean zza(zzabq zzabqVar) {
        this.zzaAG.lock();
        try {
            if ((!isConnecting() && !isConnected()) || zzvN()) {
                this.zzaAG.unlock();
                return false;
            }
            this.zzaAA.add(zzabqVar);
            if (this.zzaAH == 0) {
                this.zzaAH = 1;
            }
            this.zzaAE = null;
            this.zzaAy.connect();
            return true;
        } finally {
            this.zzaAG.unlock();
        }
    }

    @Override // com.google.android.gms.internal.zzabc
    public <A extends Api.zzb, T extends zzaad.zza<? extends Result, A>> T zzb(T t) {
        if (zzc((zzaad.zza<? extends Result, ? extends Api.zzb>) t)) {
            if (!zzvS()) {
                return (T) this.zzaAy.zzb((zzaav) t);
            }
            t.zzB(new Status(4, null, zzvT()));
            return t;
        }
        return (T) this.zzaAx.zzb((zzaav) t);
    }

    @Override // com.google.android.gms.internal.zzabc
    public void zzvM() {
        this.zzaAx.zzvM();
        this.zzaAy.zzvM();
    }

    public boolean zzvN() {
        return this.zzaAy.isConnected();
    }

    @Override // com.google.android.gms.internal.zzabc
    public void zzvn() {
        this.zzaAG.lock();
        try {
            boolean isConnecting = isConnecting();
            this.zzaAy.disconnect();
            this.zzaAE = new ConnectionResult(4);
            if (isConnecting) {
                new Handler(this.zzrs).post(new Runnable() { // from class: com.google.android.gms.internal.zzaai.1
                    @Override // java.lang.Runnable
                    public void run() {
                        zzaai.this.zzaAG.lock();
                        try {
                            zzaai.this.zzvP();
                        } finally {
                            zzaai.this.zzaAG.unlock();
                        }
                    }
                });
            } else {
                zzvR();
            }
        } finally {
            this.zzaAG.unlock();
        }
    }
}
