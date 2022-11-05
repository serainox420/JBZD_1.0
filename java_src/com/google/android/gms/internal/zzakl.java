package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveApi;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.internal.zzaad;
import com.google.android.gms.internal.zzahv;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class zzakl extends zzagu {
    private final zzaad.zzb<DriveApi.DriveContentsResult> zzaGN;
    private final DriveFile.DownloadProgressListener zzaOv;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzakl(zzaad.zzb<DriveApi.DriveContentsResult> zzbVar, DriveFile.DownloadProgressListener downloadProgressListener) {
        this.zzaGN = zzbVar;
        this.zzaOv = downloadProgressListener;
    }

    @Override // com.google.android.gms.internal.zzagu, com.google.android.gms.internal.zzaiy
    public void onError(Status status) throws RemoteException {
        this.zzaGN.setResult(new zzahv.zzb(status, null));
    }

    @Override // com.google.android.gms.internal.zzagu, com.google.android.gms.internal.zzaiy
    public void zza(zzajh zzajhVar) throws RemoteException {
        this.zzaGN.setResult(new zzahv.zzb(zzajhVar.zzBe() ? new Status(-1) : Status.zzazx, new zzahy(zzajhVar.zzBd())));
    }

    @Override // com.google.android.gms.internal.zzagu, com.google.android.gms.internal.zzaiy
    public void zza(zzajl zzajlVar) throws RemoteException {
        if (this.zzaOv != null) {
            this.zzaOv.onProgress(zzajlVar.zzBg(), zzajlVar.zzBh());
        }
    }
}
