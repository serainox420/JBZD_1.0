package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
/* loaded from: classes2.dex */
public class zzahm extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzahm> CREATOR = new zzahn();
    final String zzaLc;
    final String zzaLf;
    final MetadataBundle zzaMC;
    final Integer zzaMD;
    final DriveId zzaME;
    final int zzaMF;
    final int zzaMG;
    final boolean zzaMj;
    final com.google.android.gms.drive.zzc zzaMr;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzahm(int i, DriveId driveId, MetadataBundle metadataBundle, com.google.android.gms.drive.zzc zzcVar, Integer num, boolean z, String str, int i2, int i3, String str2) {
        if (zzcVar != null && i3 != 0) {
            com.google.android.gms.common.internal.zzac.zzb(zzcVar.getRequestId() == i3, "inconsistent contents reference");
        }
        if ((num == null || num.intValue() == 0) && zzcVar == null && i3 == 0) {
            throw new IllegalArgumentException("Need a valid contents");
        }
        this.zzaiI = i;
        this.zzaME = (DriveId) com.google.android.gms.common.internal.zzac.zzw(driveId);
        this.zzaMC = (MetadataBundle) com.google.android.gms.common.internal.zzac.zzw(metadataBundle);
        this.zzaMr = zzcVar;
        this.zzaMD = num;
        this.zzaLc = str;
        this.zzaMF = i2;
        this.zzaMj = z;
        this.zzaMG = i3;
        this.zzaLf = str2;
    }

    public zzahm(DriveId driveId, MetadataBundle metadataBundle, int i, int i2, com.google.android.gms.drive.zzk zzkVar) {
        this(2, driveId, metadataBundle, null, Integer.valueOf(i2), zzkVar.zzAv(), zzkVar.zzAu(), zzkVar.zzAw(), i, zzkVar.zzAy());
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzahn.zza(this, parcel, i);
    }
}
