package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.dynamite.DynamiteModule;
/* loaded from: classes2.dex */
public abstract class zzbjz<T> {
    private final Context mContext;
    private final String mTag;
    private T zzbPk;
    private final Object zzrJ = new Object();
    private boolean zzbPj = false;

    public zzbjz(Context context, String str) {
        this.mContext = context;
        this.mTag = str;
    }

    public boolean isOperational() {
        return zzTS() != null;
    }

    protected abstract void zzTP() throws RemoteException;

    public void zzTR() {
        synchronized (this.zzrJ) {
            if (this.zzbPk == null) {
                return;
            }
            try {
                zzTP();
            } catch (RemoteException e) {
                Log.e(this.mTag, "Could not finalize native handle", e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public T zzTS() {
        T t;
        synchronized (this.zzrJ) {
            if (this.zzbPk != null) {
                t = this.zzbPk;
            } else {
                try {
                    this.zzbPk = zzb(DynamiteModule.zza(this.mContext, DynamiteModule.zzaRX, "com.google.android.gms.vision.dynamite"), this.mContext);
                } catch (RemoteException | DynamiteModule.zza e) {
                    Log.e(this.mTag, "Error creating remote native handle", e);
                }
                if (!this.zzbPj && this.zzbPk == null) {
                    Log.w(this.mTag, "Native handle not yet available. Reverting to no-op handle.");
                    this.zzbPj = true;
                } else if (this.zzbPj && this.zzbPk != null) {
                    Log.w(this.mTag, "Native handle is now available.");
                }
                t = this.zzbPk;
            }
        }
        return t;
    }

    protected abstract T zzb(DynamiteModule dynamiteModule, Context context) throws RemoteException, DynamiteModule.zza;
}
