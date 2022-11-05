package com.google.android.gms.internal;

import android.annotation.SuppressLint;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.plus.Account;
import com.google.android.gms.plus.Plus;
/* loaded from: classes2.dex */
public final class zzazb implements Account {

    /* loaded from: classes2.dex */
    private static abstract class zza extends Plus.zza<Status> {
        private zza(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzb */
        public Status zzc(Status status) {
            return status;
        }
    }

    @Override // com.google.android.gms.plus.Account
    public void clearDefaultAccount(GoogleApiClient googleApiClient) {
        com.google.android.gms.plus.internal.zze zzd = Plus.zzd(googleApiClient, false);
        if (zzd != null) {
            zzd.zzOW();
        }
    }

    @Override // com.google.android.gms.plus.Account
    public String getAccountName(GoogleApiClient googleApiClient) {
        return Plus.zzd(googleApiClient, true).getAccountName();
    }

    @Override // com.google.android.gms.plus.Account
    @SuppressLint({"MissingRemoteException"})
    public PendingResult<Status> revokeAccessAndDisconnect(GoogleApiClient googleApiClient) {
        return googleApiClient.zzb((GoogleApiClient) new zza(this, googleApiClient) { // from class: com.google.android.gms.internal.zzazb.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(com.google.android.gms.plus.internal.zze zzeVar) {
                zzeVar.zzv(this);
            }
        });
    }
}
