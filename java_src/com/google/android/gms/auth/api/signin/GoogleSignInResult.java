package com.google.android.gms.auth.api.signin;

import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2.dex */
public class GoogleSignInResult implements Result {
    private Status zzair;
    private GoogleSignInAccount zzaks;

    public GoogleSignInResult(GoogleSignInAccount googleSignInAccount, Status status) {
        this.zzaks = googleSignInAccount;
        this.zzair = status;
    }

    public GoogleSignInAccount getSignInAccount() {
        return this.zzaks;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.zzair;
    }

    public boolean isSuccess() {
        return this.zzair.isSuccess();
    }
}
