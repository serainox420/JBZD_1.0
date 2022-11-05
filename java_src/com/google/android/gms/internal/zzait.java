package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.DriveId;
/* loaded from: classes2.dex */
public class zzait extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzait> CREATOR = new zzaiu();
    final DriveId zzaKG;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzait(int i, DriveId driveId) {
        this.zzaiI = i;
        this.zzaKG = driveId;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaiu.zza(this, parcel, i);
    }
}
