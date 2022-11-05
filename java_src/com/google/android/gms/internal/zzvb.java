package com.google.android.gms.internal;

import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.auth.api.credentials.CredentialRequestResult;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2.dex */
public final class zzvb implements CredentialRequestResult {
    private final Status zzair;
    private final Credential zzajL;

    public zzvb(Status status, Credential credential) {
        this.zzair = status;
        this.zzajL = credential;
    }

    public static zzvb zzi(Status status) {
        return new zzvb(status, null);
    }

    @Override // com.google.android.gms.auth.api.credentials.CredentialRequestResult
    public Credential getCredential() {
        return this.zzajL;
    }

    @Override // com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.zzair;
    }
}
