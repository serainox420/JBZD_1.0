package com.google.android.gms.internal;

import android.content.Intent;
import com.google.android.gms.appinvite.AppInviteInvitationResult;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2.dex */
public class zzuo implements AppInviteInvitationResult {
    private final Status zzair;
    private final Intent zzais;

    public zzuo(Status status, Intent intent) {
        this.zzair = status;
        this.zzais = intent;
    }

    @Override // com.google.android.gms.appinvite.AppInviteInvitationResult
    public Intent getInvitationIntent() {
        return this.zzais;
    }

    @Override // com.google.android.gms.appinvite.AppInviteInvitationResult, com.google.android.gms.common.api.Result
    public Status getStatus() {
        return this.zzair;
    }
}
