package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
/* loaded from: classes2.dex */
public class zzad extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzad> CREATOR = new zzae();
    private final int zzaGC;
    private final GoogleSignInAccount zzaGD;
    private final Account zzahh;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzad(int i, Account account, int i2, GoogleSignInAccount googleSignInAccount) {
        this.zzaiI = i;
        this.zzahh = account;
        this.zzaGC = i2;
        this.zzaGD = googleSignInAccount;
    }

    public zzad(Account account, int i, GoogleSignInAccount googleSignInAccount) {
        this(2, account, i, googleSignInAccount);
    }

    public Account getAccount() {
        return this.zzahh;
    }

    public int getSessionId() {
        return this.zzaGC;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzae.zza(this, parcel, i);
    }

    public GoogleSignInAccount zzyf() {
        return this.zzaGD;
    }
}
