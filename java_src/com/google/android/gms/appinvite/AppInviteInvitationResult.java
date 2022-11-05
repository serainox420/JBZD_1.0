package com.google.android.gms.appinvite;

import android.content.Intent;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2.dex */
public interface AppInviteInvitationResult extends Result {
    Intent getInvitationIntent();

    @Override // com.google.android.gms.common.api.Result
    Status getStatus();
}
