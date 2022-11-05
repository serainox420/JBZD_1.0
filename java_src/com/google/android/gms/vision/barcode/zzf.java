package com.google.android.gms.vision.barcode;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.vision.barcode.Barcode;
/* loaded from: classes2.dex */
public class zzf implements Parcelable.Creator<Barcode.DriverLicense> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Barcode.DriverLicense driverLicense, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, driverLicense.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, driverLicense.documentType, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, driverLicense.firstName, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, driverLicense.middleName, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, driverLicense.lastName, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, driverLicense.gender, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, driverLicense.addressStreet, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, driverLicense.addressCity, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, driverLicense.addressState, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, driverLicense.addressZip, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 11, driverLicense.licenseNumber, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 12, driverLicense.issueDate, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 13, driverLicense.expiryDate, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 14, driverLicense.birthDate, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 15, driverLicense.issuingCountry, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjE */
    public Barcode.DriverLicense createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        String str11 = null;
        String str12 = null;
        String str13 = null;
        String str14 = null;
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
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    str5 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    str6 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 8:
                    str7 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 9:
                    str8 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 10:
                    str9 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 11:
                    str10 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 12:
                    str11 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 13:
                    str12 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 14:
                    str13 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 15:
                    str14 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new Barcode.DriverLicense(i, str, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12, str13, str14);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zznY */
    public Barcode.DriverLicense[] newArray(int i) {
        return new Barcode.DriverLicense[i];
    }
}
