package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Binder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.zzr;
/* loaded from: classes2.dex */
public class zza extends zzr.zza {
    int zzaEV;

    public static Account zza(zzr zzrVar) {
        Account account = null;
        if (zzrVar != null) {
            long clearCallingIdentity = Binder.clearCallingIdentity();
            try {
                account = zzrVar.getAccount();
            } catch (RemoteException e) {
                Log.w("AccountAccessor", "Remote account accessor probably died");
            } finally {
                Binder.restoreCallingIdentity(clearCallingIdentity);
            }
        }
        return account;
    }

    public boolean equals(Object obj) {
        Account account = null;
        if (this == obj) {
            return true;
        }
        if (obj instanceof zza) {
            return account.equals(null);
        }
        return false;
    }

    @Override // com.google.android.gms.common.internal.zzr
    public Account getAccount() {
        int callingUid = Binder.getCallingUid();
        if (callingUid != this.zzaEV) {
            if (!com.google.android.gms.common.zzg.zzf(null, callingUid)) {
                throw new SecurityException("Caller is not GooglePlayServices");
            }
            this.zzaEV = callingUid;
        }
        return null;
    }
}
