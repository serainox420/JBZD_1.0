package com.google.android.gms.drive;

import android.content.IntentSender;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.internal.zzahj;
import com.google.android.gms.internal.zzahy;
/* loaded from: classes2.dex */
public class CreateFileActivityBuilder {
    public static final String EXTRA_RESPONSE_DRIVE_ID = "response_drive_id";
    private final zzahj zzaKI = new zzahj(0);
    private DriveContents zzaKJ;
    private boolean zzaKK;

    public IntentSender build(GoogleApiClient googleApiClient) {
        zzac.zzb(Boolean.valueOf(this.zzaKK), "Must call setInitialDriveContents to CreateFileActivityBuilder.");
        zzac.zza(googleApiClient.isConnected(), "Client must be connected");
        if (this.zzaKJ != null) {
            this.zzaKJ.zzAr();
        }
        return this.zzaKI.build(googleApiClient);
    }

    public CreateFileActivityBuilder setActivityStartFolder(DriveId driveId) {
        this.zzaKI.zza(driveId);
        return this;
    }

    public CreateFileActivityBuilder setActivityTitle(String str) {
        this.zzaKI.zzdI(str);
        return this;
    }

    public CreateFileActivityBuilder setInitialDriveContents(DriveContents driveContents) {
        if (driveContents == null) {
            this.zzaKI.zzeJ(1);
        } else if (!(driveContents instanceof zzahy)) {
            throw new IllegalArgumentException("Only DriveContents obtained from the Drive API are accepted.");
        } else {
            if (driveContents.getDriveId() != null) {
                throw new IllegalArgumentException("Only DriveContents obtained through DriveApi.newDriveContents are accepted for file creation.");
            }
            if (driveContents.zzAs()) {
                throw new IllegalArgumentException("DriveContents are already closed.");
            }
            this.zzaKI.zzeJ(driveContents.zzAq().getRequestId());
            this.zzaKJ = driveContents;
        }
        this.zzaKK = true;
        return this;
    }

    public CreateFileActivityBuilder setInitialMetadata(MetadataChangeSet metadataChangeSet) {
        this.zzaKI.zza(metadataChangeSet);
        return this;
    }
}
