package com.google.android.gms.internal;

import android.annotation.SuppressLint;
import com.google.android.gms.common.api.BooleanResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wallet.FullWalletRequest;
import com.google.android.gms.wallet.IsReadyToPayRequest;
import com.google.android.gms.wallet.MaskedWalletRequest;
import com.google.android.gms.wallet.NotifyTransactionStatusRequest;
import com.google.android.gms.wallet.Payments;
import com.google.android.gms.wallet.Wallet;
@SuppressLint({"MissingRemoteException"})
/* loaded from: classes2.dex */
public class zzbkx implements Payments {
    @Override // com.google.android.gms.wallet.Payments
    public void changeMaskedWallet(GoogleApiClient googleApiClient, final String str, final String str2, final int i) {
        googleApiClient.zza((GoogleApiClient) new Wallet.zzb(this, googleApiClient) { // from class: com.google.android.gms.internal.zzbkx.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.wallet.Wallet.zza, com.google.android.gms.internal.zzaad.zza
            public void zza(zzbky zzbkyVar) {
                zzbkyVar.zzf(str, str2, i);
                zzb((AnonymousClass4) Status.zzazx);
            }
        });
    }

    @Override // com.google.android.gms.wallet.Payments
    public void checkForPreAuthorization(GoogleApiClient googleApiClient, final int i) {
        googleApiClient.zza((GoogleApiClient) new Wallet.zzb(this, googleApiClient) { // from class: com.google.android.gms.internal.zzbkx.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.wallet.Wallet.zza, com.google.android.gms.internal.zzaad.zza
            public void zza(zzbky zzbkyVar) {
                zzbkyVar.zzoY(i);
                zzb((AnonymousClass1) Status.zzazx);
            }
        });
    }

    @Override // com.google.android.gms.wallet.Payments
    public void isNewUser(GoogleApiClient googleApiClient, final int i) {
        googleApiClient.zza((GoogleApiClient) new Wallet.zzb(this, googleApiClient) { // from class: com.google.android.gms.internal.zzbkx.6
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.wallet.Wallet.zza, com.google.android.gms.internal.zzaad.zza
            public void zza(zzbky zzbkyVar) {
                zzbkyVar.zzoZ(i);
                zzb((AnonymousClass6) Status.zzazx);
            }
        });
    }

    @Override // com.google.android.gms.wallet.Payments
    public PendingResult<BooleanResult> isReadyToPay(GoogleApiClient googleApiClient) {
        return googleApiClient.zza((GoogleApiClient) new Wallet.zza<BooleanResult>(this, googleApiClient) { // from class: com.google.android.gms.internal.zzbkx.7
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzM */
            public BooleanResult zzc(Status status) {
                return new BooleanResult(status, false);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.wallet.Wallet.zza, com.google.android.gms.internal.zzaad.zza
            public void zza(zzbky zzbkyVar) {
                zzbkyVar.zza(IsReadyToPayRequest.newBuilder().build(), this);
            }
        });
    }

    @Override // com.google.android.gms.wallet.Payments
    public PendingResult<BooleanResult> isReadyToPay(GoogleApiClient googleApiClient, final IsReadyToPayRequest isReadyToPayRequest) {
        return googleApiClient.zza((GoogleApiClient) new Wallet.zza<BooleanResult>(this, googleApiClient) { // from class: com.google.android.gms.internal.zzbkx.8
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzM */
            public BooleanResult zzc(Status status) {
                return new BooleanResult(status, false);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.wallet.Wallet.zza, com.google.android.gms.internal.zzaad.zza
            public void zza(zzbky zzbkyVar) {
                zzbkyVar.zza(isReadyToPayRequest, this);
            }
        });
    }

    @Override // com.google.android.gms.wallet.Payments
    public void loadFullWallet(GoogleApiClient googleApiClient, final FullWalletRequest fullWalletRequest, final int i) {
        googleApiClient.zza((GoogleApiClient) new Wallet.zzb(this, googleApiClient) { // from class: com.google.android.gms.internal.zzbkx.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.wallet.Wallet.zza, com.google.android.gms.internal.zzaad.zza
            public void zza(zzbky zzbkyVar) {
                zzbkyVar.zza(fullWalletRequest, i);
                zzb((AnonymousClass3) Status.zzazx);
            }
        });
    }

    @Override // com.google.android.gms.wallet.Payments
    public void loadMaskedWallet(GoogleApiClient googleApiClient, final MaskedWalletRequest maskedWalletRequest, final int i) {
        googleApiClient.zza((GoogleApiClient) new Wallet.zzb(this, googleApiClient) { // from class: com.google.android.gms.internal.zzbkx.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.wallet.Wallet.zza, com.google.android.gms.internal.zzaad.zza
            public void zza(zzbky zzbkyVar) {
                zzbkyVar.zza(maskedWalletRequest, i);
                zzb((AnonymousClass2) Status.zzazx);
            }
        });
    }

    @Override // com.google.android.gms.wallet.Payments
    public void notifyTransactionStatus(GoogleApiClient googleApiClient, final NotifyTransactionStatusRequest notifyTransactionStatusRequest) {
        googleApiClient.zza((GoogleApiClient) new Wallet.zzb(this, googleApiClient) { // from class: com.google.android.gms.internal.zzbkx.5
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.wallet.Wallet.zza, com.google.android.gms.internal.zzaad.zza
            public void zza(zzbky zzbkyVar) {
                zzbkyVar.zza(notifyTransactionStatusRequest);
                zzb((AnonymousClass5) Status.zzazx);
            }
        });
    }
}
