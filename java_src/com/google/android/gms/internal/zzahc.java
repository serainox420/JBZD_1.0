package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.metadata.internal.MetadataBundle;
/* loaded from: classes2.dex */
public class zzahc implements Parcelable.Creator<zzahb> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzahb zzahbVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzahbVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzahbVar.zzaMp, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) zzahbVar.zzaMq, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable) zzahbVar.zzaMr, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzahbVar.zzaLd);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzahbVar.zzaLc, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 7, zzahbVar.zzaMs);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 8, zzahbVar.zzaMt);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, zzahbVar.zzaMu);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, zzahbVar.zzaLh);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzck */
    public zzahb createFromParcel(Parcel parcel) {
        String str = null;
        boolean z = false;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        boolean z2 = true;
        int i = 0;
        int i2 = 0;
        boolean z3 = false;
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
                    z3 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 6:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 8:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 9:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 10:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzahb(i3, driveId, metadataBundle, zzcVar, z3, str, i2, i, z, z2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzeF */
    public zzahb[] newArray(int i) {
        return new zzahb[i];
    }
}
