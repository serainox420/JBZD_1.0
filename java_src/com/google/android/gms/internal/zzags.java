package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.DriveId;
/* loaded from: classes2.dex */
public class zzags extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzags> CREATOR = new zzagt();
    final DriveId zzaKG;
    final long zzaMk;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzags(int i, long j, DriveId driveId) {
        this.zzaiI = i;
        this.zzaMk = j;
        this.zzaKG = driveId;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzagt.zza(this, parcel, i);
    }
}
