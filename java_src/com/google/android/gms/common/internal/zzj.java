package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzr;
import java.util.Collection;
/* loaded from: classes2.dex */
public class zzj extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzj> CREATOR = new zzk();
    final int version;
    final int zzaFK;
    int zzaFL;
    String zzaFM;
    IBinder zzaFN;
    Scope[] zzaFO;
    Bundle zzaFP;
    Account zzaFQ;
    com.google.android.gms.common.zzc[] zzaFR;

    public zzj(int i) {
        this.version = 3;
        this.zzaFL = com.google.android.gms.common.zze.GOOGLE_PLAY_SERVICES_VERSION_CODE;
        this.zzaFK = i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzj(int i, int i2, int i3, String str, IBinder iBinder, Scope[] scopeArr, Bundle bundle, Account account, com.google.android.gms.common.zzc[] zzcVarArr) {
        this.version = i;
        this.zzaFK = i2;
        this.zzaFL = i3;
        if ("com.google.android.gms".equals(str)) {
            this.zzaFM = "com.google.android.gms";
        } else {
            this.zzaFM = str;
        }
        if (i < 2) {
            this.zzaFQ = zzbq(iBinder);
        } else {
            this.zzaFN = iBinder;
            this.zzaFQ = account;
        }
        this.zzaFO = scopeArr;
        this.zzaFP = bundle;
        this.zzaFR = zzcVarArr;
    }

    private Account zzbq(IBinder iBinder) {
        if (iBinder != null) {
            return zza.zza(zzr.zza.zzbr(iBinder));
        }
        return null;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzk.zza(this, parcel, i);
    }

    public zzj zza(com.google.android.gms.common.zzc[] zzcVarArr) {
        this.zzaFR = zzcVarArr;
        return this;
    }

    public zzj zzb(zzr zzrVar) {
        if (zzrVar != null) {
            this.zzaFN = zzrVar.asBinder();
        }
        return this;
    }

    public zzj zzdm(String str) {
        this.zzaFM = str;
        return this;
    }

    public zzj zzf(Account account) {
        this.zzaFQ = account;
        return this;
    }

    public zzj zzf(Collection<Scope> collection) {
        this.zzaFO = (Scope[]) collection.toArray(new Scope[collection.size()]);
        return this;
    }

    public zzj zzp(Bundle bundle) {
        this.zzaFP = bundle;
        return this;
    }
}
