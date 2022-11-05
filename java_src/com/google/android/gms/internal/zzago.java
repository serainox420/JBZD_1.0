package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.DriveId;
/* loaded from: classes2.dex */
public class zzago extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzago> CREATOR = new zzagp();
    final int zzaHE;
    final DriveId zzaKG;
    final com.google.android.gms.drive.events.zze zzaLE;
    final com.google.android.gms.drive.events.zzu zzaMe;
    final com.google.android.gms.drive.events.zzp zzaMf;
    final int zzaiI;

    public zzago(int i, DriveId driveId) {
        this(1, (DriveId) com.google.android.gms.common.internal.zzac.zzw(driveId), i, null, null, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzago(int i, DriveId driveId, int i2, com.google.android.gms.drive.events.zze zzeVar, com.google.android.gms.drive.events.zzu zzuVar, com.google.android.gms.drive.events.zzp zzpVar) {
        this.zzaiI = i;
        this.zzaKG = driveId;
        this.zzaHE = i2;
        this.zzaLE = zzeVar;
        this.zzaMe = zzuVar;
        this.zzaMf = zzpVar;
    }

    public DriveId getDriveId() {
        return this.zzaKG;
    }

    public int getEventType() {
        return this.zzaHE;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzagp.zza(this, parcel, i);
    }
}
