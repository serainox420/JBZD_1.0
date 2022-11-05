package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.drive.DriveId;
/* loaded from: classes2.dex */
public class zzakt implements Parcelable.Creator<zzaks> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzaks zzaksVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzaksVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzaksVar.zzaKG, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, zzaksVar.zzaHE);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable) zzaksVar.zzaMf, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcW */
    public zzaks createFromParcel(Parcel parcel) {
        com.google.android.gms.drive.events.zzp zzpVar;
        int i;
        DriveId driveId;
        int i2;
        com.google.android.gms.drive.events.zzp zzpVar2 = null;
        int i3 = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        DriveId driveId2 = null;
        int i4 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    com.google.android.gms.drive.events.zzp zzpVar3 = zzpVar2;
                    i = i3;
                    driveId = driveId2;
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    zzpVar = zzpVar3;
                    break;
                case 2:
                    i2 = i4;
                    int i5 = i3;
                    driveId = (DriveId) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DriveId.CREATOR);
                    zzpVar = zzpVar2;
                    i = i5;
                    break;
                case 3:
                    driveId = driveId2;
                    i2 = i4;
                    com.google.android.gms.drive.events.zzp zzpVar4 = zzpVar2;
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    zzpVar = zzpVar4;
                    break;
                case 4:
                    zzpVar = (com.google.android.gms.drive.events.zzp) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, com.google.android.gms.drive.events.zzp.CREATOR);
                    i = i3;
                    driveId = driveId2;
                    i2 = i4;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    zzpVar = zzpVar2;
                    i = i3;
                    driveId = driveId2;
                    i2 = i4;
                    break;
            }
            i4 = i2;
            driveId2 = driveId;
            i3 = i;
            zzpVar2 = zzpVar;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzaks(i4, driveId2, i3, zzpVar2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfw */
    public zzaks[] newArray(int i) {
        return new zzaks[i];
    }
}
