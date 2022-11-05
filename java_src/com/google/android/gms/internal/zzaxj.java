package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzaxj implements Parcelable.Creator<zzaxi> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzaxi zzaxiVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, zzaxiVar.getId());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, zzaxiVar.getType());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzaxiVar.getBytes(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable) zzaxiVar.zzOs(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzaxiVar.zzOt(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzaxiVar.zzOu());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, (Parcelable) zzaxiVar.zzOv(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzix */
    public zzaxi createFromParcel(Parcel parcel) {
        long j = 0;
        ParcelFileDescriptor parcelFileDescriptor = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        String str = null;
        ParcelFileDescriptor parcelFileDescriptor2 = null;
        byte[] bArr = null;
        long j2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    j2 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 2:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    bArr = com.google.android.gms.common.internal.safeparcel.zzb.zzt(parcel, zzaX);
                    break;
                case 4:
                    parcelFileDescriptor2 = (ParcelFileDescriptor) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, ParcelFileDescriptor.CREATOR);
                    break;
                case 5:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 7:
                    parcelFileDescriptor = (ParcelFileDescriptor) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, ParcelFileDescriptor.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzaxi(j2, i, bArr, parcelFileDescriptor2, str, j, parcelFileDescriptor);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzmm */
    public zzaxi[] newArray(int i) {
        return new zzaxi[i];
    }
}
