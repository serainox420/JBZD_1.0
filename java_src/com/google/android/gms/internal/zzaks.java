package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.DriveId;
/* loaded from: classes2.dex */
public class zzaks extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaks> CREATOR = new zzakt();
    final int zzaHE;
    final DriveId zzaKG;
    final com.google.android.gms.drive.events.zzp zzaMf;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaks(int i, DriveId driveId, int i2, com.google.android.gms.drive.events.zzp zzpVar) {
        this.zzaiI = i;
        this.zzaKG = driveId;
        this.zzaHE = i2;
        this.zzaMf = zzpVar;
    }

    public zzaks(DriveId driveId, int i) {
        this(driveId, i, null);
    }

    zzaks(DriveId driveId, int i, com.google.android.gms.drive.events.zzp zzpVar) {
        this(1, driveId, i, zzpVar);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzakt.zza(this, parcel, i);
    }
}
