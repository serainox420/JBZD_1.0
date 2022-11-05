package com.google.android.gms.internal;

import android.app.Application;
import android.app.PendingIntent;
import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.internal.zzaac;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzabr;
import com.google.android.gms.internal.zzzx;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2.dex */
public class zzaax implements Handler.Callback {
    private static zzaax zzaCq;
    private final Context mContext;
    private final Handler mHandler;
    private final GoogleApiAvailability zzazn;
    public static final Status zzaCn = new Status(4, "Sign-out occurred while this API call was in progress.");
    private static final Status zzaCo = new Status(4, "The user must be signed in to make this API call.");
    private static final Object zztX = new Object();
    private long zzaBN = 5000;
    private long zzaBM = 120000;
    private long zzaCp = NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS;
    private int zzaCr = -1;
    private final AtomicInteger zzaCs = new AtomicInteger(1);
    private final AtomicInteger zzaCt = new AtomicInteger(0);
    private final Map<zzzz<?>, zza<?>> zzaAM = new ConcurrentHashMap(5, 0.75f, 1);
    private zzaam zzaCu = null;
    private final Set<zzzz<?>> zzaCv = new com.google.android.gms.common.util.zza();
    private final Set<zzzz<?>> zzaCw = new com.google.android.gms.common.util.zza();

    /* loaded from: classes2.dex */
    public class zza<O extends Api.ApiOptions> implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener, zzaah {
        private final Api.zze zzaAJ;
        private boolean zzaBL;
        private final zzaal zzaCA;
        private final int zzaCD;
        private final zzabr zzaCE;
        private final Api.zzb zzaCz;
        private final zzzz<O> zzayU;
        private final Queue<zzzx> zzaCy = new LinkedList();
        private final Set<zzaab> zzaCB = new HashSet();
        private final Map<zzabh.zzb<?>, zzabn> zzaCC = new HashMap();
        private ConnectionResult zzaCF = null;

        public zza(com.google.android.gms.common.api.zzc<O> zzcVar) {
            this.zzaAJ = zzcVar.buildApiClient(zzaax.this.mHandler.getLooper(), this);
            if (this.zzaAJ instanceof com.google.android.gms.common.internal.zzal) {
                this.zzaCz = ((com.google.android.gms.common.internal.zzal) this.zzaAJ).zzyn();
            } else {
                this.zzaCz = this.zzaAJ;
            }
            this.zzayU = zzcVar.getApiKey();
            this.zzaCA = new zzaal();
            this.zzaCD = zzcVar.getInstanceId();
            if (this.zzaAJ.zzrd()) {
                this.zzaCE = zzcVar.createSignInCoordinator(zzaax.this.mContext, zzaax.this.mHandler);
            } else {
                this.zzaCE = null;
            }
        }

        private void zzb(zzzx zzzxVar) {
            zzzxVar.zza(this.zzaCA, zzrd());
            try {
                zzzxVar.zza((zza<?>) this);
            } catch (DeadObjectException e) {
                onConnectionSuspended(1);
                this.zzaAJ.disconnect();
            }
        }

