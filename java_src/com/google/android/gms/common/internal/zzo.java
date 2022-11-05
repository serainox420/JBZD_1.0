package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.internal.zzn;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Set;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class zzo extends zzn implements Handler.Callback {
    private final Handler mHandler;
    private final HashMap<zzn.zza, zza> zzaGf = new HashMap<>();
    private final com.google.android.gms.common.stats.zza zzaGg = com.google.android.gms.common.stats.zza.zzyJ();
    private final long zzaGh = 5000;
    private final long zzaGi = 300000;
    private final Context zzwi;

    /* loaded from: classes2.dex */
    private final class zza implements ServiceConnection {
        private IBinder zzaFz;
        private ComponentName zzaGe;
        private boolean zzaGk;
        private final zzn.zza zzaGl;
        private final Set<ServiceConnection> zzaGj = new HashSet();
        private int mState = 2;

        public zza(zzn.zza zzaVar) {
            this.zzaGl = zzaVar;
        }

        public IBinder getBinder() {
            return this.zzaFz;
        }

        public ComponentName getComponentName() {
            return this.zzaGe;
        }

        public int getState() {
            return this.mState;
        }

        public boolean isBound() {
            return this.zzaGk;
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            synchronized (zzo.this.zzaGf) {
                zzo.this.mHandler.removeMessages(1, this.zzaGl);
                this.zzaFz = iBinder;
                this.zzaGe = componentName;
                for (ServiceConnection serviceConnection : this.zzaGj) {
                    serviceConnection.onServiceConnected(componentName, iBinder);
                }
                this.mState = 1;
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(ComponentName componentName) {
            synchronized (zzo.this.zzaGf) {
                zzo.this.mHandler.removeMessages(1, this.zzaGl);
                this.zzaFz = null;
                this.zzaGe = componentName;
                for (ServiceConnection serviceConnection : this.zzaGj) {
                    serviceConnection.onServiceDisconnected(componentName);
                }
                this.mState = 2;
            }
        }

        public void zza(ServiceConnection serviceConnection, String str) {
            zzo.this.zzaGg.zza(zzo.this.zzwi, serviceConnection, str, this.zzaGl.zzxZ());
            this.zzaGj.add(serviceConnection);
        }

        public boolean zza(ServiceConnection serviceConnection) {
            return this.zzaGj.contains(serviceConnection);
        }

        public void zzb(ServiceConnection serviceConnection, String str) {
            zzo.this.zzaGg.zzb(zzo.this.zzwi, serviceConnection);
            this.zzaGj.remove(serviceConnection);
        }

        public void zzdn(String str) {
            this.mState = 3;
            this.zzaGk = zzo.this.zzaGg.zza(zzo.this.zzwi, str, this.zzaGl.zzxZ(), this, 129);
            if (this.zzaGk) {
                zzo.this.mHandler.sendMessageDelayed(zzo.this.mHandler.obtainMessage(1, this.zzaGl), zzo.this.zzaGi);
                return;
            }
            this.mState = 2;
            try {
                zzo.this.zzaGg.zza(zzo.this.zzwi, this);
            } catch (IllegalArgumentException e) {
            }
        }

        public void zzdo(String str) {
            zzo.this.mHandler.removeMessages(1, this.zzaGl);
            zzo.this.zzaGg.zza(zzo.this.zzwi, this);
            this.zzaGk = false;
            this.mState = 2;
        }

        public boolean zzya() {
            return this.zzaGj.isEmpty();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzo(Context context) {
        this.zzwi = context.getApplicationContext();
        this.mHandler = new Handler(context.getMainLooper(), this);
    }

    @Override // android.os.Handler.Callback
    public boolean handleMessage(Message message) {
        switch (message.what) {
            case 0:
                synchronized (this.zzaGf) {
                    zzn.zza zzaVar = (zzn.zza) message.obj;
                    zza zzaVar2 = this.zzaGf.get(zzaVar);
                    if (zzaVar2 != null && zzaVar2.zzya()) {
                        if (zzaVar2.isBound()) {
                            zzaVar2.zzdo("GmsClientSupervisor");
                        }
                        this.zzaGf.remove(zzaVar);
                    }
                }
                return true;
            case 1:
                synchronized (this.zzaGf) {
                    zzn.zza zzaVar3 = (zzn.zza) message.obj;
                    zza zzaVar4 = this.zzaGf.get(zzaVar3);
                    if (zzaVar4 != null && zzaVar4.getState() == 3) {
                        String valueOf = String.valueOf(zzaVar3);
                        Log.wtf("GmsClientSupervisor", new StringBuilder(String.valueOf(valueOf).length() + 47).append("Timeout waiting for ServiceConnection callback ").append(valueOf).toString(), new Exception());
                        ComponentName componentName = zzaVar4.getComponentName();
                        if (componentName == null) {
                            componentName = zzaVar3.getComponentName();
                        }
                        zzaVar4.onServiceDisconnected(componentName == null ? new ComponentName(zzaVar3.getPackage(), "unknown") : componentName);
                    }
                }
                return true;
            default:
                return false;
        }
    }

    @Override // com.google.android.gms.common.internal.zzn
    protected boolean zza(zzn.zza zzaVar, ServiceConnection serviceConnection, String str) {
        boolean isBound;
        zzac.zzb(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.zzaGf) {
            zza zzaVar2 = this.zzaGf.get(zzaVar);
            if (zzaVar2 != null) {
                this.mHandler.removeMessages(0, zzaVar);
                if (!zzaVar2.zza(serviceConnection)) {
                    zzaVar2.zza(serviceConnection, str);
                    switch (zzaVar2.getState()) {
                        case 1:
                            serviceConnection.onServiceConnected(zzaVar2.getComponentName(), zzaVar2.getBinder());
                            break;
                        case 2:
                            zzaVar2.zzdn(str);
                            break;
                    }
                } else {
                    String valueOf = String.valueOf(zzaVar);
                    throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 81).append("Trying to bind a GmsServiceConnection that was already connected before.  config=").append(valueOf).toString());
                }
            } else {
                zzaVar2 = new zza(zzaVar);
                zzaVar2.zza(serviceConnection, str);
                zzaVar2.zzdn(str);
                this.zzaGf.put(zzaVar, zzaVar2);
            }
            isBound = zzaVar2.isBound();
        }
        return isBound;
    }

    @Override // com.google.android.gms.common.internal.zzn
    protected void zzb(zzn.zza zzaVar, ServiceConnection serviceConnection, String str) {
        zzac.zzb(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.zzaGf) {
            zza zzaVar2 = this.zzaGf.get(zzaVar);
            if (zzaVar2 == null) {
                String valueOf = String.valueOf(zzaVar);
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf).length() + 50).append("Nonexistent connection status for service config: ").append(valueOf).toString());
            } else if (!zzaVar2.zza(serviceConnection)) {
                String valueOf2 = String.valueOf(zzaVar);
                throw new IllegalStateException(new StringBuilder(String.valueOf(valueOf2).length() + 76).append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=").append(valueOf2).toString());
            } else {
                zzaVar2.zzb(serviceConnection, str);
                if (zzaVar2.zzya()) {
                    this.mHandler.sendMessageDelayed(this.mHandler.obtainMessage(0, zzaVar), this.zzaGh);
                }
            }
        }
    }
}
