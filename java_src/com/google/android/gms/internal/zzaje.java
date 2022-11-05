package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.drive.DriveId;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzaje implements Parcelable.Creator<zzajd> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzajd zzajdVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzajdVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzajdVar.zzaKG, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzajdVar.zzaNT);
        com.google.android.gms.common.internal.safeparcel.zzc.zzb(parcel, 4, zzajdVar.zzaNU, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzajdVar.zzaNV);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, (Parcelable) zzajdVar.zzaNW, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzajdVar.zzaNX, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcC */
    public zzajd createFromParcel(Parcel parcel) {
        boolean z = false;
        String str = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        DataHolder dataHolder = null;
        ArrayList<String> arrayList = null;
        boolean z2 = false;
        DriveId driveId = null;
        int i = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    driveId = (DriveId) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DriveId.CREATOR);
                    break;
                case 3:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 4:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzE(parcel, zzaX);
                    break;
                case 5:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 6:
                    dataHolder = (DataHolder) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DataHolder.CREATOR);
                    break;
                case 7:
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
        return new zzajd(i, driveId, z2, arrayList, z, dataHolder, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfc */
    public zzajd[] newArray(int i) {
        return new zzajd[i];
    }
}
