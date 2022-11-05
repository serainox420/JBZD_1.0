package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.DriveId;
/* loaded from: classes2.dex */
public class zzair extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzair> CREATOR = new zzais();
    final DriveId zzaMp;
    final boolean zzaNQ;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzair(int i, DriveId driveId, boolean z) {
        this.zzaiI = i;
        this.zzaMp = driveId;
        this.zzaNQ = z;
    }

    public zzair(DriveId driveId, boolean z) {
        this(1, driveId, z);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzais.zza(this, parcel, i);
    }
}
