package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.drive.DriveId;
/* loaded from: classes2.dex */
public class zzalq implements Parcelable.Creator<zzalp> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzalp zzalpVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzalpVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzalpVar.zzaKG, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzalpVar.zzaLq, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, zzalpVar.zzaOB);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzalpVar.zzaMj);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzalpVar.zzaLc, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdh */
    public zzalp createFromParcel(Parcel parcel) {
        String str = null;
        boolean z = false;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        String str2 = null;
        DriveId driveId = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    driveId = (DriveId) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DriveId.CREATOR);
                    break;
                case 3:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 5:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 6:
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
        return new zzalp(i2, driveId, str2, i, z, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfH */
    public zzalp[] newArray(int i) {
        return new zzalp[i];
    }
}
