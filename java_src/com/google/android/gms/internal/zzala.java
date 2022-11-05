package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.DriveId;
import java.util.List;
/* loaded from: classes2.dex */
public class zzala extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzala> CREATOR = new zzalb();
    final DriveId zzaMl;
    final List<DriveId> zzaOz;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzala(int i, DriveId driveId, List<DriveId> list) {
        this.zzaiI = i;
        this.zzaMl = driveId;
        this.zzaOz = list;
    }

    public zzala(DriveId driveId, List<DriveId> list) {
        this(1, driveId, list);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzalb.zza(this, parcel, i);
    }
}
