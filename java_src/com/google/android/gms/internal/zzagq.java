package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.DriveId;
/* loaded from: classes2.dex */
public class zzagq extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzagq> CREATOR = new zzagr();
    final DriveId zzaKG;
    final String zzaLc;
    final com.google.android.gms.drive.zzm zzaMg;
    final boolean zzaMh;
    final String zzaMi;
    final boolean zzaMj;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzagq(int i, DriveId driveId, com.google.android.gms.drive.zzm zzmVar, boolean z, String str, boolean z2, String str2) {
        this.zzaiI = i;
        this.zzaKG = driveId;
        this.zzaMg = zzmVar;
        this.zzaMh = z;
        this.zzaMi = str;
        this.zzaMj = z2;
        this.zzaLc = str2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzagr.zza(this, parcel, i);
    }
}
