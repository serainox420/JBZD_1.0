package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
/* loaded from: classes2.dex */
public class zzahk extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzahk> CREATOR = new zzahl();
    final int zzaKE;
    final DriveId zzaLp;
    final MetadataBundle zzaMC;
    final Integer zzaMD;
    final int zzaiI;
    final String zzamJ;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzahk(int i, MetadataBundle metadataBundle, int i2, String str, DriveId driveId, Integer num) {
        this.zzaiI = i;
        this.zzaMC = metadataBundle;
        this.zzaKE = i2;
        this.zzamJ = str;
        this.zzaLp = driveId;
        this.zzaMD = num;
    }

    public zzahk(MetadataBundle metadataBundle, int i, String str, DriveId driveId, int i2) {
        this(1, metadataBundle, i, str, driveId, Integer.valueOf(i2));
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzahl.zza(this, parcel, i);
    }
}
