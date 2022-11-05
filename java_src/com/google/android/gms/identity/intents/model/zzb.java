package com.google.android.gms.identity.intents.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
/* loaded from: classes2.dex */
public class zzb implements Parcelable.Creator<UserAddress> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(UserAddress userAddress, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 2, userAddress.name, false);
        zzc.zza(parcel, 3, userAddress.zzbhv, false);
        zzc.zza(parcel, 4, userAddress.zzbhw, false);
        zzc.zza(parcel, 5, userAddress.zzbhx, false);
        zzc.zza(parcel, 6, userAddress.zzbhy, false);
        zzc.zza(parcel, 7, userAddress.zzbhz, false);
        zzc.zza(parcel, 8, userAddress.zzbhA, false);
        zzc.zza(parcel, 9, userAddress.zzbhB, false);
        zzc.zza(parcel, 10, userAddress.zzUI, false);
        zzc.zza(parcel, 11, userAddress.zzbhC, false);
        zzc.zza(parcel, 12, userAddress.zzbhD, false);
        zzc.zza(parcel, 13, userAddress.phoneNumber, false);
        zzc.zza(parcel, 14, userAddress.zzbhE);
        zzc.zza(parcel, 15, userAddress.zzbhF, false);
        zzc.zza(parcel, 16, userAddress.zzbhG, false);
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgr */
    public UserAddress createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
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
        boolean z = false;
        String str13 = null;
        String str14 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
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
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 15:
                    str13 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 16:
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
        return new UserAddress(str, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12, z, str13, str14);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjJ */
    public UserAddress[] newArray(int i) {
        return new UserAddress[i];
    }
}
