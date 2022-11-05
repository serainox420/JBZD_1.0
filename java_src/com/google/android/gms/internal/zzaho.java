package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
/* loaded from: classes2.dex */
public class zzaho extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaho> CREATOR = new zzahp();
    final MetadataBundle zzaMC;
    final DriveId zzaME;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaho(int i, DriveId driveId, MetadataBundle metadataBundle) {
        this.zzaiI = i;
        this.zzaME = (DriveId) com.google.android.gms.common.internal.zzac.zzw(driveId);
        this.zzaMC = (MetadataBundle) com.google.android.gms.common.internal.zzac.zzw(metadataBundle);
    }

    public zzaho(DriveId driveId, MetadataBundle metadataBundle) {
        this(1, driveId, metadataBundle);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzahp.zza(this, parcel, i);
    }
}
