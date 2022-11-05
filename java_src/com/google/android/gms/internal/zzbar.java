package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
/* loaded from: classes2.dex */
public class zzbar extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbar> CREATOR = new zzbas();
    private final Account zzahh;
    final int zzaiI;
    private final String zzajw;
    private final Scope[] zzbEr;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbar(int i, Account account, Scope[] scopeArr, String str) {
        this.zzaiI = i;
        this.zzahh = account;
        this.zzbEr = scopeArr;
        this.zzajw = str;
    }

    public Account getAccount() {
        return this.zzahh;
    }

    public String getServerClientId() {
        return this.zzajw;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbas.zza(this, parcel, i);
    }

    public Scope[] zzPR() {
        return this.zzbEr;
    }
}
