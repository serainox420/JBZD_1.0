package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.maps.model.LatLng;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzm implements Parcelable.Creator<LoyaltyWalletObject> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(LoyaltyWalletObject loyaltyWalletObject, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, loyaltyWalletObject.zzkl, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, loyaltyWalletObject.zzbQw, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, loyaltyWalletObject.zzbQx, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, loyaltyWalletObject.zzbQy, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, loyaltyWalletObject.zzaJT, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, loyaltyWalletObject.zzbQz, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, loyaltyWalletObject.zzbQA, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, loyaltyWalletObject.zzbQB, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, loyaltyWalletObject.zzbQC, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 11, loyaltyWalletObject.zzbQD, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 12, loyaltyWalletObject.state);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 13, loyaltyWalletObject.zzbQE, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 14, (Parcelable) loyaltyWalletObject.zzbQF, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 15, loyaltyWalletObject.zzbQG, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 16, loyaltyWalletObject.zzbQH, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 17, loyaltyWalletObject.zzbQI, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 18, loyaltyWalletObject.zzbQJ, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 19, loyaltyWalletObject.zzbQK);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 20, loyaltyWalletObject.zzbQL, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 21, loyaltyWalletObject.zzbQM, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 22, loyaltyWalletObject.zzbQN, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 23, (Parcelable) loyaltyWalletObject.zzbQO, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkh */
    public LoyaltyWalletObject createFromParcel(Parcel parcel) {
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
        int i = 0;
        ArrayList zzyY = com.google.android.gms.common.util.zzb.zzyY();
        com.google.android.gms.wallet.wobs.zzl zzlVar = null;
        ArrayList zzyY2 = com.google.android.gms.common.util.zzb.zzyY();
        String str11 = null;
        String str12 = null;
        ArrayList zzyY3 = com.google.android.gms.common.util.zzb.zzyY();
        boolean z = false;
        ArrayList zzyY4 = com.google.android.gms.common.util.zzb.zzyY();
        ArrayList zzyY5 = com.google.android.gms.common.util.zzb.zzyY();
        ArrayList zzyY6 = com.google.android.gms.common.util.zzb.zzyY();
        com.google.android.gms.wallet.wobs.zzf zzfVar = null;
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
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 13:
                    zzyY = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, com.google.android.gms.wallet.wobs.zzp.CREATOR);
                    break;
                case 14:
                    zzlVar = (com.google.android.gms.wallet.wobs.zzl) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, com.google.android.gms.wallet.wobs.zzl.CREATOR);
                    break;
                case 15:
                    zzyY2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, LatLng.CREATOR);
                    break;
                case 16:
                    str11 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 17:
                    str12 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 18:
                    zzyY3 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, com.google.android.gms.wallet.wobs.zzd.CREATOR);
                    break;
                case 19:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 20:
                    zzyY4 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, com.google.android.gms.wallet.wobs.zzn.CREATOR);
                    break;
                case 21:
                    zzyY5 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, com.google.android.gms.wallet.wobs.zzj.CREATOR);
                    break;
                case 22:
                    zzyY6 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, com.google.android.gms.wallet.wobs.zzn.CREATOR);
                    break;
                case 23:
                    zzfVar = (com.google.android.gms.wallet.wobs.zzf) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, com.google.android.gms.wallet.wobs.zzf.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new LoyaltyWalletObject(str, str2, str3, str4, str5, str6, str7, str8, str9, str10, i, zzyY, zzlVar, zzyY2, str11, str12, zzyY3, z, zzyY4, zzyY5, zzyY6, zzfVar);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzoD */
    public LoyaltyWalletObject[] newArray(int i) {
        return new LoyaltyWalletObject[i];
    }
}
