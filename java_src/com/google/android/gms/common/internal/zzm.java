package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2.dex */
public final class zzm implements Handler.Callback {
    private final Handler mHandler;
    private final zza zzaFU;
    private final ArrayList<GoogleApiClient.ConnectionCallbacks> zzaFV = new ArrayList<>();
    final ArrayList<GoogleApiClient.ConnectionCallbacks> zzaFW = new ArrayList<>();
    private final ArrayList<GoogleApiClient.OnConnectionFailedListener> zzaFX = new ArrayList<>();
    private volatile boolean zzaFY = false;
    private final AtomicInteger zzaFZ = new AtomicInteger(0);
    private boolean zzaGa = false;
    private final Object zzrJ = new Object();

    /* loaded from: classes.dex */
    public interface zza {
        boolean isConnected();

        Bundle zzuC();
    }

    public zzm(Looper looper, zza zzaVar) {
        this.zzaFU = zzaVar;
        this.mHandler = new Handler(looper, this);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        if (message.what != 1) {
            Log.wtf("GmsClientEvents", new StringBuilder(45).append("Don't know how to handle message: ").append(message.what).toString(), new Exception());
            return false;
        }
        GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) message.obj;
        synchronized (this.zzrJ) {
            if (this.zzaFY && this.zzaFU.isConnected() && this.zzaFV.contains(connectionCallbacks)) {
                connectionCallbacks.onConnected(this.zzaFU.zzuC());
            }
        }
        return true;
    }

    public boolean isConnectionCallbacksRegistered(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        boolean contains;
        zzac.zzw(connectionCallbacks);
        synchronized (this.zzrJ) {
            contains = this.zzaFV.contains(connectionCallbacks);
        }
        return contains;
    }

    public boolean isConnectionFailedListenerRegistered(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        boolean contains;
        zzac.zzw(onConnectionFailedListener);
        synchronized (this.zzrJ) {
            contains = this.zzaFX.contains(onConnectionFailedListener);
        }
        return contains;
    }

    public void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        zzac.zzw(connectionCallbacks);
        synchronized (this.zzrJ) {
            if (this.zzaFV.contains(connectionCallbacks)) {
                String valueOf = String.valueOf(connectionCallbacks);
                Log.w("GmsClientEvents", new StringBuilder(String.valueOf(valueOf).length() + 62).append("registerConnectionCallbacks(): listener ").append(valueOf).append(" is already registered").toString());
            } else {
                this.zzaFV.add(connectionCallbacks);
            }
        }
        if (this.zzaFU.isConnected()) {
            this.mHandler.sendMessage(this.mHandler.obtainMessage(1, connectionCallbacks));
        }
    }

    public void registerConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        zzac.zzw(onConnectionFailedListener);
        synchronized (this.zzrJ) {
            if (this.zzaFX.contains(onConnectionFailedListener)) {
                String valueOf = String.valueOf(onConnectionFailedListener);
                Log.w("GmsClientEvents", new StringBuilder(String.valueOf(valueOf).length() + 67).append("registerConnectionFailedListener(): listener ").append(valueOf).append(" is already registered").toString());
            } else {
                this.zzaFX.add(onConnectionFailedListener);
            }
        }
    }

    public void unregisterConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectionCallbacks) {
        zzac.zzw(connectionCallbacks);
        synchronized (this.zzrJ) {
            if (!this.zzaFV.remove(connectionCallbacks)) {
                String valueOf = String.valueOf(connectionCallbacks);
                Log.w("GmsClientEvents", new StringBuilder(String.valueOf(valueOf).length() + 52).append("unregisterConnectionCallbacks(): listener ").append(valueOf).append(" not found").toString());
            } else if (this.zzaGa) {
                this.zzaFW.add(connectionCallbacks);
            }
        }
    }

    public void unregisterConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener) {
        zzac.zzw(onConnectionFailedListener);
        synchronized (this.zzrJ) {
            if (!this.zzaFX.remove(onConnectionFailedListener)) {
                String valueOf = String.valueOf(onConnectionFailedListener);
                Log.w("GmsClientEvents", new StringBuilder(String.valueOf(valueOf).length() + 57).append("unregisterConnectionFailedListener(): listener ").append(valueOf).append(" not found").toString());
            }
        }
    }

    public void zzcV(int i) {
        boolean z = false;
        if (Looper.myLooper() == this.mHandler.getLooper()) {
            z = true;
        }
        zzac.zza(z, "onUnintentionalDisconnection must only be called on the Handler thread");
        this.mHandler.removeMessages(1);
        synchronized (this.zzrJ) {
            this.zzaGa = true;
            ArrayList arrayList = new ArrayList(this.zzaFV);
            int i2 = this.zzaFZ.get();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) it.next();
                if (!this.zzaFY || this.zzaFZ.get() != i2) {
                    break;
                } else if (this.zzaFV.contains(connectionCallbacks)) {
                    connectionCallbacks.onConnectionSuspended(i);
                }
            }
            this.zzaFW.clear();
            this.zzaGa = false;
        }
    }

    public void zzn(ConnectionResult connectionResult) {
        zzac.zza(Looper.myLooper() == this.mHandler.getLooper(), "onConnectionFailure must only be called on the Handler thread");
        this.mHandler.removeMessages(1);
        synchronized (this.zzrJ) {
            ArrayList arrayList = new ArrayList(this.zzaFX);
            int i = this.zzaFZ.get();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener = (GoogleApiClient.OnConnectionFailedListener) it.next();
                if (!this.zzaFY || this.zzaFZ.get() != i) {
                    return;
                }
                if (this.zzaFX.contains(onConnectionFailedListener)) {
                    onConnectionFailedListener.onConnectionFailed(connectionResult);
                }
            }
        }
    }

    public void zzq(Bundle bundle) {
        boolean z = true;
        zzac.zza(Looper.myLooper() == this.mHandler.getLooper(), "onConnectionSuccess must only be called on the Handler thread");
        synchronized (this.zzrJ) {
            zzac.zzaw(!this.zzaGa);
            this.mHandler.removeMessages(1);
            this.zzaGa = true;
            if (this.zzaFW.size() != 0) {
                z = false;
            }
            zzac.zzaw(z);
            ArrayList arrayList = new ArrayList(this.zzaFV);
            int i = this.zzaFZ.get();
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                GoogleApiClient.ConnectionCallbacks connectionCallbacks = (GoogleApiClient.ConnectionCallbacks) it.next();
                if (!this.zzaFY || !this.zzaFU.isConnected() || this.zzaFZ.get() != i) {
                    break;
                } else if (!this.zzaFW.contains(connectionCallbacks)) {
                    connectionCallbacks.onConnected(bundle);
                }
            }
            this.zzaFW.clear();
            this.zzaGa = false;
        }
    }

    public void zzxX() {
        this.zzaFY = false;
        this.zzaFZ.incrementAndGet();
    }

    public void zzxY() {
        this.zzaFY = true;
    }
}
