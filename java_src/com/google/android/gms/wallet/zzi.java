package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.wallet.wobs.CommonWalletObject;
/* loaded from: classes2.dex */
public class zzi implements Parcelable.Creator<GiftCardWalletObject> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(GiftCardWalletObject giftCardWalletObject, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) giftCardWalletObject.zzbQf, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, giftCardWalletObject.zzbQg, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, giftCardWalletObject.pin, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, giftCardWalletObject.zzbQh, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, giftCardWalletObject.zzbQi);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, giftCardWalletObject.zzbQj, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, giftCardWalletObject.zzbQk);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, giftCardWalletObject.zzbQl, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkd */
    public GiftCardWalletObject createFromParcel(Parcel parcel) {
        long j = 0;
        String str = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str2 = null;
        long j2 = 0;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        CommonWalletObject commonWalletObject = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    commonWalletObject = (CommonWalletObject) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, CommonWalletObject.CREATOR);
                    break;
                case 3:
                    str5 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    j2 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 7:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 8:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 9:
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
        return new GiftCardWalletObject(commonWalletObject, str5, str4, str3, j2, str2, j, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzoz */
    public GiftCardWalletObject[] newArray(int i) {
        return new GiftCardWalletObject[i];
    }
}
