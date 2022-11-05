package com.google.android.gms.cast.framework;

import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zzyz;
/* loaded from: classes2.dex */
public class zzd {
    private static final zzyz zzapV = new zzyz("DiscoveryManager");
    private final zzj zzaqu;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzd(zzj zzjVar) {
        this.zzaqu = zzjVar;
    }

    public IObjectWrapper zzsE() {
        try {
            return this.zzaqu.zzsJ();
        } catch (RemoteException e) {
            zzapV.zzb(e, "Unable to call %s on %s.", "getWrappedThis", zzj.class.getSimpleName());
            return null;
        }
    }
}
