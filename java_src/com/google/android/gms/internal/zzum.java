package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.RemoteException;
import com.google.android.gms.appinvite.AppInvite;
import com.google.android.gms.appinvite.AppInviteApi;
import com.google.android.gms.appinvite.AppInviteInvitationResult;
import com.google.android.gms.appinvite.AppInviteReferral;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzup;
/* loaded from: classes2.dex */
public class zzum implements AppInviteApi {

    /* loaded from: classes2.dex */
    static class zza extends zzup.zza {
        zza() {
        }

        @Override // com.google.android.gms.internal.zzup
        public void zza(Status status, Intent intent) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.gms.internal.zzup
        public void zzd(Status status) throws RemoteException {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes2.dex */
    static abstract class zzb<R extends Result> extends zzaad.zza<R, zzun> {
        public zzb(GoogleApiClient googleApiClient) {
            super(AppInvite.API, googleApiClient);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.internal.zzaad.zza, com.google.android.gms.internal.zzaad.zzb
        public /* synthetic */ void setResult(Object obj) {
            super.zzb((zzb<R>) ((Result) obj));
        }
    }

    /* loaded from: classes2.dex */
    final class zzc extends zzb<Status> {
        private final String zzaij;

        public zzc(zzum zzumVar, GoogleApiClient googleApiClient, String str) {
            super(googleApiClient);
            this.zzaij = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(zzun zzunVar) throws RemoteException {
            zzunVar.zzb(new zza() { // from class: com.google.android.gms.internal.zzum.zzc.1
                @Override // com.google.android.gms.internal.zzum.zza, com.google.android.gms.internal.zzup
                public void zzd(Status status) throws RemoteException {
                    zzc.this.zzb((zzc) status);
                }
            }, this.zzaij);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzb */
        public Status zzc(Status status) {
            return status;
        }
    }

    /* loaded from: classes2.dex */
    final class zzd extends zzb<Status> {
        private final String zzaij;

        public zzd(zzum zzumVar, GoogleApiClient googleApiClient, String str) {
            super(googleApiClient);
            this.zzaij = str;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(zzun zzunVar) throws RemoteException {
            zzunVar.zza(new zza() { // from class: com.google.android.gms.internal.zzum.zzd.1
                @Override // com.google.android.gms.internal.zzum.zza, com.google.android.gms.internal.zzup
                public void zzd(Status status) throws RemoteException {
                    zzd.this.zzb((zzd) status);
                }
            }, this.zzaij);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzb */
        public Status zzc(Status status) {
            return status;
        }
    }

    /* loaded from: classes2.dex */
    final class zze extends zzb<AppInviteInvitationResult> {
        private final Activity zzaim;
        private final boolean zzain;
        private final Intent zzaio;

        public zze(zzum zzumVar, GoogleApiClient googleApiClient, Activity activity, boolean z) {
            super(googleApiClient);
            this.zzaim = activity;
            this.zzain = z;
            this.zzaio = this.zzaim != null ? this.zzaim.getIntent() : null;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(zzun zzunVar) throws RemoteException {
            if (!AppInviteReferral.hasReferral(this.zzaio)) {
                zzunVar.zza((zzup) new zza() { // from class: com.google.android.gms.internal.zzum.zze.1
                    @Override // com.google.android.gms.internal.zzum.zza, com.google.android.gms.internal.zzup
                    public void zza(Status status, Intent intent) {
                        zze.this.zzb((zze) new zzuo(status, intent));
                        if (!AppInviteReferral.hasReferral(intent) || !zze.this.zzain || zze.this.zzaim == null) {
                            return;
                        }
                        zze.this.zzaim.startActivity(intent);
                    }
                });
                return;
            }
            zzb((zze) new zzuo(Status.zzazx, this.zzaio));
            zzunVar.zza((zzup) null);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zze */
        public AppInviteInvitationResult zzc(Status status) {
            return new zzuo(status, new Intent());
        }
    }

    @Override // com.google.android.gms.appinvite.AppInviteApi
    public PendingResult<Status> convertInvitation(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.zza((GoogleApiClient) new zzd(this, googleApiClient, str));
    }

    @Override // com.google.android.gms.appinvite.AppInviteApi
    public PendingResult<AppInviteInvitationResult> getInvitation(GoogleApiClient googleApiClient, Activity activity, boolean z) {
        return googleApiClient.zza((GoogleApiClient) new zze(this, googleApiClient, activity, z));
    }

    @Override // com.google.android.gms.appinvite.AppInviteApi
    public PendingResult<Status> updateInvitationOnInstall(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.zza((GoogleApiClient) new zzc(this, googleApiClient, str));
    }
}
