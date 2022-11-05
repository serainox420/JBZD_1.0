package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.DriveId;
/* loaded from: classes2.dex */
public class zzajn extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzajn> CREATOR = new zzajo();
    DriveId zzaMp;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzajn(int i, DriveId driveId) {
        this.zzaiI = i;
        this.zzaMp = driveId;
    }

    public DriveId getDriveId() {
        return this.zzaMp;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzajo.zza(this, parcel, i);
    }
}
