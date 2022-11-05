package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.internal.zzta;
import java.util.Collections;
/* loaded from: classes2.dex */
public class zzsf extends zzsa {
    private final zza zzael;
    private zzta zzaem;
    private final zzsr zzaen;
    private zztj zzaeo;

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public class zza implements ServiceConnection {
        private volatile zzta zzaeq;
        private volatile boolean zzaer;

        protected zza() {
        }

        @Override // android.content.ServiceConnection
        public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            com.google.android.gms.common.internal.zzac.zzdj("AnalyticsServiceConnection.onServiceConnected");
            synchronized (this) {
                if (iBinder == null) {
                    zzsf.this.zzbT("Service connected with null binder");
                    notifyAll();
                    return;
                }
                final zzta zztaVar = null;
                try {
                    String interfaceDescriptor = iBinder.getInterfaceDescriptor();
                    if ("com.google.android.gms.analytics.internal.IAnalyticsService".equals(interfaceDescriptor)) {
                        zztaVar = zzta.zza.zzam(iBinder);
                        zzsf.this.zzbP("Bound to IAnalyticsService interface");
                    } else {
                        zzsf.this.zze("Got binder with a wrong descriptor", interfaceDescriptor);
                    }
                } catch (RemoteException e) {
                    zzsf.this.zzbT("Service connect failed to get IAnalyticsService");
                }
                if (zztaVar == null) {
                    try {
                        com.google.android.gms.common.stats.zza.zzyJ().zza(zzsf.this.getContext(), zzsf.this.zzael);
                    } catch (IllegalArgumentException e2) {
                    }
                } else if (!this.zzaer) {
                    zzsf.this.zzbS("onServiceConnected received after the timeout limit");
                    zzsf.this.zznU().zzg(new Runnable() { // from class: com.google.android.gms.internal.zzsf.zza.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (!zzsf.this.isConnected()) {
                                zzsf.this.zzbQ("Connected to service after a timeout");
                                zzsf.this.zza(zztaVar);
                            }
                        }
                    });
                } else {
                    this.zzaeq = zztaVar;
                }
                notifyAll();
            }
        }

        @Override // android.content.ServiceConnection
        public void onServiceDisconnected(final ComponentName componentName) {
            com.google.android.gms.common.internal.zzac.zzdj("AnalyticsServiceConnection.onServiceDisconnected");
            zzsf.this.zznU().zzg(new Runnable() { // from class: com.google.android.gms.internal.zzsf.zza.2
                @Override // java.lang.Runnable
                public void run() {
                    zzsf.this.onServiceDisconnected(componentName);
                }
            });
        }

        public zzta zzoq() {
            zzta zztaVar = null;
            zzsf.this.zzmR();
            Intent intent = new Intent("com.google.android.gms.analytics.service.START");
            intent.setComponent(new ComponentName("com.google.android.gms", "com.google.android.gms.analytics.service.AnalyticsService"));
            Context context = zzsf.this.getContext();
            intent.putExtra("app_package_name", context.getPackageName());
            com.google.android.gms.common.stats.zza zzyJ = com.google.android.gms.common.stats.zza.zzyJ();
            synchronized (this) {
                this.zzaeq = null;
                this.zzaer = true;
                boolean zza = zzyJ.zza(context, intent, zzsf.this.zzael, 129);
                zzsf.this.zza("Bind to service requested", Boolean.valueOf(zza));
                if (!zza) {
                    this.zzaer = false;
                } else {
                    try {
                        wait(zzsf.this.zznT().zzpr());
                    } catch (InterruptedException e) {
                        zzsf.this.zzbS("Wait for service connect was interrupted");
                    }
                    this.zzaer = false;
                    zztaVar = this.zzaeq;
                    this.zzaeq = null;
                    if (zztaVar == null) {
                        zzsf.this.zzbT("Successfully bound to service but never got onServiceConnected callback");
                    }
                }
            }
            return zztaVar;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public zzsf(zzsc zzscVar) {
        super(zzscVar);
        this.zzaeo = new zztj(zzscVar.zznR());
        this.zzael = new zza();
        this.zzaen = new zzsr(zzscVar) { // from class: com.google.android.gms.internal.zzsf.1
            @Override // com.google.android.gms.internal.zzsr
            public void run() {
                zzsf.this.zzop();
            }
        };
    }

    private void onDisconnect() {
        zzmA().zznN();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onServiceDisconnected(ComponentName componentName) {
        zzmR();
        if (this.zzaem != null) {
            this.zzaem = null;
            zza("Disconnected from device AnalyticsService", componentName);
            onDisconnect();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zza(zzta zztaVar) {
        zzmR();
        this.zzaem = zztaVar;
        zzoo();
        zzmA().onServiceConnected();
    }

    private void zzoo() {
        this.zzaeo.start();
        this.zzaen.zzy(zznT().zzpq());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void zzop() {
        zzmR();
        if (!isConnected()) {
            return;
        }
        zzbP("Inactivity, disconnecting from device AnalyticsService");
        disconnect();
    }

    public boolean connect() {
        zzmR();
        zzob();
        if (this.zzaem != null) {
            return true;
        }
        zzta zzoq = this.zzael.zzoq();
        if (zzoq == null) {
            return false;
        }
        this.zzaem = zzoq;
        zzoo();
        return true;
    }

    public void disconnect() {
        zzmR();
        zzob();
        try {
            com.google.android.gms.common.stats.zza.zzyJ().zza(getContext(), this.zzael);
        } catch (IllegalArgumentException e) {
        } catch (IllegalStateException e2) {
        }
        if (this.zzaem != null) {
            this.zzaem = null;
            onDisconnect();
        }
    }

    public boolean isConnected() {
        zzmR();
        zzob();
        return this.zzaem != null;
    }

    public boolean zzb(zzsz zzszVar) {
        com.google.android.gms.common.internal.zzac.zzw(zzszVar);
        zzmR();
        zzob();
        zzta zztaVar = this.zzaem;
        if (zztaVar == null) {
            return false;
        }
        try {
            zztaVar.zza(zzszVar.zzfE(), zzszVar.zzpQ(), zzszVar.zzpS() ? zznT().zzpj() : zznT().zzpk(), Collections.emptyList());
            zzoo();
            return true;
        } catch (RemoteException e) {
            zzbP("Failed to send hits to AnalyticsService");
            return false;
        }
    }

    @Override // com.google.android.gms.internal.zzsa
    protected void zzmS() {
    }

    public boolean zzon() {
        zzmR();
        zzob();
        zzta zztaVar = this.zzaem;
        if (zztaVar == null) {
            return false;
        }
        try {
            zztaVar.zznK();
            zzoo();
            return true;
        } catch (RemoteException e) {
            zzbP("Failed to clear hits from AnalyticsService");
            return false;
        }
    }
}
