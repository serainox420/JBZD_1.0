package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzd implements Parcelable.Creator<zzc> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzc zzcVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzcVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzcVar.zzaEr, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, zzcVar.zzaKE);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, zzcVar.zzaKF);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, (Parcelable) zzcVar.zzaKG, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzcVar.zzaKH);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, zzcVar.zzxB, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbN */
    public zzc createFromParcel(Parcel parcel) {
        String str = null;
        boolean z = false;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        DriveId driveId = null;
        int i = 0;
        int i2 = 0;
        ParcelFileDescriptor parcelFileDescriptor = null;
        int i3 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    parcelFileDescriptor = (ParcelFileDescriptor) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, ParcelFileDescriptor.CREATOR);
                    break;
                case 3:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 4:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 5:
                    driveId = (DriveId) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DriveId.CREATOR);
                    break;
                case 6:
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
                case 7:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 8:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzc(i3, parcelFileDescriptor, i2, i, driveId, z, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzec */
    public zzc[] newArray(int i) {
        return new zzc[i];
    }
}
