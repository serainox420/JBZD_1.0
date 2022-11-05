package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.zznu;
/* loaded from: classes2.dex */
public class zzfo extends zznu.zza {
    private zznw zzAF;

    @Override // com.google.android.gms.internal.zznu
    public void destroy() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.zznu
    public boolean isLoaded() throws RemoteException {
        return false;
    }

    @Override // com.google.android.gms.internal.zznu
    public void pause() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.zznu
    public void resume() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.zznu
    public void setUserId(String str) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.zznu
    public void show() throws RemoteException {
    }

    @Override // com.google.android.gms.internal.zznu
    public void zza(zznw zznwVar) throws RemoteException {
        this.zzAF = zznwVar;
    }

    @Override // com.google.android.gms.internal.zznu
    public void zza(zzoa zzoaVar) throws RemoteException {
        zzqf.e("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
        zzqe.zzYP.post(new Runnable() { // from class: com.google.android.gms.internal.zzfo.1
            @Override // java.lang.Runnable
            public void run() {
                if (zzfo.this.zzAF != null) {
                    try {
                        zzfo.this.zzAF.onRewardedVideoAdFailedToLoad(1);
                    } catch (RemoteException e) {
                        zzqf.zzc("Could not notify onRewardedVideoAdFailedToLoad event.", e);
                    }
                }
            }
        });
    }

    @Override // com.google.android.gms.internal.zznu
    public void zzf(IObjectWrapper iObjectWrapper) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.zznu
    public void zzg(IObjectWrapper iObjectWrapper) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.zznu
    public void zzh(IObjectWrapper iObjectWrapper) throws RemoteException {
    }
}
