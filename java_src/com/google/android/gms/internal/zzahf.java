package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.DriveId;
/* loaded from: classes2.dex */
public class zzahf extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzahf> CREATOR = new zzahg();
    final DriveId zzaKG;
    final int zzaMw;
    final int zzaMx;
    final zzako zzaMy;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzahf(int i, int i2, int i3, DriveId driveId, zzako zzakoVar) {
        this.zzaiI = i;
        this.zzaMw = i2;
        this.zzaMx = i3;
        this.zzaKG = driveId;
        this.zzaMy = zzakoVar;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzahg.zza(this, parcel, i);
    }
}
