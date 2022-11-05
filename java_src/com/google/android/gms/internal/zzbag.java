package com.google.android.gms.internal;

import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzbad;
import com.google.android.gms.search.GoogleNowAuthState;
import com.google.android.gms.search.SearchAuth;
import com.google.android.gms.search.SearchAuthApi;
/* loaded from: classes2.dex */
public class zzbag implements SearchAuthApi {

    /* loaded from: classes2.dex */
    static abstract class zza extends zzbad.zza {
        zza() {
        }

        @Override // com.google.android.gms.internal.zzbad
        public void zza(Status status, GoogleNowAuthState googleNowAuthState) {
            throw new UnsupportedOperationException();
        }

        @Override // com.google.android.gms.internal.zzbad
        public void zzbJ(Status status) {
            throw new UnsupportedOperationException();
        }
    }

    /* loaded from: classes2.dex */
    static class zzb extends zzaad.zza<Status, zzbaf> {
        private final String zzbDT;
        private final String zzbDW;
        private final boolean zzbDX;

        protected zzb(GoogleApiClient googleApiClient, String str) {
            super(SearchAuth.API, googleApiClient);
            this.zzbDX = Log.isLoggable("SearchAuth", 3);
            this.zzbDT = str;
            this.zzbDW = googleApiClient.getContext().getPackageName();
        }

        @Override // com.google.android.gms.internal.zzaad.zza, com.google.android.gms.internal.zzaad.zzb
        public /* synthetic */ void setResult(Object obj) {
            super.zzb((zzb) ((Status) obj));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(zzbaf zzbafVar) throws RemoteException {
            if (this.zzbDX) {
                Log.d("SearchAuth", "ClearTokenImpl started");
            }
            ((zzbae) zzbafVar.zzxD()).zzb(new zza() { // from class: com.google.android.gms.internal.zzbag.zzb.1
                @Override // com.google.android.gms.internal.zzbag.zza, com.google.android.gms.internal.zzbad
                public void zzbJ(Status status) {
                    if (zzb.this.zzbDX) {
                        Log.d("SearchAuth", "ClearTokenImpl success");
                    }
                    zzb.this.zzb((zzb) status);
                }
            }, this.zzbDW, this.zzbDT);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzb */
        public Status zzc(Status status) {
            if (this.zzbDX) {
                String valueOf = String.valueOf(status.getStatusMessage());
                Log.d("SearchAuth", valueOf.length() != 0 ? "ClearTokenImpl received failure: ".concat(valueOf) : new String("ClearTokenImpl received failure: "));
            }
            return status;
        }
    }

    /* loaded from: classes2.dex */
    static class zzc extends zzaad.zza<SearchAuthApi.GoogleNowAuthResult, zzbaf> {
        private final String zzbDW;
        private final boolean zzbDX;
        private final String zzbDZ;

        protected zzc(GoogleApiClient googleApiClient, String str) {
            super(SearchAuth.API, googleApiClient);
            this.zzbDX = Log.isLoggable("SearchAuth", 3);
            this.zzbDZ = str;
            this.zzbDW = googleApiClient.getContext().getPackageName();
        }

        @Override // com.google.android.gms.internal.zzaad.zza, com.google.android.gms.internal.zzaad.zzb
        public /* synthetic */ void setResult(Object obj) {
            super.zzb((zzc) ((SearchAuthApi.GoogleNowAuthResult) obj));
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaad.zza
        public void zza(zzbaf zzbafVar) throws RemoteException {
            if (this.zzbDX) {
                Log.d("SearchAuth", "GetGoogleNowAuthImpl started");
            }
            ((zzbae) zzbafVar.zzxD()).zza(new zza() { // from class: com.google.android.gms.internal.zzbag.zzc.1
                @Override // com.google.android.gms.internal.zzbag.zza, com.google.android.gms.internal.zzbad
                public void zza(Status status, GoogleNowAuthState googleNowAuthState) {
                    if (zzc.this.zzbDX) {
                        Log.d("SearchAuth", "GetGoogleNowAuthImpl success");
                    }
                    zzc.this.zzb((zzc) new zzd(status, googleNowAuthState));
                }
            }, this.zzbDW, this.zzbDZ);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzbK */
        public SearchAuthApi.GoogleNowAuthResult zzc(Status status) {
            if (this.zzbDX) {
                String valueOf = String.valueOf(status.getStatusMessage());
                Log.d("SearchAuth", valueOf.length() != 0 ? "GetGoogleNowAuthImpl received failure: ".concat(valueOf) : new String("GetGoogleNowAuthImpl received failure: "));
            }
            return new zzd(status, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class zzd implements SearchAuthApi.GoogleNowAuthResult {
        private final Status zzair;
        private final GoogleNowAuthState zzbEb;

        zzd(Status status, GoogleNowAuthState googleNowAuthState) {
            this.zzair = status;
            this.zzbEb = googleNowAuthState;
        }

        @Override // com.google.android.gms.search.SearchAuthApi.GoogleNowAuthResult
        public GoogleNowAuthState getGoogleNowAuthState() {
            return this.zzbEb;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    @Override // com.google.android.gms.search.SearchAuthApi
    public PendingResult<Status> clearToken(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.zza((GoogleApiClient) new zzb(googleApiClient, str));
    }

    @Override // com.google.android.gms.search.SearchAuthApi
    public PendingResult<SearchAuthApi.GoogleNowAuthResult> getGoogleNowAuth(GoogleApiClient googleApiClient, String str) {
        return googleApiClient.zza((GoogleApiClient) new zzc(googleApiClient, str));
    }
}
