package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.drive.DriveId;
/* loaded from: classes2.dex */
public class zzais implements Parcelable.Creator<zzair> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzair zzairVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzairVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzairVar.zzaMp, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzairVar.zzaNQ);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcy */
    public zzair createFromParcel(Parcel parcel) {
        boolean zzc;
        DriveId driveId;
        int i;
        boolean z = false;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        DriveId driveId2 = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    boolean z2 = z;
                    driveId = driveId2;
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    zzc = z2;
                    break;
                case 2:
                    DriveId driveId3 = (DriveId) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DriveId.CREATOR);
                    i = i2;
                    zzc = z;
                    driveId = driveId3;
                    break;
                case 3:
                    zzc = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    driveId = driveId2;
                    i = i2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    zzc = z;
                    driveId = driveId2;
                    i = i2;
                    break;
            }
            i2 = i;
            driveId2 = driveId;
            z = zzc;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzair(i2, driveId2, z);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzeY */
    public zzair[] newArray(int i) {
        return new zzair[i];
    }
}
