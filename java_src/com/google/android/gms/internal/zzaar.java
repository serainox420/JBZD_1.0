package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzg;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzaav;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.Future;
import java.util.concurrent.locks.Lock;
/* loaded from: classes2.dex */
public class zzaar implements zzaau {
    private final Context mContext;
    private final Lock zzaAG;
    private final com.google.android.gms.common.internal.zzg zzaAL;
    private final Map<Api<?>, Boolean> zzaAO;
    private final com.google.android.gms.common.zze zzaAQ;
    private ConnectionResult zzaAZ;
    private final zzaav zzaBk;
    private int zzaBn;
    private int zzaBp;
    private zzbai zzaBs;
    private boolean zzaBt;
    private boolean zzaBu;
    private boolean zzaBv;
    private com.google.android.gms.common.internal.zzr zzaBw;
    private boolean zzaBx;
    private boolean zzaBy;
    private final Api.zza<? extends zzbai, zzbaj> zzazo;
    private int zzaBo = 0;
    private final Bundle zzaBq = new Bundle();
    private final Set<Api.zzc> zzaBr = new HashSet();
    private ArrayList<Future<?>> zzaBz = new ArrayList<>();

    /* loaded from: classes2.dex */
    private static class zza implements zzf.InterfaceC0175zzf {
        private final boolean zzaAu;
        private final WeakReference<zzaar> zzaBB;
        private final Api<?> zzaxf;

        public zza(zzaar zzaarVar, Api<?> api, boolean z) {
            this.zzaBB = new WeakReference<>(zzaarVar);
            this.zzaxf = api;
            this.zzaAu = z;
        }

        @Override // com.google.android.gms.common.internal.zzf.InterfaceC0175zzf
        public void zzg(ConnectionResult connectionResult) {
            boolean z = false;
            zzaar zzaarVar = this.zzaBB.get();
            if (zzaarVar == null) {
                return;
            }
            if (Looper.myLooper() == zzaarVar.zzaBk.zzaAw.getLooper()) {
                z = true;
            }
            com.google.android.gms.common.internal.zzac.zza(z, "onReportServiceBinding must be called on the GoogleApiClient handler thread");
            zzaarVar.zzaAG.lock();
            try {
                if (!zzaarVar.zzcB(0)) {
                    return;
                }
                if (!connectionResult.isSuccess()) {
                    zzaarVar.zzb(connectionResult, this.zzaxf, this.zzaAu);
                }
                if (zzaarVar.zzwf()) {
                    zzaarVar.zzwg();
                }
            } finally {
                zzaarVar.zzaAG.unlock();
            }
        }
    }

    /* loaded from: classes2.dex */
    private class zzb extends zzf {
        private final Map<Api.zze, zza> zzaBC;

        public zzb(Map<Api.zze, zza> map) {
            super();
            this.zzaBC = map;
        }

