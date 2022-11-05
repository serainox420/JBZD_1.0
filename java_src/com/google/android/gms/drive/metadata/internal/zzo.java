package com.google.android.gms.drive.metadata.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.DriveId;
/* loaded from: classes2.dex */
public class zzo extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzo> CREATOR = new zzp();
    final String zzaKS;
    final long zzaKT;
    final int zzaKU;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzo(int i, String str, long j, int i2) {
        this.zzaiI = i;
        this.zzaKS = str;
        this.zzaKT = j;
        this.zzaKU = i2;
    }

    public zzo(String str, long j, int i) {
        this(1, str, j, i);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzp.zza(this, parcel, i);
    }

    public DriveId zzM(long j) {
        return new DriveId(this.zzaKS, this.zzaKT, j, this.zzaKU);
    }
}
