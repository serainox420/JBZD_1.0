package com.google.android.gms.auth.api.signin.internal;

import android.content.Intent;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.signin.GoogleSignInApi;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.GoogleSignInResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.OptionalPendingResult;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
/* loaded from: classes2.dex */
public class zzc implements GoogleSignInApi {
    private GoogleSignInOptions zzb(GoogleApiClient googleApiClient) {
        return ((zzd) googleApiClient.zza(Auth.zzaiU)).zzrt();
    }

    @Override // com.google.android.gms.auth.api.signin.GoogleSignInApi
    public Intent getSignInIntent(GoogleApiClient googleApiClient) {
        return zze.zza(googleApiClient.getContext(), zzb(googleApiClient));
    }

    @Override // com.google.android.gms.auth.api.signin.GoogleSignInApi
    public GoogleSignInResult getSignInResultFromIntent(Intent intent) {
        return zze.getSignInResultFromIntent(intent);
    }

    @Override // com.google.android.gms.auth.api.signin.GoogleSignInApi
    public PendingResult<Status> revokeAccess(GoogleApiClient googleApiClient) {
        return zze.zzb(googleApiClient, googleApiClient.getContext());
    }

    @Override // com.google.android.gms.auth.api.signin.GoogleSignInApi
    public PendingResult<Status> signOut(GoogleApiClient googleApiClient) {
        return zze.zza(googleApiClient, googleApiClient.getContext());
    }

    @Override // com.google.android.gms.auth.api.signin.GoogleSignInApi
    public OptionalPendingResult<GoogleSignInResult> silentSignIn(GoogleApiClient googleApiClient) {
        return zze.zza(googleApiClient, googleApiClient.getContext(), zzb(googleApiClient));
    }
}
