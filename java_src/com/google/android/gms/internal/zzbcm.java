package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.internal.zzbbs;
import com.google.android.gms.tagmanager.TagManagerService;
/* loaded from: classes2.dex */
public class zzbcm implements ServiceConnection {
    private final Context mContext;
    private final com.google.android.gms.common.stats.zza zzaGg;
    private volatile boolean zzbLj;
    private volatile boolean zzbLk;
    private zzbbs zzbLl;

    public zzbcm(Context context) {
        this(context, com.google.android.gms.common.stats.zza.zzyJ());
    }

    zzbcm(Context context, com.google.android.gms.common.stats.zza zzaVar) {
        this.zzbLj = false;
        this.zzbLk = false;
        this.mContext = context;
        this.zzaGg = zzaVar;
    }

    private void zza(zzbbr zzbbrVar, String str) {
        if (zzbbrVar != null) {
            try {
                zzbbrVar.zza(false, str);
            } catch (RemoteException e) {
                zzbbu.zzb("Error - local callback should not throw RemoteException", e);
            }
        }
    }

    public void dispatch() {
        if (zzSy()) {
            try {
                this.zzbLl.dispatch();
            } catch (RemoteException e) {
                zzbbu.zzc("Error calling service to dispatch pending events", e);
            }
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        synchronized (this) {
            this.zzbLl = zzbbs.zza.zzfm(iBinder);
            this.zzbLj = true;
            this.zzbLk = false;
            notifyAll();
        }
    }

    @Override // android.content.ServiceConnection
    public void onServiceDisconnected(ComponentName componentName) {
        synchronized (this) {
            this.zzbLl = null;
            this.zzbLj = false;
            this.zzbLk = false;
        }
    }

    public boolean zzSy() {
        if (this.zzbLj) {
            return true;
        }
        synchronized (this) {
            if (this.zzbLj) {
                return true;
            }
            if (!this.zzbLk) {
                if (!this.zzaGg.zza(this.mContext, new Intent(this.mContext, TagManagerService.class), this, 1)) {
                    return false;
                }
                this.zzbLk = true;
            }
            while (this.zzbLk) {
                try {
                    wait();
                    this.zzbLk = false;
                } catch (InterruptedException e) {
                    zzbbu.zzc("Error connecting to TagManagerService", e);
                    this.zzbLk = false;
                }
            }
            return this.zzbLj;
        }
    }

    public boolean zzSz() {
        if (zzSy()) {
            try {
                this.zzbLl.zzSb();
                return true;
            } catch (RemoteException e) {
                zzbbu.zzc("Error in resetting service", e);
            }
        }
        return false;
    }

    public void zza(String str, Bundle bundle, String str2, long j, boolean z) {
        if (zzSy()) {
            try {
                this.zzbLl.zza(str, bundle, str2, j, z);
            } catch (RemoteException e) {
                zzbbu.zzc("Error calling service to emit event", e);
            }
        }
    }

    public void zzb(String str, String str2, String str3, zzbbr zzbbrVar) {
        if (!zzSy()) {
            zza(zzbbrVar, str);
            return;
        }
        try {
            this.zzbLl.zza(str, str2, str3, zzbbrVar);
        } catch (RemoteException e) {
            zzbbu.zzc("Error calling service to load container", e);
            zza(zzbbrVar, str);
        }
    }
}
