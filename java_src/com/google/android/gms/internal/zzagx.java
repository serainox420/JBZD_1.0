package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.DriveId;
import java.util.List;
/* loaded from: classes2.dex */
public class zzagx extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzagx> CREATOR = new zzagy();
    final DriveId zzaMl;
    final List<DriveId> zzaMm;
    final List<DriveId> zzaMn;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzagx(int i, DriveId driveId, List<DriveId> list, List<DriveId> list2) {
        this.zzaiI = i;
        this.zzaMl = driveId;
        this.zzaMm = list;
        this.zzaMn = list2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzagy.zza(this, parcel, i);
    }
}
