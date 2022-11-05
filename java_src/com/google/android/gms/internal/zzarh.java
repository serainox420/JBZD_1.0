package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzarh extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzarh> CREATOR = new zzari();
    private final String zzaJT;
    private final int zzbiM;
    private final Account[] zzbiN;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzarh(int i, String str, Account[] accountArr) {
        this.zzbiM = i;
        this.zzaJT = str;
        this.zzbiN = accountArr;
    }

    public String getAccountName() {
        return this.zzaJT;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzari.zza(this, parcel, i);
    }

    public int zzHI() {
        return this.zzbiM;
    }

    public Account[] zzHJ() {
        return this.zzbiN;
    }
}
