package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.DriveId;
/* loaded from: classes2.dex */
public class zzakj extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzakj> CREATOR = new zzakk();
    final int zzaKF;
    final DriveId zzaMp;
    final int zzaOu;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzakj(int i, DriveId driveId, int i2, int i3) {
        this.zzaiI = i;
        this.zzaMp = driveId;
        this.zzaKF = i2;
        this.zzaOu = i3;
    }

    public zzakj(DriveId driveId, int i, int i2) {
        this(1, driveId, i, i2);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzakk.zza(this, parcel, i);
    }
}
