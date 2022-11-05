package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.ParcelUuid;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzayc implements Parcelable.Creator<zzayb> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzayb zzaybVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzaybVar.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable) zzaybVar.getServiceUuid(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, (Parcelable) zzaybVar.getServiceUuidMask(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, (Parcelable) zzaybVar.getServiceDataUuid(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzaybVar.getServiceData(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, zzaybVar.getServiceDataMask(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 9, zzaybVar.getManufacturerId());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, zzaybVar.getManufacturerData(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 11, zzaybVar.getManufacturerDataMask(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zziJ */
    public zzayb createFromParcel(Parcel parcel) {
        int i = 0;
        byte[] bArr = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        byte[] bArr2 = null;
        byte[] bArr3 = null;
        byte[] bArr4 = null;
        ParcelUuid parcelUuid = null;
        ParcelUuid parcelUuid2 = null;
        ParcelUuid parcelUuid3 = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                case 3:
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
                case 4:
                    parcelUuid3 = (ParcelUuid) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, ParcelUuid.CREATOR);
                    break;
                case 5:
                    parcelUuid2 = (ParcelUuid) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, ParcelUuid.CREATOR);
                    break;
                case 6:
                    parcelUuid = (ParcelUuid) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, ParcelUuid.CREATOR);
                    break;
                case 7:
                    bArr4 = com.google.android.gms.common.internal.safeparcel.zzb.zzt(parcel, zzaX);
                    break;
                case 8:
                    bArr3 = com.google.android.gms.common.internal.safeparcel.zzb.zzt(parcel, zzaX);
                    break;
                case 9:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 10:
                    bArr2 = com.google.android.gms.common.internal.safeparcel.zzb.zzt(parcel, zzaX);
                    break;
                case 11:
                    bArr = com.google.android.gms.common.internal.safeparcel.zzb.zzt(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzayb(i2, parcelUuid3, parcelUuid2, parcelUuid, bArr4, bArr3, i, bArr2, bArr);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzmD */
    public zzayb[] newArray(int i) {
        return new zzayb[i];
    }
}
