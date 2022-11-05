package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.drive.DriveSpace;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzaio implements Parcelable.Creator<zzain> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzain zzainVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzainVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzainVar.zzaNM, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, zzainVar.zzaNN);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, zzainVar.zzaLH, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzainVar.zzaNO);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcw */
    public zzain createFromParcel(Parcel parcel) {
        ArrayList arrayList = null;
        boolean z = false;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        com.google.android.gms.drive.zza zzaVar = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    zzaVar = (com.google.android.gms.drive.zza) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, com.google.android.gms.drive.zza.CREATOR);
                    break;
                case 3:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 4:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, DriveSpace.CREATOR);
                    break;
                case 5:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzain(i2, zzaVar, i, arrayList, z);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzeW */
    public zzain[] newArray(int i) {
        return new zzain[i];
    }
}
