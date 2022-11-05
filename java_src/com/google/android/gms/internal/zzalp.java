package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.DriveId;
/* loaded from: classes2.dex */
public class zzalp extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzalp> CREATOR = new zzalq();
    final DriveId zzaKG;
    final String zzaLc;
    final String zzaLq;
    final boolean zzaMj;
    final int zzaOB;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzalp(int i, DriveId driveId, String str, int i2, boolean z, String str2) {
        this.zzaiI = i;
        this.zzaKG = driveId;
        this.zzaLq = str;
        this.zzaOB = i2;
        this.zzaMj = z;
        this.zzaLc = str2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzalq.zza(this, parcel, i);
    }
}
