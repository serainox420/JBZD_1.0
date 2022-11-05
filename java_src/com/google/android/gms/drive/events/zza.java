package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.drive.DriveId;
/* loaded from: classes2.dex */
public class zza implements Parcelable.Creator<ChangeEvent> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(ChangeEvent changeEvent, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, changeEvent.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) changeEvent.zzaKG, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, changeEvent.zzaLD);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbU */
    public ChangeEvent createFromParcel(Parcel parcel) {
        int zzg;
        DriveId driveId;
        int i;
        int i2 = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        DriveId driveId2 = null;
        int i3 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    int i4 = i2;
                    driveId = driveId2;
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    zzg = i4;
                    break;
                case 2:
                    DriveId driveId3 = (DriveId) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DriveId.CREATOR);
                    i = i3;
                    zzg = i2;
                    driveId = driveId3;
                    break;
                case 3:
                    zzg = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    driveId = driveId2;
                    i = i3;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    zzg = i2;
                    driveId = driveId2;
                    i = i3;
                    break;
            }
            i3 = i;
            driveId2 = driveId;
            i2 = zzg;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new ChangeEvent(i3, driveId2, i2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzep */
    public ChangeEvent[] newArray(int i) {
        return new ChangeEvent[i];
    }
}
