package com.google.android.gms.vision.barcode;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.vision.barcode.Barcode;
/* loaded from: classes2.dex */
public class zzi implements Parcelable.Creator<Barcode.PersonName> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(Barcode.PersonName personName, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, personName.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, personName.formattedName, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, personName.pronunciation, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, personName.prefix, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, personName.first, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, personName.middle, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, personName.last, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, personName.suffix, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjH */
    public Barcode.PersonName createFromParcel(Parcel parcel) {
        String str = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    str7 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str6 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    str5 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 8:
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
        return new Barcode.PersonName(i, str7, str6, str5, str4, str3, str2, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzob */
    public Barcode.PersonName[] newArray(int i) {
        return new Barcode.PersonName[i];
    }
}
