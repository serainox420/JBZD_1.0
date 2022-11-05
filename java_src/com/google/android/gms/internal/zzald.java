package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.DriveId;
/* loaded from: classes2.dex */
public class zzald extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzald> CREATOR = new zzale();
    final DriveId zzaMp;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzald(int i, DriveId driveId) {
        this.zzaiI = i;
        this.zzaMp = driveId;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzale.zza(this, parcel, i);
    }
}
