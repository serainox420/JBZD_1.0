package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.DriveId;
/* loaded from: classes2.dex */
public class zzajb extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzajb> CREATOR = new zzajc();
    final DriveId zzaNS;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzajb(int i, DriveId driveId) {
        this.zzaiI = i;
        this.zzaNS = driveId;
    }

    public zzajb(DriveId driveId) {
        this(1, driveId);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzajc.zza(this, parcel, i);
    }
}
