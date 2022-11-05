package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.drive.DriveId;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzagy implements Parcelable.Creator<zzagx> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzagx zzagxVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzagxVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzagxVar.zzaMl, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, zzagxVar.zzaMm, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, zzagxVar.zzaMn, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzci */
    public zzagx createFromParcel(Parcel parcel) {
        ArrayList zzc;
        ArrayList arrayList;
        DriveId driveId;
        int i;
        ArrayList arrayList2 = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i2 = 0;
        ArrayList arrayList3 = null;
        DriveId driveId2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    ArrayList arrayList4 = arrayList2;
                    arrayList = arrayList3;
                    driveId = driveId2;
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    zzc = arrayList4;
                    break;
                case 2:
                    i = i2;
                    ArrayList arrayList5 = arrayList3;
                    driveId = (DriveId) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DriveId.CREATOR);
                    zzc = arrayList2;
                    arrayList = arrayList5;
                    break;
                case 3:
                    driveId = driveId2;
                    i = i2;
                    ArrayList arrayList6 = arrayList2;
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, DriveId.CREATOR);
                    zzc = arrayList6;
                    break;
                case 4:
                    zzc = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, DriveId.CREATOR);
                    arrayList = arrayList3;
                    driveId = driveId2;
                    i = i2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    zzc = arrayList2;
                    arrayList = arrayList3;
                    driveId = driveId2;
                    i = i2;
                    break;
            }
            i2 = i;
            driveId2 = driveId;
            arrayList3 = arrayList;
            arrayList2 = zzc;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzagx(i2, driveId2, arrayList3, arrayList2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzeD */
    public zzagx[] newArray(int i) {
        return new zzagx[i];
    }
}
