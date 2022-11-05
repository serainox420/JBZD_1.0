package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.auth.api.credentials.CredentialRequest;
import com.google.android.gms.auth.api.credentials.CredentialRequestResult;
import com.google.android.gms.auth.api.credentials.CredentialsApi;
import com.google.android.gms.auth.api.credentials.HintRequest;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad;
/* loaded from: classes2.dex */
public final class zzvc implements CredentialsApi {

    /* loaded from: classes2.dex */
    private static class zza extends zzuy {
        private zzaad.zzb<Status> zzajP;

        zza(zzaad.zzb<Status> zzbVar) {
            this.zzajP = zzbVar;
        }

        @Override // com.google.android.gms.internal.zzuy, com.google.android.gms.internal.zzvk
        public void zzh(Status status) {
            this.zzajP.setResult(status);
        }
    }

    private Auth.AuthCredentialsOptions zza(GoogleApiClient googleApiClient) {
        return ((zzvf) googleApiClient.zza(Auth.zzaiS)).zzrc();
    }

    @Override // com.google.android.gms.auth.api.credentials.CredentialsApi
    public PendingResult<Status> delete(GoogleApiClient googleApiClient, final Credential credential) {
        return googleApiClient.zzb((GoogleApiClient) new zzvd<Status>(this, googleApiClient) { // from class: com.google.android.gms.internal.zzvc.3
            @Override // com.google.android.gms.internal.zzvd
            protected void zza(Context context, zzvl zzvlVar) throws RemoteException {
                zzvlVar.zza(new zza(this), new zzvg(credential));
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzb */
            public Status zzc(Status status) {
                return status;
            }
        });
    }

    @Override // com.google.android.gms.auth.api.credentials.CredentialsApi
    public PendingResult<Status> disableAutoSignIn(GoogleApiClient googleApiClient) {
        return googleApiClient.zzb((GoogleApiClient) new zzvd<Status>(this, googleApiClient) { // from class: com.google.android.gms.internal.zzvc.4
            @Override // com.google.android.gms.internal.zzvd
            protected void zza(Context context, zzvl zzvlVar) throws RemoteException {
                zzvlVar.zza(new zza(this));
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzb */
            public Status zzc(Status status) {
                return status;
            }
        });
    }

    @Override // com.google.android.gms.auth.api.credentials.CredentialsApi
    public PendingIntent getHintPickerIntent(GoogleApiClient googleApiClient, HintRequest hintRequest) {
        com.google.android.gms.common.internal.zzac.zzb(googleApiClient.zza(Auth.CREDENTIALS_API), "Auth.CREDENTIALS_API must be added to GoogleApiClient to use this API");
        return zzve.zza(googleApiClient.getContext(), zza(googleApiClient), hintRequest);
    }

    @Override // com.google.android.gms.auth.api.credentials.CredentialsApi
    public PendingResult<CredentialRequestResult> request(GoogleApiClient googleApiClient, final CredentialRequest credentialRequest) {
        return googleApiClient.zza((GoogleApiClient) new zzvd<CredentialRequestResult>(this, googleApiClient) { // from class: com.google.android.gms.internal.zzvc.1
            @Override // com.google.android.gms.internal.zzvd
            protected void zza(Context context, zzvl zzvlVar) throws RemoteException {
                zzvlVar.zza(new zzuy() { // from class: com.google.android.gms.internal.zzvc.1.1
                    @Override // com.google.android.gms.internal.zzuy, com.google.android.gms.internal.zzvk
                    public void zza(Status status, Credential credential) {
                        zzb((AnonymousClass1) new zzvb(status, credential));
                    }

                    @Override // com.google.android.gms.internal.zzuy, com.google.android.gms.internal.zzvk
                    public void zzh(Status status) {
                        zzb((AnonymousClass1) zzvb.zzi(status));
                    }
                }, credentialRequest);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzj */
            public CredentialRequestResult zzc(Status status) {
                return zzvb.zzi(status);
            }
        });
    }

    @Override // com.google.android.gms.auth.api.credentials.CredentialsApi
    public PendingResult<Status> save(GoogleApiClient googleApiClient, final Credential credential) {
        return googleApiClient.zzb((GoogleApiClient) new zzvd<Status>(this, googleApiClient) { // from class: com.google.android.gms.internal.zzvc.2
            @Override // com.google.android.gms.internal.zzvd
            protected void zza(Context context, zzvl zzvlVar) throws RemoteException {
                zzvlVar.zza(new zza(this), new zzvm(credential));
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzb */
            public Status zzc(Status status) {
                return status;
            }
        });
    }
}