        @Override // com.google.android.gms.internal.zzaar.zzf
        public void zzwe() {
            boolean z;
            boolean z2;
            boolean z3;
            boolean z4 = true;
            int i = 0;
            Iterator<Api.zze> it = this.zzaBC.keySet().iterator();
            boolean z5 = true;
            boolean z6 = false;
            while (true) {
                if (!it.hasNext()) {
                    z4 = z6;
                    z = false;
                    break;
                }
                Api.zze next = it.next();
                if (!next.zzvh()) {
                    z2 = false;
                    z3 = z6;
                } else if (!this.zzaBC.get(next).zzaAu) {
                    z = true;
                    break;
                } else {
                    z2 = z5;
                    z3 = true;
                }
                z6 = z3;
                z5 = z2;
            }
            if (z4) {
                i = zzaar.this.zzaAQ.isGooglePlayServicesAvailable(zzaar.this.mContext);
            }
            if (i != 0 && (z || z5)) {
                final ConnectionResult connectionResult = new ConnectionResult(i, null);
                zzaar.this.zzaBk.zza(new zzaav.zza(zzaar.this) { // from class: com.google.android.gms.internal.zzaar.zzb.1
                    @Override // com.google.android.gms.internal.zzaav.zza
                    public void zzwe() {
                        zzaar.this.zzf(connectionResult);
                    }
                });
                return;
            }
            if (zzaar.this.zzaBu) {
                zzaar.this.zzaBs.connect();
            }
            for (Api.zze zzeVar : this.zzaBC.keySet()) {
                final zza zzaVar = this.zzaBC.get(zzeVar);
                if (!zzeVar.zzvh() || i == 0) {
                    zzeVar.zza(zzaVar);
                } else {
                    zzaar.this.zzaBk.zza(new zzaav.zza(this, zzaar.this) { // from class: com.google.android.gms.internal.zzaar.zzb.2
                        @Override // com.google.android.gms.internal.zzaav.zza
                        public void zzwe() {
                            zzaVar.zzg(new ConnectionResult(16, null));
                        }
                    });
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zzc extends zzf {
        private final ArrayList<Api.zze> zzaBG;

        public zzc(ArrayList<Api.zze> arrayList) {
            super();
            this.zzaBG = arrayList;
        }

        @Override // com.google.android.gms.internal.zzaar.zzf
        public void zzwe() {
            zzaar.this.zzaBk.zzaAw.zzaBR = zzaar.this.zzwl();
            Iterator<Api.zze> it = this.zzaBG.iterator();
            while (it.hasNext()) {
                it.next().zza(zzaar.this.zzaBw, zzaar.this.zzaBk.zzaAw.zzaBR);
            }
        }
    }

    /* loaded from: classes2.dex */
    private static class zzd extends zzbam {
        private final WeakReference<zzaar> zzaBB;

        zzd(zzaar zzaarVar) {
            this.zzaBB = new WeakReference<>(zzaarVar);
        }

        @Override // com.google.android.gms.internal.zzbam, com.google.android.gms.internal.zzbap
        public void zzb(final zzbaw zzbawVar) {
            final zzaar zzaarVar = this.zzaBB.get();
            if (zzaarVar == null) {
                return;
            }
            zzaarVar.zzaBk.zza(new zzaav.zza(this, zzaarVar) { // from class: com.google.android.gms.internal.zzaar.zzd.1
                @Override // com.google.android.gms.internal.zzaav.zza
                public void zzwe() {
                    zzaarVar.zza(zzbawVar);
                }
            });
        }
    }

    /* loaded from: classes2.dex */
    private class zze implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener {
        private zze() {
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        public void onConnected(Bundle bundle) {
            zzaar.this.zzaBs.zza(new zzd(zzaar.this));
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
        public void onConnectionFailed(ConnectionResult connectionResult) {
            zzaar.this.zzaAG.lock();
            try {
                if (zzaar.this.zze(connectionResult)) {
                    zzaar.this.zzwj();
                    zzaar.this.zzwg();
                } else {
                    zzaar.this.zzf(connectionResult);
                }
            } finally {
                zzaar.this.zzaAG.unlock();
            }
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        public void onConnectionSuspended(int i) {
        }
    }

    /* loaded from: classes2.dex */
    private abstract class zzf implements Runnable {
        private zzf() {
        }

        @Override // java.lang.Runnable
        public void run() {
            zzaar.this.zzaAG.lock();
            try {
                if (Thread.interrupted()) {
                    return;
                }
                zzwe();
            } catch (RuntimeException e) {
                zzaar.this.zzaBk.zza(e);
            } finally {
                zzaar.this.zzaAG.unlock();
            }
        }

        protected abstract void zzwe();
    }

    public zzaar(zzaav zzaavVar, com.google.android.gms.common.internal.zzg zzgVar, Map<Api<?>, Boolean> map, com.google.android.gms.common.zze zzeVar, Api.zza<? extends zzbai, zzbaj> zzaVar, Lock lock, Context context) {
        this.zzaBk = zzaavVar;
        this.zzaAL = zzgVar;
        this.zzaAO = map;
        this.zzaAQ = zzeVar;
        this.zzazo = zzaVar;
        this.zzaAG = lock;
        this.mContext = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(zzbaw zzbawVar) {
        if (!zzcB(0)) {
            return;
        }
        ConnectionResult zzyh = zzbawVar.zzyh();
        if (!zzyh.isSuccess()) {
            if (!zze(zzyh)) {
                zzf(zzyh);
                return;
            }
            zzwj();
            zzwg();
            return;
        }
        com.google.android.gms.common.internal.zzaf zzPU = zzbawVar.zzPU();
        ConnectionResult zzyh2 = zzPU.zzyh();
        if (!zzyh2.isSuccess()) {
            String valueOf = String.valueOf(zzyh2);
            Log.wtf("GoogleApiClientConnecting", new StringBuilder(String.valueOf(valueOf).length() + 48).append("Sign-in succeeded with resolve account failure: ").append(valueOf).toString(), new Exception());
            zzf(zzyh2);
            return;
        }
        this.zzaBv = true;
        this.zzaBw = zzPU.zzyg();
        this.zzaBx = zzPU.zzyi();
        this.zzaBy = zzPU.zzyj();
        zzwg();
    }

    private boolean zza(int i, boolean z, ConnectionResult connectionResult) {
        if (!z || zzd(connectionResult)) {
            return this.zzaAZ == null || i < this.zzaBn;
        }
        return false;
    }

    private void zzau(boolean z) {
        if (this.zzaBs != null) {
            if (this.zzaBs.isConnected() && z) {
                this.zzaBs.zzPJ();
            }
            this.zzaBs.disconnect();
            this.zzaBw = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzb(ConnectionResult connectionResult, Api<?> api, boolean z) {
        int priority = api.zzve().getPriority();
        if (zza(priority, z, connectionResult)) {
            this.zzaAZ = connectionResult;
            this.zzaBn = priority;
        }
        this.zzaBk.zzaCf.put(api.zzvg(), connectionResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean zzcB(int i) {
        if (this.zzaBo != i) {
            Log.w("GoogleApiClientConnecting", this.zzaBk.zzaAw.zzwr());
            String valueOf = String.valueOf(this);
            Log.w("GoogleApiClientConnecting", new StringBuilder(String.valueOf(valueOf).length() + 23).append("Unexpected callback in ").append(valueOf).toString());
            Log.w("GoogleApiClientConnecting", new StringBuilder(33).append("mRemainingConnections=").append(this.zzaBp).toString());
            String valueOf2 = String.valueOf(zzcC(this.zzaBo));
            String valueOf3 = String.valueOf(zzcC(i));
            Log.wtf("GoogleApiClientConnecting", new StringBuilder(String.valueOf(valueOf2).length() + 70 + String.valueOf(valueOf3).length()).append("GoogleApiClient connecting is in step ").append(valueOf2).append(" but received callback for step ").append(valueOf3).toString(), new Exception());
            zzf(new ConnectionResult(8, null));
            return false;
        }
        return true;
    }

    private String zzcC(int i) {
        switch (i) {
            case 0:
                return "STEP_SERVICE_BINDINGS_AND_SIGN_IN";
            case 1:
                return "STEP_GETTING_REMOTE_SERVICE";
            default:
                return "UNKNOWN";
        }
    }

    private boolean zzd(ConnectionResult connectionResult) {
        return connectionResult.hasResolution() || this.zzaAQ.zzcw(connectionResult.getErrorCode()) != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean zze(ConnectionResult connectionResult) {
        return this.zzaBt && !connectionResult.hasResolution();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzf(ConnectionResult connectionResult) {
        zzwk();
        zzau(!connectionResult.hasResolution());
        this.zzaBk.zzh(connectionResult);
        this.zzaBk.zzaCj.zzc(connectionResult);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean zzwf() {
        this.zzaBp--;
        if (this.zzaBp > 0) {
            return false;
        }
        if (this.zzaBp < 0) {
            Log.w("GoogleApiClientConnecting", this.zzaBk.zzaAw.zzwr());
            Log.wtf("GoogleApiClientConnecting", "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect.", new Exception());
            zzf(new ConnectionResult(8, null));
            return false;
        } else if (this.zzaAZ == null) {
            return true;
        } else {
            this.zzaBk.zzaCi = this.zzaBn;
            zzf(this.zzaAZ);
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzwg() {
        if (this.zzaBp != 0) {
            return;
        }
        if (this.zzaBu && !this.zzaBv) {
            return;
        }
        zzwh();
    }

    private void zzwh() {
        ArrayList arrayList = new ArrayList();
        this.zzaBo = 1;
        this.zzaBp = this.zzaBk.zzaBQ.size();
        for (Api.zzc<?> zzcVar : this.zzaBk.zzaBQ.keySet()) {
            if (!this.zzaBk.zzaCf.containsKey(zzcVar)) {
                arrayList.add(this.zzaBk.zzaBQ.get(zzcVar));
            } else if (zzwf()) {
                zzwi();
            }
        }
        if (!arrayList.isEmpty()) {
            this.zzaBz.add(zzaaw.zzwv().submit(new zzc(arrayList)));
        }
    }

    private void zzwi() {
        this.zzaBk.zzwt();
        zzaaw.zzwv().execute(new Runnable() { // from class: com.google.android.gms.internal.zzaar.1
            @Override // java.lang.Runnable
            public void run() {
                zzaar.this.zzaAQ.zzaF(zzaar.this.mContext);
            }
        });
        if (this.zzaBs != null) {
            if (this.zzaBx) {
                this.zzaBs.zza(this.zzaBw, this.zzaBy);
            }
            zzau(false);
        }
        for (Api.zzc<?> zzcVar : this.zzaBk.zzaCf.keySet()) {
            this.zzaBk.zzaBQ.get(zzcVar).disconnect();
        }
        this.zzaBk.zzaCj.zzo(this.zzaBq.isEmpty() ? null : this.zzaBq);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzwj() {
        this.zzaBu = false;
        this.zzaBk.zzaAw.zzaBR = Collections.emptySet();
        for (Api.zzc<?> zzcVar : this.zzaBr) {
            if (!this.zzaBk.zzaCf.containsKey(zzcVar)) {
                this.zzaBk.zzaCf.put(zzcVar, new ConnectionResult(17, null));
            }
        }
    }

    private void zzwk() {
        Iterator<Future<?>> it = this.zzaBz.iterator();
        while (it.hasNext()) {
            it.next().cancel(true);
        }
        this.zzaBz.clear();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public Set<Scope> zzwl() {
        if (this.zzaAL == null) {
            return Collections.emptySet();
        }
        HashSet hashSet = new HashSet(this.zzaAL.zzxL());
        Map<Api<?>, zzg.zza> zzxN = this.zzaAL.zzxN();
        for (Api<?> api : zzxN.keySet()) {
            if (!this.zzaBk.zzaCf.containsKey(api.zzvg())) {
                hashSet.addAll(zzxN.get(api).zzakq);
            }
        }
        return hashSet;
    }

    @Override // com.google.android.gms.internal.zzaau
    public void begin() {
        this.zzaBk.zzaCf.clear();
        this.zzaBu = false;
        this.zzaAZ = null;
        this.zzaBo = 0;
        this.zzaBt = true;
        this.zzaBv = false;
        this.zzaBx = false;
        HashMap hashMap = new HashMap();
        boolean z = false;
        for (Api<?> api : this.zzaAO.keySet()) {
            Api.zze zzeVar = this.zzaBk.zzaBQ.get(api.zzvg());
            boolean z2 = (api.zzve().getPriority() == 1) | z;
            boolean booleanValue = this.zzaAO.get(api).booleanValue();
            if (zzeVar.zzrd()) {
                this.zzaBu = true;
                if (booleanValue) {
                    this.zzaBr.add(api.zzvg());
                } else {
                    this.zzaBt = false;
                }
            }
            hashMap.put(zzeVar, new zza(this, api, booleanValue));
            z = z2;
        }
        if (z) {
            this.zzaBu = false;
        }
        if (this.zzaBu) {
            this.zzaAL.zzc(Integer.valueOf(this.zzaBk.zzaAw.getSessionId()));
            zze zzeVar2 = new zze();
            this.zzaBs = this.zzazo.zza(this.mContext, this.zzaBk.zzaAw.getLooper(), this.zzaAL, this.zzaAL.zzxR(), zzeVar2, zzeVar2);
        }
        this.zzaBp = this.zzaBk.zzaBQ.size();
        this.zzaBz.add(zzaaw.zzwv().submit(new zzb(hashMap)));
    }

    @Override // com.google.android.gms.internal.zzaau
    public void connect() {
    }

    @Override // com.google.android.gms.internal.zzaau
    public boolean disconnect() {
        zzwk();
        zzau(true);
        this.zzaBk.zzh(null);
        return true;
    }

    @Override // com.google.android.gms.internal.zzaau
    public void onConnected(Bundle bundle) {
        if (!zzcB(1)) {
            return;
        }
        if (bundle != null) {
            this.zzaBq.putAll(bundle);
        }
        if (!zzwf()) {
            return;
        }
        zzwi();
    }

    @Override // com.google.android.gms.internal.zzaau
    public void onConnectionSuspended(int i) {
        zzf(new ConnectionResult(8, null));
    }

    @Override // com.google.android.gms.internal.zzaau
    public <A extends Api.zzb, R extends Result, T extends zzaad.zza<R, A>> T zza(T t) {
        this.zzaBk.zzaAw.zzaAU.add(t);
        return t;
    }

    @Override // com.google.android.gms.internal.zzaau
    public void zza(ConnectionResult connectionResult, Api<?> api, boolean z) {
        if (!zzcB(1)) {
            return;
        }
        zzb(connectionResult, api, z);
        if (!zzwf()) {
            return;
        }
        zzwi();
    }

    @Override // com.google.android.gms.internal.zzaau
    public <A extends Api.zzb, T extends zzaad.zza<? extends Result, A>> T zzb(T t) {
        throw new IllegalStateException("GoogleApiClient is not connected yet.");
    }
}
