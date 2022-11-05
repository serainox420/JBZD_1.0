package com.google.android.gms.vision.barcode;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.vision.barcode.Barcode;
/* loaded from: classes2.dex */
public class zze implements Parcelable.Creator<Barcode.ContactInfo> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Barcode.ContactInfo contactInfo, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, contactInfo.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) contactInfo.name, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, contactInfo.organization, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, contactInfo.title, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, (Parcelable[]) contactInfo.phones, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, (Parcelable[]) contactInfo.emails, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, contactInfo.urls, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, (Parcelable[]) contactInfo.addresses, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjD */
    public Barcode.ContactInfo createFromParcel(Parcel parcel) {
        Barcode.Address[] addressArr = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        String[] strArr = null;
        Barcode.Email[] emailArr = null;
        Barcode.Phone[] phoneArr = null;
        String str = null;
        String str2 = null;
        Barcode.PersonName personName = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    personName = (Barcode.PersonName) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Barcode.PersonName.CREATOR);
                    break;
                case 3:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    phoneArr = (Barcode.Phone[]) com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX, Barcode.Phone.CREATOR);
                    break;
                case 6:
                    emailArr = (Barcode.Email[]) com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX, Barcode.Email.CREATOR);
                    break;
                case 7:
                    strArr = com.google.android.gms.common.internal.safeparcel.zzb.zzC(parcel, zzaX);
                    break;
                case 8:
                    addressArr = (Barcode.Address[]) com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX, Barcode.Address.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new Barcode.ContactInfo(i, personName, str2, str, phoneArr, emailArr, strArr, addressArr);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zznX */
    public Barcode.ContactInfo[] newArray(int i) {
        return new Barcode.ContactInfo[i];
    }
}
