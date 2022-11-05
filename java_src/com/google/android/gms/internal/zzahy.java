package com.google.android.gms.internal;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.drive.DriveApi;
import com.google.android.gms.drive.DriveContents;
import com.google.android.gms.drive.DriveFile;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.ExecutionOptions;
import com.google.android.gms.drive.MetadataChangeSet;
import com.google.android.gms.drive.zzl;
import com.google.android.gms.internal.zzahv;
import com.google.android.gms.internal.zzahw;
import java.io.InputStream;
import java.io.OutputStream;
/* loaded from: classes2.dex */
public class zzahy implements DriveContents {
    private final com.google.android.gms.drive.zzc zzaNe;
    private boolean mClosed = false;
    private boolean zzaNf = false;
    private boolean zzaNg = false;

    public zzahy(com.google.android.gms.drive.zzc zzcVar) {
        this.zzaNe = (com.google.android.gms.drive.zzc) com.google.android.gms.common.internal.zzac.zzw(zzcVar);
    }

    @Override // com.google.android.gms.drive.DriveContents
    public PendingResult<Status> commit(GoogleApiClient googleApiClient, MetadataChangeSet metadataChangeSet) {
        return zza(googleApiClient, metadataChangeSet, null);
    }

    @Override // com.google.android.gms.drive.DriveContents
    public PendingResult<Status> commit(GoogleApiClient googleApiClient, MetadataChangeSet metadataChangeSet, ExecutionOptions executionOptions) {
        return zza(googleApiClient, metadataChangeSet, executionOptions == null ? null : com.google.android.gms.drive.zzl.zzb(executionOptions));
    }

    @Override // com.google.android.gms.drive.DriveContents
    public void discard(GoogleApiClient googleApiClient) {
        if (zzAs()) {
            throw new IllegalStateException("DriveContents already closed.");
        }
        zzAr();
        ((AnonymousClass4) googleApiClient.zzb((GoogleApiClient) new zzahw.zza(googleApiClient) { // from class: com.google.android.gms.internal.zzahy.4
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzahx zzahxVar) throws RemoteException {
                zzahxVar.zzAX().zza(new zzahd(zzahy.this.zzaNe.getRequestId(), false), new zzalc(this));
            }
        })).setResultCallback(new ResultCallback<Status>(this) { // from class: com.google.android.gms.internal.zzahy.3
            @Override // com.google.android.gms.common.api.ResultCallback
            /* renamed from: zzp */
            public void onResult(Status status) {
                if (!status.isSuccess()) {
                    zzaic.zzG("DriveContentsImpl", "Error discarding contents");
                } else {
                    zzaic.zzE("DriveContentsImpl", "Contents discarded");
                }
            }
        });
    }

    @Override // com.google.android.gms.drive.DriveContents
    public DriveId getDriveId() {
        return this.zzaNe.getDriveId();
    }

    @Override // com.google.android.gms.drive.DriveContents
    public InputStream getInputStream() {
        if (zzAs()) {
            throw new IllegalStateException("Contents have been closed, cannot access the input stream.");
        }
        if (this.zzaNe.getMode() != 268435456) {
            throw new IllegalStateException("getInputStream() can only be used with contents opened with MODE_READ_ONLY.");
        }
        if (this.zzaNf) {
            throw new IllegalStateException("getInputStream() can only be called once per Contents instance.");
        }
        this.zzaNf = true;
        return this.zzaNe.getInputStream();
    }

    @Override // com.google.android.gms.drive.DriveContents
    public int getMode() {
        return this.zzaNe.getMode();
    }

    @Override // com.google.android.gms.drive.DriveContents
    public OutputStream getOutputStream() {
        if (zzAs()) {
            throw new IllegalStateException("Contents have been closed, cannot access the output stream.");
        }
        if (this.zzaNe.getMode() != 536870912) {
            throw new IllegalStateException("getOutputStream() can only be used with contents opened with MODE_WRITE_ONLY.");
        }
        if (this.zzaNg) {
            throw new IllegalStateException("getOutputStream() can only be called once per Contents instance.");
        }
        this.zzaNg = true;
        return this.zzaNe.getOutputStream();
    }

    @Override // com.google.android.gms.drive.DriveContents
    public ParcelFileDescriptor getParcelFileDescriptor() {
        if (zzAs()) {
            throw new IllegalStateException("Contents have been closed, cannot access the output stream.");
        }
        return this.zzaNe.getParcelFileDescriptor();
    }

    @Override // com.google.android.gms.drive.DriveContents
    public PendingResult<DriveApi.DriveContentsResult> reopenForWrite(GoogleApiClient googleApiClient) {
        if (zzAs()) {
            throw new IllegalStateException("DriveContents already closed.");
        }
        if (this.zzaNe.getMode() != 268435456) {
            throw new IllegalStateException("reopenForWrite can only be used with DriveContents opened with MODE_READ_ONLY.");
        }
        zzAr();
        return googleApiClient.zza((GoogleApiClient) new zzahv.zzc(googleApiClient) { // from class: com.google.android.gms.internal.zzahy.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzahx zzahxVar) throws RemoteException {
                zzahxVar.zzAX().zza(new zzakj(zzahy.this.getDriveId(), DriveFile.MODE_WRITE_ONLY, zzahy.this.zzaNe.getRequestId()), new zzakl(this, null));
            }
        });
    }

    @Override // com.google.android.gms.drive.DriveContents
    public com.google.android.gms.drive.zzc zzAq() {
        return this.zzaNe;
    }

    @Override // com.google.android.gms.drive.DriveContents
    public void zzAr() {
        com.google.android.gms.common.util.zzp.zza(this.zzaNe.getParcelFileDescriptor());
        this.mClosed = true;
    }

    @Override // com.google.android.gms.drive.DriveContents
    public boolean zzAs() {
        return this.mClosed;
    }

    public PendingResult<Status> zza(GoogleApiClient googleApiClient, final MetadataChangeSet metadataChangeSet, com.google.android.gms.drive.zzl zzlVar) {
        final com.google.android.gms.drive.zzl zzlVar2 = zzlVar == null ? (com.google.android.gms.drive.zzl) new zzl.zza().build() : zzlVar;
        if (this.zzaNe.getMode() == 268435456) {
            throw new IllegalStateException("Cannot commit contents opened with MODE_READ_ONLY");
        }
        if (ExecutionOptions.zzeg(zzlVar2.zzAw()) && !this.zzaNe.zzAo()) {
            throw new IllegalStateException("DriveContents must be valid for conflict detection.");
        }
        zzlVar2.zzh(googleApiClient);
        if (zzAs()) {
            throw new IllegalStateException("DriveContents already closed.");
        }
        if (getDriveId() == null) {
            throw new IllegalStateException("Only DriveContents obtained through DriveFile.open can be committed.");
        }
        if (metadataChangeSet == null) {
            metadataChangeSet = MetadataChangeSet.zzaLk;
        }
        zzAr();
        return googleApiClient.zzb((GoogleApiClient) new zzahw.zza(googleApiClient) { // from class: com.google.android.gms.internal.zzahy.2
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.google.android.gms.internal.zzaad.zza
            public void zza(zzahx zzahxVar) throws RemoteException {
                metadataChangeSet.zzAE().setContext(zzahxVar.getContext());
                zzahxVar.zzAX().zza(new zzahb(zzahy.this.zzaNe.getDriveId(), metadataChangeSet.zzAE(), zzahy.this.zzaNe.getRequestId(), zzahy.this.zzaNe.zzAo(), zzlVar2), new zzalc(this));
            }
        });
    }
}
