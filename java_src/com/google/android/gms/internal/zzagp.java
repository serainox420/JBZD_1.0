package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.drive.DriveId;
/* loaded from: classes2.dex */
public class zzagp implements Parcelable.Creator<zzago> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzago zzagoVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzagoVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzagoVar.zzaKG, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, zzagoVar.zzaHE);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable) zzagoVar.zzaLE, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, (Parcelable) zzagoVar.zzaMe, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, (Parcelable) zzagoVar.zzaMf, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzce */
    public zzago createFromParcel(Parcel parcel) {
        int i = 0;
        com.google.android.gms.drive.events.zzp zzpVar = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        com.google.android.gms.drive.events.zzu zzuVar = null;
        com.google.android.gms.drive.events.zze zzeVar = null;
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
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 4:
                    zzeVar = (com.google.android.gms.drive.events.zze) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, com.google.android.gms.drive.events.zze.CREATOR);
                    break;
                case 5:
                    zzuVar = (com.google.android.gms.drive.events.zzu) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, com.google.android.gms.drive.events.zzu.CREATOR);
                    break;
                case 6:
                    zzpVar = (com.google.android.gms.drive.events.zzp) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, com.google.android.gms.drive.events.zzp.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzago(i2, driveId, i, zzeVar, zzuVar, zzpVar);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzez */
    public zzago[] newArray(int i) {
        return new zzago[i];
    }
}