        private void zzj(ConnectionResult connectionResult) {
            for (zzaab zzaabVar : this.zzaCB) {
                zzaabVar.zza(this.zzayU, connectionResult);
            }
            this.zzaCB.clear();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzwF() {
            zzwJ();
            zzj(ConnectionResult.zzayj);
            zzwL();
            Iterator<zzabn> it = this.zzaCC.values().iterator();
            while (it.hasNext()) {
                it.next();
                try {
                    new TaskCompletionSource();
                } catch (DeadObjectException e) {
                    onConnectionSuspended(1);
                    this.zzaAJ.disconnect();
                } catch (RemoteException e2) {
                }
            }
            zzwH();
            zzwM();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzwG() {
            zzwJ();
            this.zzaBL = true;
            this.zzaCA.zzwa();
            zzaax.this.mHandler.sendMessageDelayed(Message.obtain(zzaax.this.mHandler, 9, this.zzayU), zzaax.this.zzaBN);
            zzaax.this.mHandler.sendMessageDelayed(Message.obtain(zzaax.this.mHandler, 11, this.zzayU), zzaax.this.zzaBM);
            zzaax.this.zzaCr = -1;
        }

        private void zzwH() {
            while (this.zzaAJ.isConnected() && !this.zzaCy.isEmpty()) {
                zzb(this.zzaCy.remove());
            }
        }

        private void zzwL() {
            if (this.zzaBL) {
                zzaax.this.mHandler.removeMessages(11, this.zzayU);
                zzaax.this.mHandler.removeMessages(9, this.zzayU);
                this.zzaBL = false;
            }
        }

        private void zzwM() {
            zzaax.this.mHandler.removeMessages(12, this.zzayU);
            zzaax.this.mHandler.sendMessageDelayed(zzaax.this.mHandler.obtainMessage(12, this.zzayU), zzaax.this.zzaCp);
        }

        public void connect() {
            com.google.android.gms.common.internal.zzac.zza(zzaax.this.mHandler);
            if (this.zzaAJ.isConnected() || this.zzaAJ.isConnecting()) {
                return;
            }
            if (this.zzaAJ.zzvh() && zzaax.this.zzaCr != 0) {
                zzaax.this.zzaCr = zzaax.this.zzazn.isGooglePlayServicesAvailable(zzaax.this.mContext);
                if (zzaax.this.zzaCr != 0) {
                    onConnectionFailed(new ConnectionResult(zzaax.this.zzaCr, null));
                    return;
                }
            }
            zzb zzbVar = new zzb(this.zzaAJ, this.zzayU);
            if (this.zzaAJ.zzrd()) {
                this.zzaCE.zza(zzbVar);
            }
            this.zzaAJ.zza(zzbVar);
        }

        public int getInstanceId() {
            return this.zzaCD;
        }

        boolean isConnected() {
            return this.zzaAJ.isConnected();
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        public void onConnected(Bundle bundle) {
            if (Looper.myLooper() == zzaax.this.mHandler.getLooper()) {
                zzwF();
            } else {
                zzaax.this.mHandler.post(new Runnable() { // from class: com.google.android.gms.internal.zzaax.zza.1
                    @Override // java.lang.Runnable
                    public void run() {
                        zza.this.zzwF();
                    }
                });
            }
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener
        public void onConnectionFailed(ConnectionResult connectionResult) {
            com.google.android.gms.common.internal.zzac.zza(zzaax.this.mHandler);
            if (this.zzaCE != null) {
                this.zzaCE.zzwY();
            }
            zzwJ();
            zzaax.this.zzaCr = -1;
            zzj(connectionResult);
            if (connectionResult.getErrorCode() == 4) {
                zzD(zzaax.zzaCo);
            } else if (this.zzaCy.isEmpty()) {
                this.zzaCF = connectionResult;
            } else {
                synchronized (zzaax.zztX) {
                    if (zzaax.this.zzaCu != null && zzaax.this.zzaCv.contains(this.zzayU)) {
                        zzaax.this.zzaCu.zzb(connectionResult, this.zzaCD);
                    } else if (!zzaax.this.zzc(connectionResult, this.zzaCD)) {
                        if (connectionResult.getErrorCode() == 18) {
                            this.zzaBL = true;
                        }
                        if (this.zzaBL) {
                            zzaax.this.mHandler.sendMessageDelayed(Message.obtain(zzaax.this.mHandler, 9, this.zzayU), zzaax.this.zzaBN);
                        } else {
                            String valueOf = String.valueOf(this.zzayU.zzvw());
                            zzD(new Status(17, new StringBuilder(String.valueOf(valueOf).length() + 38).append("API: ").append(valueOf).append(" is not available on this device.").toString()));
                        }
                    }
                }
            }
        }

        @Override // com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks
        public void onConnectionSuspended(int i) {
            if (Looper.myLooper() == zzaax.this.mHandler.getLooper()) {
                zzwG();
            } else {
                zzaax.this.mHandler.post(new Runnable() { // from class: com.google.android.gms.internal.zzaax.zza.2
                    @Override // java.lang.Runnable
                    public void run() {
                        zza.this.zzwG();
                    }
                });
            }
        }

        public void resume() {
            com.google.android.gms.common.internal.zzac.zza(zzaax.this.mHandler);
            if (this.zzaBL) {
                connect();
            }
        }

        public void signOut() {
            com.google.android.gms.common.internal.zzac.zza(zzaax.this.mHandler);
            zzD(zzaax.zzaCn);
            this.zzaCA.zzvZ();
            for (zzabh.zzb<?> zzbVar : this.zzaCC.keySet()) {
                zza(new zzzx.zze(zzbVar, new TaskCompletionSource()));
            }
            zzj(new ConnectionResult(4));
            this.zzaAJ.disconnect();
        }

        public void zzD(Status status) {
            com.google.android.gms.common.internal.zzac.zza(zzaax.this.mHandler);
            for (zzzx zzzxVar : this.zzaCy) {
                zzzxVar.zzz(status);
            }
            this.zzaCy.clear();
        }

        @Override // com.google.android.gms.internal.zzaah
        public void zza(final ConnectionResult connectionResult, Api<?> api, boolean z) {
            if (Looper.myLooper() == zzaax.this.mHandler.getLooper()) {
                onConnectionFailed(connectionResult);
            } else {
                zzaax.this.mHandler.post(new Runnable() { // from class: com.google.android.gms.internal.zzaax.zza.3
                    @Override // java.lang.Runnable
                    public void run() {
                        zza.this.onConnectionFailed(connectionResult);
                    }
                });
            }
        }

        public void zza(zzzx zzzxVar) {
            com.google.android.gms.common.internal.zzac.zza(zzaax.this.mHandler);
            if (this.zzaAJ.isConnected()) {
                zzb(zzzxVar);
                zzwM();
                return;
            }
            this.zzaCy.add(zzzxVar);
            if (this.zzaCF == null || !this.zzaCF.hasResolution()) {
                connect();
            } else {
                onConnectionFailed(this.zzaCF);
            }
        }

        public void zzb(zzaab zzaabVar) {
            com.google.android.gms.common.internal.zzac.zza(zzaax.this.mHandler);
            this.zzaCB.add(zzaabVar);
        }

        public void zzi(ConnectionResult connectionResult) {
            com.google.android.gms.common.internal.zzac.zza(zzaax.this.mHandler);
            this.zzaAJ.disconnect();
            onConnectionFailed(connectionResult);
        }

        public boolean zzrd() {
            return this.zzaAJ.zzrd();
        }

        public Api.zze zzvU() {
            return this.zzaAJ;
        }

        public Map<zzabh.zzb<?>, zzabn> zzwI() {
            return this.zzaCC;
        }

        public void zzwJ() {
            com.google.android.gms.common.internal.zzac.zza(zzaax.this.mHandler);
            this.zzaCF = null;
        }

        public ConnectionResult zzwK() {
            com.google.android.gms.common.internal.zzac.zza(zzaax.this.mHandler);
            return this.zzaCF;
        }

        public void zzwN() {
            com.google.android.gms.common.internal.zzac.zza(zzaax.this.mHandler);
            if (!this.zzaAJ.isConnected() || this.zzaCC.size() != 0) {
                return;
            }
            if (this.zzaCA.zzvY()) {
                zzwM();
            } else {
                this.zzaAJ.disconnect();
            }
        }

        zzbai zzwO() {
            if (this.zzaCE == null) {
                return null;
            }
            return this.zzaCE.zzwO();
        }

        public void zzwn() {
            com.google.android.gms.common.internal.zzac.zza(zzaax.this.mHandler);
            if (this.zzaBL) {
                zzwL();
                zzD(zzaax.this.zzazn.isGooglePlayServicesAvailable(zzaax.this.mContext) == 18 ? new Status(8, "Connection timed out while waiting for Google Play services update to complete.") : new Status(8, "API failed to connect while resuming due to an unknown error."));
                this.zzaAJ.disconnect();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zzb implements zzf.InterfaceC0175zzf, zzabr.zza {
        private final Api.zze zzaAJ;
        private final zzzz<?> zzayU;
        private com.google.android.gms.common.internal.zzr zzaBw = null;
        private Set<Scope> zzakq = null;
        private boolean zzaCI = false;

        public zzb(Api.zze zzeVar, zzzz<?> zzzzVar) {
            this.zzaAJ = zzeVar;
            this.zzayU = zzzzVar;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void zzwP() {
            if (!this.zzaCI || this.zzaBw == null) {
                return;
            }
            this.zzaAJ.zza(this.zzaBw, this.zzakq);
        }

        @Override // com.google.android.gms.internal.zzabr.zza
        public void zzb(com.google.android.gms.common.internal.zzr zzrVar, Set<Scope> set) {
            if (zzrVar == null || set == null) {
                Log.wtf("GoogleApiManager", "Received null response from onSignInSuccess", new Exception());
                zzi(new ConnectionResult(4));
                return;
            }
            this.zzaBw = zzrVar;
            this.zzakq = set;
            zzwP();
        }

        @Override // com.google.android.gms.common.internal.zzf.InterfaceC0175zzf
        public void zzg(final ConnectionResult connectionResult) {
            zzaax.this.mHandler.post(new Runnable() { // from class: com.google.android.gms.internal.zzaax.zzb.1
                @Override // java.lang.Runnable
                public void run() {
                    if (!connectionResult.isSuccess()) {
                        ((zza) zzaax.this.zzaAM.get(zzb.this.zzayU)).onConnectionFailed(connectionResult);
                        return;
                    }
                    zzb.this.zzaCI = true;
                    if (zzb.this.zzaAJ.zzrd()) {
                        zzb.this.zzwP();
                    } else {
                        zzb.this.zzaAJ.zza(null, Collections.emptySet());
                    }
                }
            });
        }

        @Override // com.google.android.gms.internal.zzabr.zza
        public void zzi(ConnectionResult connectionResult) {
            ((zza) zzaax.this.zzaAM.get(this.zzayU)).zzi(connectionResult);
        }
    }

    private zzaax(Context context, Looper looper, GoogleApiAvailability googleApiAvailability) {
        this.mContext = context;
        this.mHandler = new Handler(looper, this);
        this.zzazn = googleApiAvailability;
        this.mHandler.sendMessage(this.mHandler.obtainMessage(6));
    }

    private void zza(int i, ConnectionResult connectionResult) {
        zza<?> zzaVar;
        Iterator<zza<?>> it = this.zzaAM.values().iterator();
        while (true) {
            if (!it.hasNext()) {
                zzaVar = null;
                break;
            }
            zzaVar = it.next();
            if (zzaVar.getInstanceId() == i) {
                break;
            }
        }
        if (zzaVar == null) {
            Log.wtf("GoogleApiManager", new StringBuilder(76).append("Could not find API instance ").append(i).append(" while trying to fail enqueued calls.").toString(), new Exception());
            return;
        }
        String valueOf = String.valueOf(this.zzazn.getErrorString(connectionResult.getErrorCode()));
        String valueOf2 = String.valueOf(connectionResult.getErrorMessage());
        zzaVar.zzD(new Status(17, new StringBuilder(String.valueOf(valueOf).length() + 69 + String.valueOf(valueOf2).length()).append("Error resolution was canceled by the user, original error message: ").append(valueOf).append(": ").append(valueOf2).toString()));
    }

    private void zza(zzaab zzaabVar) {
        for (zzzz<?> zzzzVar : zzaabVar.zzvz()) {
            zza<?> zzaVar = this.zzaAM.get(zzzzVar);
            if (zzaVar == null) {
                zzaabVar.zza(zzzzVar, new ConnectionResult(13));
                return;
            } else if (zzaVar.isConnected()) {
                zzaabVar.zza(zzzzVar, ConnectionResult.zzayj);
            } else if (zzaVar.zzwK() != null) {
                zzaabVar.zza(zzzzVar, zzaVar.zzwK());
            } else {
                zzaVar.zzb(zzaabVar);
            }
        }
    }

    private void zza(zzabl zzablVar) {
        zza<?> zzaVar = this.zzaAM.get(zzablVar.zzaDe.getApiKey());
        if (zzaVar == null) {
            zzc(zzablVar.zzaDe);
            zzaVar = this.zzaAM.get(zzablVar.zzaDe.getApiKey());
        }
        if (!zzaVar.zzrd() || this.zzaCt.get() == zzablVar.zzaDd) {
            zzaVar.zza(zzablVar.zzaDc);
            return;
        }
        zzablVar.zzaDc.zzz(zzaCn);
        zzaVar.signOut();
    }

    public static zzaax zzaP(Context context) {
        zzaax zzaaxVar;
        synchronized (zztX) {
            if (zzaCq == null) {
                zzaCq = new zzaax(context.getApplicationContext(), zzwy(), GoogleApiAvailability.getInstance());
            }
            zzaaxVar = zzaCq;
        }
        return zzaaxVar;
    }

    private void zzav(boolean z) {
        this.zzaCp = z ? NotificationOptions.SKIP_STEP_TEN_SECONDS_IN_MS : 300000L;
        this.mHandler.removeMessages(12);
        for (zzzz<?> zzzzVar : this.zzaAM.keySet()) {
            this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(12, zzzzVar), this.zzaCp);
        }
    }

    private void zzc(com.google.android.gms.common.api.zzc<?> zzcVar) {
        zzzz<?> apiKey = zzcVar.getApiKey();
        zza<?> zzaVar = this.zzaAM.get(apiKey);
        if (zzaVar == null) {
            zzaVar = new zza<>(zzcVar);
            this.zzaAM.put(apiKey, zzaVar);
        }
        if (zzaVar.zzrd()) {
            this.zzaCw.add(apiKey);
        }
        zzaVar.connect();
    }

    private void zzwA() {
        com.google.android.gms.common.util.zzt.zzzg();
        if (this.mContext.getApplicationContext() instanceof Application) {
            zzaac.zza((Application) this.mContext.getApplicationContext());
            zzaac.zzvB().zza(new zzaac.zza() { // from class: com.google.android.gms.internal.zzaax.1
                @Override // com.google.android.gms.internal.zzaac.zza
                public void zzat(boolean z) {
                    zzaax.this.mHandler.sendMessage(zzaax.this.mHandler.obtainMessage(1, Boolean.valueOf(z)));
                }
            });
            if (zzaac.zzvB().zzas(true)) {
                return;
            }
            this.zzaCp = 300000L;
        }
    }

    private void zzwB() {
        for (zza<?> zzaVar : this.zzaAM.values()) {
            zzaVar.zzwJ();
            zzaVar.connect();
        }
    }

    private void zzwC() {
        for (zzzz<?> zzzzVar : this.zzaCw) {
            this.zzaAM.remove(zzzzVar).signOut();
        }
        this.zzaCw.clear();
    }

    public static zzaax zzww() {
        zzaax zzaaxVar;
        synchronized (zztX) {
            com.google.android.gms.common.internal.zzac.zzb(zzaCq, "Must guarantee manager is non-null before using getInstance");
            zzaaxVar = zzaCq;
        }
        return zzaaxVar;
    }

    public static void zzwx() {
        synchronized (zztX) {
            if (zzaCq != null) {
                zzaCq.signOut();
            }
        }
    }

    private static Looper zzwy() {
        HandlerThread handlerThread = new HandlerThread("GoogleApiHandler", 9);
        handlerThread.start();
        return handlerThread.getLooper();
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 1:
                zzav(((Boolean) message.obj).booleanValue());
                break;
            case 2:
                zza((zzaab) message.obj);
                break;
            case 3:
                zzwB();
                break;
            case 4:
            case 8:
            case 13:
                zza((zzabl) message.obj);
                break;
            case 5:
                zza(message.arg1, (ConnectionResult) message.obj);
                break;
            case 6:
                zzwA();
                break;
            case 7:
                zzc((com.google.android.gms.common.api.zzc) message.obj);
                break;
            case 9:
                if (this.zzaAM.containsKey(message.obj)) {
                    this.zzaAM.get(message.obj).resume();
                    break;
                }
                break;
            case 10:
                zzwC();
                break;
            case 11:
                if (this.zzaAM.containsKey(message.obj)) {
                    this.zzaAM.get(message.obj).zzwn();
                    break;
                }
                break;
            case 12:
                if (this.zzaAM.containsKey(message.obj)) {
                    this.zzaAM.get(message.obj).zzwN();
                    break;
                }
                break;
            default:
                Log.w("GoogleApiManager", new StringBuilder(31).append("Unknown message id: ").append(message.what).toString());
                return false;
        }
        return true;
    }

    public void signOut() {
        this.zzaCt.incrementAndGet();
        this.mHandler.sendMessageAtFrontOfQueue(this.mHandler.obtainMessage(10));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PendingIntent zza(zzzz<?> zzzzVar, int i) {
        zzbai zzwO;
        if (this.zzaAM.get(zzzzVar) != null && (zzwO = this.zzaAM.get(zzzzVar).zzwO()) != null) {
            return PendingIntent.getActivity(this.mContext, i, zzwO.zzrs(), 134217728);
        }
        return null;
    }

    public <O extends Api.ApiOptions> Task<Void> zza(com.google.android.gms.common.api.zzc<O> zzcVar, zzabh.zzb<?> zzbVar) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.mHandler.sendMessage(this.mHandler.obtainMessage(13, new zzabl(new zzzx.zze(zzbVar, taskCompletionSource), this.zzaCt.get(), zzcVar)));
        return taskCompletionSource.getTask();
    }

    public <O extends Api.ApiOptions> Task<Void> zza(com.google.android.gms.common.api.zzc<O> zzcVar, zzabm<Api.zzb, ?> zzabmVar, zzabz<Api.zzb, ?> zzabzVar) {
        TaskCompletionSource taskCompletionSource = new TaskCompletionSource();
        this.mHandler.sendMessage(this.mHandler.obtainMessage(8, new zzabl(new zzzx.zzc(new zzabn(zzabmVar, zzabzVar), taskCompletionSource), this.zzaCt.get(), zzcVar)));
        return taskCompletionSource.getTask();
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x000f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Task<Void> zza(Iterable<? extends com.google.android.gms.common.api.zzc<?>> iterable) {
        zzaab zzaabVar = new zzaab(iterable);
        for (com.google.android.gms.common.api.zzc<?> zzcVar : iterable) {
            zza<?> zzaVar = this.zzaAM.get(zzcVar.getApiKey());
            if (zzaVar == null || !zzaVar.isConnected()) {
                this.mHandler.sendMessage(this.mHandler.obtainMessage(2, zzaabVar));
                return zzaabVar.getTask();
            }
            while (r2.hasNext()) {
            }
        }
        zzaabVar.zzvA();
        return zzaabVar.getTask();
    }

    public void zza(ConnectionResult connectionResult, int i) {
        if (!zzc(connectionResult, i)) {
            this.mHandler.sendMessage(this.mHandler.obtainMessage(5, i, 0, connectionResult));
        }
    }

    public <O extends Api.ApiOptions> void zza(com.google.android.gms.common.api.zzc<O> zzcVar, int i, zzaad.zza<? extends Result, Api.zzb> zzaVar) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(4, new zzabl(new zzzx.zzb(i, zzaVar), this.zzaCt.get(), zzcVar)));
    }

    public <O extends Api.ApiOptions, TResult> void zza(com.google.android.gms.common.api.zzc<O> zzcVar, int i, zzabv<Api.zzb, TResult> zzabvVar, TaskCompletionSource<TResult> taskCompletionSource, zzabs zzabsVar) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(4, new zzabl(new zzzx.zzd(i, zzabvVar, taskCompletionSource, zzabsVar), this.zzaCt.get(), zzcVar)));
    }

    public void zza(zzaam zzaamVar) {
        synchronized (zztX) {
            if (this.zzaCu != zzaamVar) {
                this.zzaCu = zzaamVar;
                this.zzaCv.clear();
                this.zzaCv.addAll(zzaamVar.zzwb());
            }
        }
    }

    public void zzb(com.google.android.gms.common.api.zzc<?> zzcVar) {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(7, zzcVar));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzb(zzaam zzaamVar) {
        synchronized (zztX) {
            if (this.zzaCu == zzaamVar) {
                this.zzaCu = null;
                this.zzaCv.clear();
            }
        }
    }

    boolean zzc(ConnectionResult connectionResult, int i) {
        return this.zzazn.zza(this.mContext, connectionResult, i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void zzvn() {
        this.zzaCt.incrementAndGet();
        this.mHandler.sendMessage(this.mHandler.obtainMessage(10));
    }

    public void zzvx() {
        this.mHandler.sendMessage(this.mHandler.obtainMessage(3));
    }

    public int zzwz() {
        return this.zzaCs.getAndIncrement();
    }
}
