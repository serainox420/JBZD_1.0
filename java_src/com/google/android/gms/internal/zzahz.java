package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.drive.DriveApi;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.internal.zzabh;
import com.google.android.gms.internal.zzahv;
/* loaded from: classes2.dex */
public class zzahz extends zzaie implements DriveFile {

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class zza implements DriveFile.DownloadProgressListener {
        private final zzabh<DriveFile.DownloadProgressListener> zzaNm;

        public zza(zzabh<DriveFile.DownloadProgressListener> zzabhVar) {
            this.zzaNm = zzabhVar;
        }

        @Override // com.google.android.gms.drive.DriveFile.DownloadProgressListener
        public void onProgress(final long j, final long j2) {
            this.zzaNm.zza(new zzabh.zzc<DriveFile.DownloadProgressListener>(this) { // from class: com.google.android.gms.internal.zzahz.zza.1
                @Override // com.google.android.gms.internal.zzabh.zzc
                /* renamed from: zza */
                public void zzs(DriveFile.DownloadProgressListener downloadProgressListener) {
                    downloadProgressListener.onProgress(j, j2);
                }

                @Override // com.google.android.gms.internal.zzabh.zzc
                public void zzwc() {
                }
            });
        }
    }

    public zzahz(DriveId driveId) {
        super(driveId);
    }

    private static DriveFile.DownloadProgressListener zza(GoogleApiClient googleApiClient, DriveFile.DownloadProgressListener downloadProgressListener) {
        if (downloadProgressListener == null) {
            return null;
        }
        return new zza(googleApiClient.zzr(downloadProgressListener));
    }

    @Override // com.google.android.gms.drive.DriveFile
    public PendingResult<DriveApi.DriveContentsResult> open(GoogleApiClient googleApiClient, final int i, DriveFile.DownloadProgressListener downloadProgressListener) {
        if (i == 268435456 || i == 536870912 || i == 805306368) {
            final DriveFile.DownloadProgressListener zza2 = zza(googleApiClient, downloadProgressListener);
            return googleApiClient.zza((GoogleApiClient) new zzahv.zzc(googleApiClient) { // from class: com.google.android.gms.internal.zzahz.1
                /* JADX INFO: Access modifiers changed from: protected */
                @Override // com.google.android.gms.internal.zzaad.zza
                public void zza(zzahx zzahxVar) throws RemoteException {
                    zza(zzahxVar.zzAX().zza(new zzakj(zzahz.this.getDriveId(), i, 0), new zzakl(this, zza2)).zzBc());
                }
            });
        }
        throw new IllegalArgumentException("Invalid mode provided.");
    }
}
