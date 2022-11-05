package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.drive.query.internal.FilterHolder;
/* loaded from: classes2.dex */
public class zzakn implements Parcelable.Creator<zzakm> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzakm zzakmVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzakmVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzakmVar.zzamJ, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzakmVar.zzaLn, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable) zzakmVar.zzaLp, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, (Parcelable) zzakmVar.zzaOw, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcT */
    public zzakm createFromParcel(Parcel parcel) {
        FilterHolder filterHolder = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        DriveId driveId = null;
        String[] strArr = null;
        String str = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    strArr = com.google.android.gms.common.internal.safeparcel.zzb.zzC(parcel, zzaX);
                    break;
                case 4:
                    driveId = (DriveId) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DriveId.CREATOR);
                    break;
                case 5:
                    filterHolder = (FilterHolder) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, FilterHolder.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzakm(i, str, strArr, driveId, filterHolder);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzft */
    public zzakm[] newArray(int i) {
        return new zzakm[i];
    }
}
