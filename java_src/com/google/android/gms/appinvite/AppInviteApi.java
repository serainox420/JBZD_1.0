package com.google.android.gms.appinvite;

import android.app.Activity;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
/* loaded from: classes.dex */
public interface AppInviteApi {
    PendingResult<Status> convertInvitation(GoogleApiClient googleApiClient, String str);

    PendingResult<AppInviteInvitationResult> getInvitation(GoogleApiClient googleApiClient, Activity activity, boolean z);

    @Deprecated
    PendingResult<Status> updateInvitationOnInstall(GoogleApiClient googleApiClient, String str);
}
