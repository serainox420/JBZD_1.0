package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
/* loaded from: classes2.dex */
public class zzaln extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaln> CREATOR = new zzalo();
    final DriveId zzaMp;
    final MetadataBundle zzaMq;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaln(int i, DriveId driveId, MetadataBundle metadataBundle) {
        this.zzaiI = i;
        this.zzaMp = driveId;
        this.zzaMq = metadataBundle;
    }

    public zzaln(DriveId driveId, MetadataBundle metadataBundle) {
        this(1, driveId, metadataBundle);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzalo.zza(this, parcel, i);
    }
}
