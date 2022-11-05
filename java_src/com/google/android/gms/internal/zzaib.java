package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveApi;
import com.google.android.gms.drive.DriveContents;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.drive.DriveFolder;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.ExecutionOptions;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.query.Filters;
import com.google.android.gms.drive.query.Query;
import com.google.android.gms.drive.query.SearchableField;
import com.google.android.gms.drive.zzk;
import com.google.android.gms.internal.zzaad;
/* loaded from: classes2.dex */
public class zzaib extends zzaie implements DriveFolder {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zza extends zzagu {
        private final zzaad.zzb<DriveFolder.DriveFileResult> zzaGN;

        public zza(zzaad.zzb<DriveFolder.DriveFileResult> zzbVar) {
            this.zzaGN = zzbVar;
        }

        @Override // com.google.android.gms.internal.zzagu, com.google.android.gms.internal.zzaiy
        public void onError(Status status) throws RemoteException {
            this.zzaGN.setResult(new zzc(status, null));
        }

        @Override // com.google.android.gms.internal.zzagu, com.google.android.gms.internal.zzaiy
        public void zza(zzajn zzajnVar) throws RemoteException {
            this.zzaGN.setResult(new zzc(Status.zzazx, new zzahz(zzajnVar.getDriveId())));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zzb extends zzagu {
        private final zzaad.zzb<DriveFolder.DriveFolderResult> zzaGN;

        public zzb(zzaad.zzb<DriveFolder.DriveFolderResult> zzbVar) {
            this.zzaGN = zzbVar;
        }

        @Override // com.google.android.gms.internal.zzagu, com.google.android.gms.internal.zzaiy
        public void onError(Status status) throws RemoteException {
            this.zzaGN.setResult(new zze(status, null));
        }

        @Override // com.google.android.gms.internal.zzagu, com.google.android.gms.internal.zzaiy
        public void zza(zzajn zzajnVar) throws RemoteException {
            this.zzaGN.setResult(new zze(Status.zzazx, new zzaib(zzajnVar.getDriveId())));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zzc implements DriveFolder.DriveFileResult {
        private final DriveFile zzaNu;
        private final Status zzair;

        public zzc(Status status, DriveFile driveFile) {
            this.zzair = status;
            this.zzaNu = driveFile;
        }

        @Override // com.google.android.gms.drive.DriveFolder.DriveFileResult
        public DriveFile getDriveFile() {
            return this.zzaNu;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    /* loaded from: classes2.dex */
    static abstract class zzd extends zzahw<DriveFolder.DriveFileResult> {
        zzd(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzQ */
        public DriveFolder.DriveFileResult zzc(Status status) {
            return new zzc(status, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zze implements DriveFolder.DriveFolderResult {
        private final DriveFolder zzaNv;
        private final Status zzair;

        public zze(Status status, DriveFolder driveFolder) {
            this.zzair = status;
            this.zzaNv = driveFolder;
        }

        @Override // com.google.android.gms.drive.DriveFolder.DriveFolderResult
        public DriveFolder getDriveFolder() {
            return this.zzaNv;
        }

        @Override // com.google.android.gms.common.api.Result
        public Status getStatus() {
            return this.zzair;
        }
    }

    /* loaded from: classes2.dex */
    static abstract class zzf extends zzahw<DriveFolder.DriveFolderResult> {
        zzf(GoogleApiClient googleApiClient) {
            super(googleApiClient);
        }

        @Override // com.google.android.gms.internal.zzaaf
        /* renamed from: zzR */
        public DriveFolder.DriveFolderResult zzc(Status status) {
            return new zze(status, null);
        }
    }

    public zzaib(DriveId driveId) {
        super(driveId);
    }

    private int zza(DriveContents driveContents, com.google.android.gms.drive.metadata.internal.zzj zzjVar) {
        if (driveContents == null) {
            return (zzjVar == null || !zzjVar.zzBB()) ? 1 : 0;
        }
        int requestId = driveContents.zzAq().getRequestId();
        driveContents.zzAr();
        return requestId;
    }

    private PendingResult<DriveFolder.DriveFileResult> zza(GoogleApiClient googleApiClient, final MetadataChangeSet metadataChangeSet, final int i, final com.google.android.gms.drive.zzk zzkVar) {
        com.google.android.gms.drive.metadata.internal.zzj zzdK = com.google.android.gms.drive.metadata.internal.zzj.zzdK(metadataChangeSet.getMimeType());
        final int i2 = (zzdK == null || !zzdK.zzBB()) ? 0 : 1;
        return googleApiClient.zzb((GoogleApiClient) new zzd(googleApiClient) { // from class: com.google.android.gms.internal.zzaib.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzahx zzahxVar) throws RemoteException {
                metadataChangeSet.zzAE().setContext(zzahxVar.getContext());
                zzahxVar.zzAX().zza(new zzahm(zzaib.this.getDriveId(), metadataChangeSet.zzAE(), i, i2, zzkVar), new zza(this));
            }
        });
    }

    private MetadataChangeSet zza(MetadataChangeSet metadataChangeSet, String str) {
        return metadataChangeSet.zza(zzalu.zzaPH, str);
    }

    private Query zza(Query query) {
        Query.Builder addFilter = new Query.Builder().addFilter(Filters.in(SearchableField.PARENTS, getDriveId()));
        if (query != null) {
            if (query.getFilter() != null) {
                addFilter.addFilter(query.getFilter());
            }
            addFilter.setPageToken(query.getPageToken());
            addFilter.setSortOrder(query.getSortOrder());
        }
        return addFilter.build();
    }

    private void zzb(GoogleApiClient googleApiClient, MetadataChangeSet metadataChangeSet, DriveContents driveContents, com.google.android.gms.drive.zzk zzkVar) {
        if (metadataChangeSet == null) {
            throw new IllegalArgumentException("MetadataChangeSet must be provided.");
        }
        com.google.android.gms.drive.metadata.internal.zzj zzdK = com.google.android.gms.drive.metadata.internal.zzj.zzdK(metadataChangeSet.getMimeType());
        if (zzdK != null && zzdK.isFolder()) {
            throw new IllegalArgumentException("May not create folders using this method. Use DriveFolder.createFolder() instead of mime type application/vnd.google-apps.folder");
        }
        zzkVar.zzh(googleApiClient);
        if (driveContents == null) {
            return;
        }
        if (!(driveContents instanceof zzahy)) {
            throw new IllegalArgumentException("Only DriveContents obtained from the Drive API are accepted.");
        }
        if (driveContents.getDriveId() != null) {
            throw new IllegalArgumentException("Only DriveContents obtained through DriveApi.newDriveContents are accepted for file creation.");
        }
        if (!driveContents.zzAs()) {
            return;
        }
        throw new IllegalArgumentException("DriveContents are already closed.");
    }

    private void zzb(MetadataChangeSet metadataChangeSet) {
        if (metadataChangeSet == null) {
            throw new IllegalArgumentException("MetadataChangeSet must be provided.");
        }
        com.google.android.gms.drive.metadata.internal.zzj zzdK = com.google.android.gms.drive.metadata.internal.zzj.zzdK(metadataChangeSet.getMimeType());
        if (zzdK != null && !zzdK.zzBA()) {
            throw new IllegalArgumentException("May not create shortcut files using this method. Use DriveFolder.createShortcutFile() instead.");
        }
    }

    @Override // com.google.android.gms.drive.DriveFolder
    public PendingResult<DriveFolder.DriveFileResult> createFile(GoogleApiClient googleApiClient, MetadataChangeSet metadataChangeSet, DriveContents driveContents) {
        zzb(metadataChangeSet);
        return zza(googleApiClient, metadataChangeSet, driveContents, (com.google.android.gms.drive.zzk) null);
    }

    @Override // com.google.android.gms.drive.DriveFolder
    public PendingResult<DriveFolder.DriveFileResult> createFile(GoogleApiClient googleApiClient, MetadataChangeSet metadataChangeSet, DriveContents driveContents, ExecutionOptions executionOptions) {
        zzb(metadataChangeSet);
        return zza(googleApiClient, metadataChangeSet, driveContents, com.google.android.gms.drive.zzk.zza(executionOptions));
    }

    @Override // com.google.android.gms.drive.DriveFolder
    public PendingResult<DriveFolder.DriveFolderResult> createFolder(GoogleApiClient googleApiClient, final MetadataChangeSet metadataChangeSet) {
        if (metadataChangeSet == null) {
            throw new IllegalArgumentException("MetadataChangeSet must be provided.");
        }
        if (metadataChangeSet.getMimeType() != null && !metadataChangeSet.getMimeType().equals(DriveFolder.MIME_TYPE)) {
            throw new IllegalArgumentException("The mimetype must be of type application/vnd.google-apps.folder");
        }
        return googleApiClient.zzb((GoogleApiClient) new zzf(googleApiClient) { // from class: com.google.android.gms.internal.zzaib.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzahx zzahxVar) throws RemoteException {
                metadataChangeSet.zzAE().setContext(zzahxVar.getContext());
                zzahxVar.zzAX().zza(new zzaho(zzaib.this.getDriveId(), metadataChangeSet.zzAE()), new zzb(this));
            }
        });
    }

    @Override // com.google.android.gms.drive.DriveFolder
    public PendingResult<DriveApi.MetadataBufferResult> listChildren(GoogleApiClient googleApiClient) {
        return queryChildren(googleApiClient, null);
    }

    @Override // com.google.android.gms.drive.DriveFolder
    public PendingResult<DriveApi.MetadataBufferResult> queryChildren(GoogleApiClient googleApiClient, Query query) {
        return new zzahv().query(googleApiClient, zza(query));
    }

    public PendingResult<DriveFolder.DriveFileResult> zza(GoogleApiClient googleApiClient, MetadataChangeSet metadataChangeSet, DriveContents driveContents, com.google.android.gms.drive.zzk zzkVar) {
        com.google.android.gms.drive.zzk zzkVar2 = zzkVar == null ? (com.google.android.gms.drive.zzk) new zzk.zza().build() : zzkVar;
        zzb(googleApiClient, metadataChangeSet, driveContents, zzkVar2);
        int zza2 = zza(driveContents, com.google.android.gms.drive.metadata.internal.zzj.zzdK(metadataChangeSet.getMimeType()));
        String zzAz = zzkVar2.zzAz();
        if (zzAz != null) {
            metadataChangeSet = zza(metadataChangeSet, zzAz);
        }
        return zza(googleApiClient, metadataChangeSet, zza2, zzkVar2);
    }
}
