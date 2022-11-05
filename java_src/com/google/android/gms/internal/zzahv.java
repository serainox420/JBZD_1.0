package com.google.android.gms.internal;

import android.annotation.SuppressLint;
import android.os.RemoteException;
import com.google.android.gms.common.api.BooleanResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Releasable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.CreateFileActivityBuilder;
import com.google.android.gms.drive.Drive;
import com.google.android.gms.drive.DriveApi;
import com.google.android.gms.drive.DriveContents;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.drive.DriveFolder;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.MetadataBuffer;
import com.google.android.gms.drive.OpenFileActivityBuilder;
import com.google.android.gms.drive.query.Query;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzahw;
import java.util.List;
/* loaded from: classes2.dex */
public class zzahv implements DriveApi {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zza extends zzagu {
        private final zzaad.zzb<DriveApi.DriveContentsResult> zzaGN;

        public zza(zzaad.zzb<DriveApi.DriveContentsResult> zzbVar) {
            this.zzaGN = zzbVar;
        }

        @Override // com.google.android.gms.internal.zzagu, com.google.android.gms.internal.zzaiy
        public void onError(Status status) throws RemoteException {
            this.zzaGN.setResult(new zzb(status, null));
        }

        @Override // com.google.android.gms.internal.zzagu, com.google.android.gms.internal.zzaiy
        public void zza(zzajh zzajhVar) throws RemoteException {
            this.zzaGN.setResult(new zzb(Status.zzazx, new zzahy(zzajhVar.zzBd())));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class zzb implements Releasable, DriveApi.DriveContentsResult {
        private final DriveContents zzaKJ;
        private final Status zzair;

        public zzb(Status status, DriveContents driveContents) {
            this.zzair = status;
            this.zzaKJ = driveContents;
        }

        @Override // com.google.android.gms.drive.DriveApi.DriveContentsResult
        public DriveContents getDriveContents() {
            return this.zzaKJ;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }

        @Override // com.google.android.gms.common.api.Releasable
        public void release() {
            if (this.zzaKJ != null) {
                this.zzaKJ.zzAr();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static abstract class zzc extends zzahw<DriveApi.DriveContentsResult> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public zzc(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzN */
        public DriveApi.DriveContentsResult zzc(Status status) {
            return new zzb(status, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class zzd extends zzagu {
        private final zzaad.zzb<DriveApi.DriveIdResult> zzaGN;

        public zzd(zzaad.zzb<DriveApi.DriveIdResult> zzbVar) {
            this.zzaGN = zzbVar;
        }

        @Override // com.google.android.gms.internal.zzagu, com.google.android.gms.internal.zzaiy
        public void onError(Status status) throws RemoteException {
            this.zzaGN.setResult(new zze(status, null));
        }

        @Override // com.google.android.gms.internal.zzagu, com.google.android.gms.internal.zzaiy
        public void zza(zzajn zzajnVar) throws RemoteException {
            this.zzaGN.setResult(new zze(Status.zzazx, zzajnVar.getDriveId()));
        }

        @Override // com.google.android.gms.internal.zzagu, com.google.android.gms.internal.zzaiy
        public void zza(zzajy zzajyVar) throws RemoteException {
            this.zzaGN.setResult(new zze(Status.zzazx, new zzahq(zzajyVar.zzBm()).getDriveId()));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zze implements DriveApi.DriveIdResult {
        private final DriveId zzaKG;
        private final Status zzair;

        public zze(Status status, DriveId driveId) {
            this.zzair = status;
            this.zzaKG = driveId;
        }

        @Override // com.google.android.gms.drive.DriveApi.DriveIdResult
        public DriveId getDriveId() {
            return this.zzaKG;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    /* loaded from: classes2.dex */
    static abstract class zzf extends zzahw<DriveApi.DriveIdResult> {
        zzf(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzO */
        public DriveApi.DriveIdResult zzc(Status status) {
            return new zze(status, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class zzg implements DriveApi.MetadataBufferResult {
        private final MetadataBuffer zzaMM;
        private final boolean zzaMN;
        private final Status zzair;

        public zzg(Status status, MetadataBuffer metadataBuffer, boolean z) {
            this.zzair = status;
            this.zzaMM = metadataBuffer;
            this.zzaMN = z;
        }

        @Override // com.google.android.gms.drive.DriveApi.MetadataBufferResult
        public MetadataBuffer getMetadataBuffer() {
            return this.zzaMM;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }

        @Override // com.google.android.gms.common.api.Releasable
        public void release() {
            if (this.zzaMM != null) {
                this.zzaMM.release();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static abstract class zzh extends zzahw<DriveApi.MetadataBufferResult> {
        /* JADX INFO: Access modifiers changed from: package-private */
        public zzh(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzP */
        public DriveApi.MetadataBufferResult zzc(Status status) {
            return new zzg(status, null, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zzi extends zzagu {
        private final zzaad.zzb<DriveApi.MetadataBufferResult> zzaGN;

        public zzi(zzaad.zzb<DriveApi.MetadataBufferResult> zzbVar) {
            this.zzaGN = zzbVar;
        }

        @Override // com.google.android.gms.internal.zzagu, com.google.android.gms.internal.zzaiy
        public void onError(Status status) throws RemoteException {
            this.zzaGN.setResult(new zzg(status, null, false));
        }

        @Override // com.google.android.gms.internal.zzagu, com.google.android.gms.internal.zzaiy
        public void zza(zzajt zzajtVar) throws RemoteException {
            this.zzaGN.setResult(new zzg(Status.zzazx, new MetadataBuffer(zzajtVar.zzBj()), zzajtVar.zzBk()));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SuppressLint({"MissingRemoteException"})
    /* loaded from: classes2.dex */
    public static class zzj extends zzahw.zza {
        /* JADX INFO: Access modifiers changed from: package-private */
        public zzj(GoogleApiClient googleApiClient, Status status) {
            super(googleApiClient);
            zzb((zzj) status);
        }

        @Override // com.google.android.gms.internal.zzaad.zza
        protected /* bridge */ /* synthetic */ void zza(zzahx zzahxVar) throws RemoteException {
        }
    }

    @Override // com.google.android.gms.drive.DriveApi
    public PendingResult<Status> cancelPendingActions(GoogleApiClient googleApiClient, List<String> list) {
        return ((zzahx) googleApiClient.zza(Drive.zzaid)).cancelPendingActions(googleApiClient, list);
    }

    @Override // com.google.android.gms.drive.DriveApi
    public PendingResult<DriveApi.DriveIdResult> fetchDriveId(GoogleApiClient googleApiClient, final String str) {
        return googleApiClient.zza((GoogleApiClient) new zzf(this, googleApiClient) { // from class: com.google.android.gms.internal.zzahv.3
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzahx zzahxVar) throws RemoteException {
                zzahxVar.zzAX().zza(new zzair(DriveId.zzdD(str), false), new zzd(this));
            }
        });
    }

    @Override // com.google.android.gms.drive.DriveApi
    public DriveFolder getAppFolder(GoogleApiClient googleApiClient) {
        zzahx zzahxVar = (zzahx) googleApiClient.zza(Drive.zzaid);
        if (!zzahxVar.zzBa()) {
            throw new IllegalStateException("Client is not yet connected");
        }
        DriveId zzAZ = zzahxVar.zzAZ();
        if (zzAZ == null) {
            return null;
        }
        return new zzaib(zzAZ);
    }

    @Override // com.google.android.gms.drive.DriveApi
    public DriveFile getFile(GoogleApiClient googleApiClient, DriveId driveId) {
        if (driveId == null) {
            throw new IllegalArgumentException("Id must be provided.");
        }
        if (googleApiClient.isConnected()) {
            return new zzahz(driveId);
        }
        throw new IllegalStateException("Client must be connected");
    }

    @Override // com.google.android.gms.drive.DriveApi
    public DriveFolder getFolder(GoogleApiClient googleApiClient, DriveId driveId) {
        if (driveId == null) {
            throw new IllegalArgumentException("Id must be provided.");
        }
        if (googleApiClient.isConnected()) {
            return new zzaib(driveId);
        }
        throw new IllegalStateException("Client must be connected");
    }

    @Override // com.google.android.gms.drive.DriveApi
    public DriveFolder getRootFolder(GoogleApiClient googleApiClient) {
        zzahx zzahxVar = (zzahx) googleApiClient.zza(Drive.zzaid);
        if (!zzahxVar.zzBa()) {
            throw new IllegalStateException("Client is not yet connected");
        }
        DriveId zzAY = zzahxVar.zzAY();
        if (zzAY == null) {
            return null;
        }
        return new zzaib(zzAY);
    }

    @Override // com.google.android.gms.drive.DriveApi
    public PendingResult<BooleanResult> isAutobackupEnabled(GoogleApiClient googleApiClient) {
        return googleApiClient.zza((GoogleApiClient) new zzahw<BooleanResult>(this, googleApiClient) { // from class: com.google.android.gms.internal.zzahv.5
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaaf
            /* renamed from: zzM */
            public BooleanResult zzc(Status status) {
                return new BooleanResult(status, false);
            }

            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzahx zzahxVar) throws RemoteException {
                zzahxVar.zzAX().zze(new zzagu(this) { // from class: com.google.android.gms.internal.zzahv.5.1
                    @Override // com.google.android.gms.internal.zzagu, com.google.android.gms.internal.zzaiy
                    public void zzaA(boolean z) {
                        this.zzb((zzahw) new BooleanResult(Status.zzazx, z));
                    }
                });
            }
        });
    }

    @Override // com.google.android.gms.drive.DriveApi
    public CreateFileActivityBuilder newCreateFileActivityBuilder() {
        return new CreateFileActivityBuilder();
    }

    @Override // com.google.android.gms.drive.DriveApi
    public PendingResult<DriveApi.DriveContentsResult> newDriveContents(GoogleApiClient googleApiClient) {
        return zzb(googleApiClient, DriveFile.MODE_WRITE_ONLY);
    }

    @Override // com.google.android.gms.drive.DriveApi
    public OpenFileActivityBuilder newOpenFileActivityBuilder() {
        return new OpenFileActivityBuilder();
    }

    @Override // com.google.android.gms.drive.DriveApi
    public PendingResult<DriveApi.MetadataBufferResult> query(GoogleApiClient googleApiClient, final Query query) {
        if (query == null) {
            throw new IllegalArgumentException("Query must be provided.");
        }
        return googleApiClient.zza((GoogleApiClient) new zzh(this, googleApiClient) { // from class: com.google.android.gms.internal.zzahv.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzahx zzahxVar) throws RemoteException {
                zzahxVar.zzAX().zza(new zzakq(query), new zzi(this));
            }
        });
    }

    @Override // com.google.android.gms.drive.DriveApi
    public PendingResult<Status> requestSync(GoogleApiClient googleApiClient) {
        return googleApiClient.zzb((GoogleApiClient) new zzahw.zza(this, googleApiClient) { // from class: com.google.android.gms.internal.zzahv.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzahx zzahxVar) throws RemoteException {
                zzahxVar.zzAX().zza(new zzalc(this));
            }
        });
    }

    public PendingResult<DriveApi.DriveContentsResult> zzb(GoogleApiClient googleApiClient, final int i) {
        return googleApiClient.zza((GoogleApiClient) new zzc(this, googleApiClient) { // from class: com.google.android.gms.internal.zzahv.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzahx zzahxVar) throws RemoteException {
                zzahxVar.zzAX().zza(new zzahh(i), new zza(this));
            }
        });
    }
}
