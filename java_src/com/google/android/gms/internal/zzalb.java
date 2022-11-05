package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.drive.DriveId;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzalb implements Parcelable.Creator<zzala> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzala zzalaVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzalaVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzalaVar.zzaMl, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, zzalaVar.zzaOz, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzda */
    public zzala createFromParcel(Parcel parcel) {
        ArrayList zzc;
        DriveId driveId;
        int i;
        ArrayList arrayList = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i2 = 0;
        DriveId driveId2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    ArrayList arrayList2 = arrayList;
                    driveId = driveId2;
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    zzc = arrayList2;
                    break;
                case 2:
                    DriveId driveId3 = (DriveId) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DriveId.CREATOR);
                    i = i2;
                    zzc = arrayList;
                    driveId = driveId3;
                    break;
                case 3:
                    zzc = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, DriveId.CREATOR);
                    driveId = driveId2;
                    i = i2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    zzc = arrayList;
                    driveId = driveId2;
                    i = i2;
                    break;
            }
            i2 = i;
            driveId2 = driveId;
            arrayList = zzc;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzala(i2, driveId2, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfA */
    public zzala[] newArray(int i) {
        return new zzala[i];
    }
}
