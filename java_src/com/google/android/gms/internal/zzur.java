package com.google.android.gms.internal;

import android.accounts.Account;
import android.os.RemoteException;
import com.google.android.gms.auth.account.WorkAccount;
import com.google.android.gms.auth.account.WorkAccountApi;
import com.google.android.gms.auth.account.zza;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad;
/* loaded from: classes2.dex */
public class zzur implements WorkAccountApi {
    private static final Status zzaiO = new Status(13);

    /* loaded from: classes2.dex */
    static class zza extends zza.AbstractBinderC0150zza {
        zza() {
        }

        public void zzac(boolean z) {
            throw new UnsupportedOperationException();
        }

        public void zzd(Account account) {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class zzb implements WorkAccountApi.AddAccountResult {
        private final Account zzahh;
        private final Status zzair;

        public zzb(Status status, Account account) {
            this.zzair = status;
            this.zzahh = account;
        }

        @Override // com.google.android.gms.auth.account.WorkAccountApi.AddAccountResult
        public Account getAccount() {
            return this.zzahh;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    /* loaded from: classes2.dex */
    static class zzc implements Result {
        private final Status zzair;

        public zzc(Status status) {
            this.zzair = status;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    @Override // com.google.android.gms.auth.account.WorkAccountApi
    public PendingResult<WorkAccountApi.AddAccountResult> addWorkAccount(GoogleApiClient googleApiClient, final String str) {
        return googleApiClient.zzb((GoogleApiClient) new zzaad.zza<WorkAccountApi.AddAccountResult, zzus>(this, WorkAccount.API, googleApiClient) { // from class: com.google.android.gms.internal.zzur.2
            @Override // com.google.android.gms.internal.zzaad.zza, com.google.android.gms.internal.zzaad.zzb
            public /* synthetic */ void setResult(Object obj) {
                super.zzb((AnonymousClass2) ((WorkAccountApi.AddAccountResult) obj));
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzus zzusVar) throws RemoteException {
                ((com.google.android.gms.auth.account.zzb) zzusVar.zzxD()).zza(new zza() { // from class: com.google.android.gms.internal.zzur.2.1
                    @Override // com.google.android.gms.internal.zzur.zza, com.google.android.gms.auth.account.zza
                    public void zzd(Account account) {
                        zzb((AnonymousClass2) new zzb(account != null ? Status.zzazx : zzur.zzaiO, account));
                    }
                }, str);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzf */
            public WorkAccountApi.AddAccountResult zzc(Status status) {
                return new zzb(status, null);
            }
        });
    }

    @Override // com.google.android.gms.auth.account.WorkAccountApi
    public PendingResult<Result> removeWorkAccount(GoogleApiClient googleApiClient, final Account account) {
        return googleApiClient.zzb((GoogleApiClient) new zzaad.zza<Result, zzus>(this, WorkAccount.API, googleApiClient) { // from class: com.google.android.gms.internal.zzur.3
            @Override // com.google.android.gms.internal.zzaad.zza, com.google.android.gms.internal.zzaad.zzb
            public /* synthetic */ void setResult(Object obj) {
                super.zzb((AnonymousClass3) ((Result) obj));
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzus zzusVar) throws RemoteException {
                ((com.google.android.gms.auth.account.zzb) zzusVar.zzxD()).zza(new zza() { // from class: com.google.android.gms.internal.zzur.3.1
                    @Override // com.google.android.gms.internal.zzur.zza, com.google.android.gms.auth.account.zza
                    public void zzac(boolean z) {
                        zzb((AnonymousClass3) new zzc(z ? Status.zzazx : zzur.zzaiO));
                    }
                }, account);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            public Result zzc(Status status) {
                return new zzc(status);
            }
        });
    }

    @Override // com.google.android.gms.auth.account.WorkAccountApi
    public void setWorkAuthenticatorEnabled(GoogleApiClient googleApiClient, final boolean z) {
        googleApiClient.zzb((GoogleApiClient) new zzaad.zza<Result, zzus>(this, WorkAccount.API, googleApiClient) { // from class: com.google.android.gms.internal.zzur.1
            @Override // com.google.android.gms.internal.zzaad.zza, com.google.android.gms.internal.zzaad.zzb
            public /* synthetic */ void setResult(Object obj) {
                super.zzb((AnonymousClass1) ((Result) obj));
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzus zzusVar) throws RemoteException {
                ((com.google.android.gms.auth.account.zzb) zzusVar.zzxD()).zzad(z);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            public Result zzc(Status status) {
                return null;
            }
        });
    }
}
