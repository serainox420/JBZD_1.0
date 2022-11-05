package com.google.android.gms.auth.api.signin.internal;

import android.accounts.Account;
import android.content.Context;
import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.auth.api.Auth;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.auth.api.signin.GoogleSignInOptions;
import com.google.android.gms.auth.api.signin.GoogleSignInResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.OptionalPendingResult;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.PendingResults;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzaax;
import com.google.android.gms.internal.zzabk;
import com.google.android.gms.internal.zzacm;
import java.util.HashSet;
/* loaded from: classes2.dex */
public final class zze {
    private static zzacm zzakx = new zzacm("GoogleSignInCommon", new String[0]);

    /* loaded from: classes2.dex */
    private static abstract class zza<R extends Result> extends zzaad.zza<R, zzd> {
        public zza(GoogleApiClient googleApiClient) {
            super(Auth.GOOGLE_SIGN_IN_API, googleApiClient);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.zzaad.zza, com.google.android.gms.internal.zzaad.zzb
        public /* synthetic */ void setResult(Object obj) {
            super.zzb((zza<R>) ((Result) obj));
        }
    }

    public static GoogleSignInResult getSignInResultFromIntent(Intent intent) {
        if (intent == null || (!intent.hasExtra("googleSignInStatus") && !intent.hasExtra("googleSignInAccount"))) {
            return null;
        }
        GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) intent.getParcelableExtra("googleSignInAccount");
        Status status = (Status) intent.getParcelableExtra("googleSignInStatus");
        if (googleSignInAccount != null) {
            status = Status.zzazx;
        }
        return new GoogleSignInResult(googleSignInAccount, status);
    }

    public static Intent zza(Context context, GoogleSignInOptions googleSignInOptions) {
        zzakx.zzb("GoogleSignInCommon", "getSignInIntent()");
        SignInConfiguration signInConfiguration = new SignInConfiguration(context.getPackageName(), googleSignInOptions);
        Intent intent = new Intent("com.google.android.gms.auth.GOOGLE_SIGN_IN");
        intent.setClass(context, SignInHubActivity.class);
        intent.putExtra("config", signInConfiguration);
        return intent;
    }

    static GoogleSignInResult zza(zzn zznVar, GoogleSignInOptions googleSignInOptions) {
        GoogleSignInAccount zzrB;
        zzakx.zzb("GoogleSignInCommon", "getEligibleSavedSignInResult()");
        zzac.zzw(googleSignInOptions);
        GoogleSignInOptions zzrC = zznVar.zzrC();
        if (zzrC != null && zza(zzrC.getAccount(), googleSignInOptions.getAccount()) && !googleSignInOptions.zzrk()) {
            if ((googleSignInOptions.isIdTokenRequested() && (!zzrC.isIdTokenRequested() || !googleSignInOptions.getServerClientId().equals(zzrC.getServerClientId()))) || !new HashSet(zzrC.zzrj()).containsAll(new HashSet(googleSignInOptions.zzrj())) || (zzrB = zznVar.zzrB()) == null || zzrB.zza()) {
                return null;
            }
            return new GoogleSignInResult(zzrB, Status.zzazx);
        }
        return null;
    }

    public static OptionalPendingResult<GoogleSignInResult> zza(GoogleApiClient googleApiClient, Context context, GoogleSignInOptions googleSignInOptions) {
        zzn zzas = zzn.zzas(context);
        GoogleSignInResult zza2 = zza(zzas, googleSignInOptions);
        if (zza2 != null) {
            zzakx.zzb("GoogleSignInCommon", "Eligible saved sign in result found");
            return PendingResults.zzb(zza2, googleApiClient);
        }
        return zza(googleApiClient, zzas, googleSignInOptions);
    }

    private static OptionalPendingResult<GoogleSignInResult> zza(GoogleApiClient googleApiClient, final zzn zznVar, final GoogleSignInOptions googleSignInOptions) {
        zzakx.zzb("GoogleSignInCommon", "trySilentSignIn()");
        return new zzabk(googleApiClient.zza((GoogleApiClient) new zza<GoogleSignInResult>(googleApiClient) { // from class: com.google.android.gms.auth.api.signin.internal.zze.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzd zzdVar) throws RemoteException {
                ((zzk) zzdVar.zzxD()).zza(new com.google.android.gms.auth.api.signin.internal.zza() { // from class: com.google.android.gms.auth.api.signin.internal.zze.1.1
                    @Override // com.google.android.gms.auth.api.signin.internal.zza, com.google.android.gms.auth.api.signin.internal.zzj
                    public void zza(GoogleSignInAccount googleSignInAccount, Status status) throws RemoteException {
                        if (googleSignInAccount != null) {
                            zznVar.zzb(googleSignInAccount, googleSignInOptions);
                        }
                        zzb((AnonymousClass1) new GoogleSignInResult(googleSignInAccount, status));
                    }
                }, googleSignInOptions);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzn */
            public GoogleSignInResult zzc(Status status) {
                return new GoogleSignInResult(null, status);
            }
        }));
    }

    public static PendingResult<Status> zza(GoogleApiClient googleApiClient, Context context) {
        zzakx.zzb("GoogleSignInCommon", "Signing out");
        zzar(context);
        return googleApiClient.zzb((GoogleApiClient) new zza<Status>(googleApiClient) { // from class: com.google.android.gms.auth.api.signin.internal.zze.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzd zzdVar) throws RemoteException {
                ((zzk) zzdVar.zzxD()).zzb(new com.google.android.gms.auth.api.signin.internal.zza() { // from class: com.google.android.gms.auth.api.signin.internal.zze.2.1
                    @Override // com.google.android.gms.auth.api.signin.internal.zza, com.google.android.gms.auth.api.signin.internal.zzj
                    public void zzl(Status status) throws RemoteException {
                        zzb((AnonymousClass2) status);
                    }
                }, zzdVar.zzrt());
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzb */
            public Status zzc(Status status) {
                return status;
            }
        });
    }

    private static boolean zza(Account account, Account account2) {
        return account == null ? account2 == null : account.equals(account2);
    }

    private static void zzar(Context context) {
        zzn.zzas(context).zzrD();
        for (GoogleApiClient googleApiClient : GoogleApiClient.zzvm()) {
            googleApiClient.zzvn();
        }
        zzaax.zzwx();
    }

    public static PendingResult<Status> zzb(GoogleApiClient googleApiClient, Context context) {
        zzakx.zzb("GoogleSignInCommon", "Revoking access");
        zzar(context);
        return googleApiClient.zzb((GoogleApiClient) new zza<Status>(googleApiClient) { // from class: com.google.android.gms.auth.api.signin.internal.zze.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzd zzdVar) throws RemoteException {
                ((zzk) zzdVar.zzxD()).zzc(new com.google.android.gms.auth.api.signin.internal.zza() { // from class: com.google.android.gms.auth.api.signin.internal.zze.3.1
                    @Override // com.google.android.gms.auth.api.signin.internal.zza, com.google.android.gms.auth.api.signin.internal.zzj
                    public void zzm(Status status) throws RemoteException {
                        zzb((AnonymousClass3) status);
                    }
                }, zzdVar.zzrt());
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
