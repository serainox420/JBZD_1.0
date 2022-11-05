package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.drive.DriveId;
/* loaded from: classes2.dex */
public class zzakk implements Parcelable.Creator<zzakj> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzakj zzakjVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzakjVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzakjVar.zzaMp, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, zzakjVar.zzaKF);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, zzakjVar.zzaOu);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcS */
    public zzakj createFromParcel(Parcel parcel) {
        int zzg;
        int i;
        DriveId driveId;
        int i2;
        int i3 = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        DriveId driveId2 = null;
        int i4 = 0;
        int i5 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    int i6 = i3;
                    i = i4;
                    driveId = driveId2;
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    zzg = i6;
                    break;
                case 2:
                    i2 = i5;
                    int i7 = i4;
                    driveId = (DriveId) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DriveId.CREATOR);
                    zzg = i3;
                    i = i7;
                    break;
                case 3:
                    driveId = driveId2;
                    i2 = i5;
                    int i8 = i3;
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    zzg = i8;
                    break;
                case 4:
                    zzg = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    i = i4;
                    driveId = driveId2;
                    i2 = i5;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    zzg = i3;
                    i = i4;
                    driveId = driveId2;
                    i2 = i5;
                    break;
            }
            i5 = i2;
            driveId2 = driveId;
            i4 = i;
            i3 = zzg;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzakj(i5, driveId2, i4, i3);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfs */
    public zzakj[] newArray(int i) {
        return new zzakj[i];
    }
}
