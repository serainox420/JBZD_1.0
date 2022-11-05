package com.google.android.gms.internal;

import android.content.Context;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.flags.ModuleDescriptor;
import com.google.android.gms.internal.zzaqd;
/* loaded from: classes2.dex */
public class zzaqc {
    private boolean zztZ = false;
    private zzaqd zzaXk = null;

    public void initialize(Context context) {
        synchronized (this) {
            if (this.zztZ) {
                return;
            }
            try {
                this.zzaXk = zzaqd.zza.asInterface(DynamiteModule.zza(context, DynamiteModule.zzaRY, ModuleDescriptor.MODULE_ID).zzdT("com.google.android.gms.flags.impl.FlagProviderImpl"));
                this.zzaXk.init(com.google.android.gms.dynamic.zzd.zzA(context));
                this.zztZ = true;
            } catch (RemoteException | DynamiteModule.zza e) {
                Log.w("FlagValueProvider", "Failed to initialize flags module.", e);
            }
        }
    }

    public <T> T zzb(zzaqa<T> zzaqaVar) {
        synchronized (this) {
            if (!this.zztZ) {
                return zzaqaVar.zzfr();
            }
            return zzaqaVar.zza(this.zzaXk);
        }
    }
}
