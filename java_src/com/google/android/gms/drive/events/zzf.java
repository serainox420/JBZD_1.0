package com.google.android.gms.drive.events;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.drive.DriveSpace;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzf implements Parcelable.Creator<zze> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zze zzeVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzeVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, zzeVar.zzaLF);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzeVar.zzaLG);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, zzeVar.zzaLH, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbW */
    public zze createFromParcel(Parcel parcel) {
        boolean z = false;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        ArrayList arrayList = null;
        int i = 0;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 4:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, DriveSpace.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zze(i2, i, z, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzer */
    public zze[] newArray(int i) {
        return new zze[i];
    }
}
