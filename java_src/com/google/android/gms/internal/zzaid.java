package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DrivePreferencesApi;
import com.google.android.gms.drive.FileUploadPreferences;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzahw;
/* loaded from: classes2.dex */
public class zzaid implements DrivePreferencesApi {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zza extends zzagu {
        private final zzaad.zzb<DrivePreferencesApi.FileUploadPreferencesResult> zzaGN;

        private zza(zzaad.zzb<DrivePreferencesApi.FileUploadPreferencesResult> zzbVar) {
            this.zzaGN = zzbVar;
        }

        @Override // com.google.android.gms.internal.zzagu, com.google.android.gms.internal.zzaiy
        public void onError(Status status) throws RemoteException {
            this.zzaGN.setResult(new zzb(status, null));
        }

        @Override // com.google.android.gms.internal.zzagu, com.google.android.gms.internal.zzaiy
        public void zza(zzajj zzajjVar) throws RemoteException {
            this.zzaGN.setResult(new zzb(Status.zzazx, zzajjVar.zzBf()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class zzb implements DrivePreferencesApi.FileUploadPreferencesResult {
        private final FileUploadPreferences zzaNz;
        private final Status zzair;

        private zzb(zzaid zzaidVar, Status status, FileUploadPreferences fileUploadPreferences) {
            this.zzair = status;
            this.zzaNz = fileUploadPreferences;
        }

        @Override // com.google.android.gms.drive.DrivePreferencesApi.FileUploadPreferencesResult
        public FileUploadPreferences getFileUploadPreferences() {
            return this.zzaNz;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    /* loaded from: classes2.dex */
    private abstract class zzc extends zzahw<DrivePreferencesApi.FileUploadPreferencesResult> {
        public zzc(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzS */
        public DrivePreferencesApi.FileUploadPreferencesResult zzc(Status status) {
            return new zzb(status, null);
        }
    }

    @Override // com.google.android.gms.drive.DrivePreferencesApi
    public PendingResult<DrivePreferencesApi.FileUploadPreferencesResult> getFileUploadPreferences(GoogleApiClient googleApiClient) {
        return googleApiClient.zza((GoogleApiClient) new zzc(googleApiClient) { // from class: com.google.android.gms.internal.zzaid.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzahx zzahxVar) throws RemoteException {
                zzahxVar.zzAX().zzd(new zza(this));
            }
        });
    }

    @Override // com.google.android.gms.drive.DrivePreferencesApi
    public PendingResult<Status> setFileUploadPreferences(GoogleApiClient googleApiClient, FileUploadPreferences fileUploadPreferences) {
        if (!(fileUploadPreferences instanceof zzail)) {
            throw new IllegalArgumentException("Invalid preference value");
        }
        final zzail zzailVar = (zzail) fileUploadPreferences;
        return googleApiClient.zzb((GoogleApiClient) new zzahw.zza(this, googleApiClient) { // from class: com.google.android.gms.internal.zzaid.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzahx zzahxVar) throws RemoteException {
                zzahxVar.zzAX().zza(new zzakw(zzailVar), new zzalc(this));
            }
        });
    }
}
