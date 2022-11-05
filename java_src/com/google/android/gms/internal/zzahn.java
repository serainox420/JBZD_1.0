package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
/* loaded from: classes2.dex */
public class zzahn implements Parcelable.Creator<zzahm> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzahm zzahmVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzahmVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzahmVar.zzaME, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) zzahmVar.zzaMC, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable) zzahmVar.zzaMr, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzahmVar.zzaMD, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzahmVar.zzaMj);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzahmVar.zzaLc, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 8, zzahmVar.zzaMF);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 9, zzahmVar.zzaMG);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, zzahmVar.zzaLf, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcp */
    public zzahm createFromParcel(Parcel parcel) {
        int i = 0;
        String str = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i2 = 0;
        String str2 = null;
        boolean z = false;
        Integer num = null;
        com.google.android.gms.drive.zzc zzcVar = null;
        MetadataBundle metadataBundle = null;
        DriveId driveId = null;
        int i3 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    driveId = (DriveId) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DriveId.CREATOR);
                    break;
                case 3:
                    metadataBundle = (MetadataBundle) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, MetadataBundle.CREATOR);
                    break;
                case 4:
                    zzcVar = (com.google.android.gms.drive.zzc) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, com.google.android.gms.drive.zzc.CREATOR);
                    break;
                case 5:
                    num = com.google.android.gms.common.internal.safeparcel.zzb.zzh(parcel, zzaX);
                    break;
                case 6:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 7:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 8:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 9:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 10:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzahm(i3, driveId, metadataBundle, zzcVar, num, z, str2, i2, i, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzeL */
    public zzahm[] newArray(int i) {
        return new zzahm[i];
    }
}
