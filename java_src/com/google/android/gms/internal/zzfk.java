package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.zzeq;
import com.google.android.gms.internal.zzer;
/* loaded from: classes2.dex */
public class zzfk extends zzer.zza {
    private zzep zztk;

    /* loaded from: classes2.dex */
    private class zza extends zzeq.zza {
        private zza() {
        }

        @Override // com.google.android.gms.internal.zzeq
        public String getMediationAdapterClassName() throws RemoteException {
            return null;
        }

        @Override // com.google.android.gms.internal.zzeq
        public boolean isLoading() throws RemoteException {
            return false;
        }

        @Override // com.google.android.gms.internal.zzeq
        public void zzf(zzec zzecVar) throws RemoteException {
            zzqf.e("This app is using a lightweight version of the Google Mobile Ads SDK that requires the latest Google Play services to be installed, but Google Play services is either missing or out of date.");
            zzqe.zzYP.post(new Runnable() { // from class: com.google.android.gms.internal.zzfk.zza.1
                @Override // java.lang.Runnable
                public void run() {
                    if (zzfk.this.zztk != null) {
                        try {
                            zzfk.this.zztk.onAdFailedToLoad(1);
                        } catch (RemoteException e) {
                            zzqf.zzc("Could not notify onAdFailedToLoad event.", e);
                        }
                    }
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.zzer
    public void zza(zzhc zzhcVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.zzer
    public void zza(zzhp zzhpVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.zzer
    public void zza(zzhq zzhqVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.zzer
    public void zza(String str, zzhs zzhsVar, zzhr zzhrVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.zzer
    public void zzb(zzep zzepVar) throws RemoteException {
        this.zztk = zzepVar;
    }

    @Override // com.google.android.gms.internal.zzer
    public void zzb(zzex zzexVar) throws RemoteException {
    }

    @Override // com.google.android.gms.internal.zzer
    public zzeq zzck() throws RemoteException {
        return new zza();
    }
}
