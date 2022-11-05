package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.DriveId;
/* loaded from: classes2.dex */
public class zzall extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzall> CREATOR = new zzalm();
    final DriveId zzaMp;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzall(int i, DriveId driveId) {
        this.zzaiI = i;
        this.zzaMp = driveId;
    }

    public zzall(DriveId driveId) {
        this(1, driveId);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzalm.zza(this, parcel, i);
    }
}
