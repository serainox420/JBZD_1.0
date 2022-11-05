package com.google.android.gms.internal;

import android.content.IntentSender;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.drive.Drive;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.MetadataChangeSet;
/* loaded from: classes2.dex */
public class zzahj {
    private DriveId zzaLp;
    private Integer zzaMA;
    private final int zzaMB;
    protected MetadataChangeSet zzaMz;
    private String zzamJ;

    public zzahj(int i) {
        this.zzaMB = i;
    }

    public IntentSender build(GoogleApiClient googleApiClient) {
        com.google.android.gms.common.internal.zzac.zzb(this.zzaMz, "Must provide initial metadata to CreateFileActivityBuilder.");
        com.google.android.gms.common.internal.zzac.zza(googleApiClient.isConnected(), "Client must be connected");
        zzahx zzahxVar = (zzahx) googleApiClient.zza(Drive.zzaid);
        this.zzaMz.zzAE().setContext(zzahxVar.getContext());
        try {
            return zzahxVar.zzAX().zza(new zzahk(this.zzaMz.zzAE(), this.zzaMA == null ? 0 : this.zzaMA.intValue(), this.zzamJ, this.zzaLp, this.zzaMB));
        } catch (RemoteException e) {
            throw new RuntimeException("Unable to connect Drive Play Service", e);
        }
    }

    public void zza(DriveId driveId) {
        this.zzaLp = (DriveId) com.google.android.gms.common.internal.zzac.zzw(driveId);
    }

    public void zza(MetadataChangeSet metadataChangeSet) {
        this.zzaMz = (MetadataChangeSet) com.google.android.gms.common.internal.zzac.zzw(metadataChangeSet);
    }

    public void zzdI(String str) {
        this.zzamJ = (String) com.google.android.gms.common.internal.zzac.zzw(str);
    }

    public void zzeJ(int i) {
        this.zzaMA = Integer.valueOf(i);
    }
}
