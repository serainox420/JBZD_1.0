package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.identity.intents.model.UserAddress;
/* loaded from: classes2.dex */
public class zzn implements Parcelable.Creator<MaskedWallet> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(MaskedWallet maskedWallet, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, maskedWallet.zzbPS, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, maskedWallet.zzbPT, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, maskedWallet.zzbPY, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, maskedWallet.zzbPV, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, (Parcelable) maskedWallet.zzbPW, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, (Parcelable) maskedWallet.zzbPX, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, (Parcelable[]) maskedWallet.zzbQP, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, (Parcelable[]) maskedWallet.zzbQQ, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, (Parcelable) maskedWallet.zzbPZ, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 11, (Parcelable) maskedWallet.zzbQa, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 12, (Parcelable[]) maskedWallet.zzbQb, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzki */
    public MaskedWallet createFromParcel(Parcel parcel) {
        InstrumentInfo[] instrumentInfoArr = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        UserAddress userAddress = null;
        UserAddress userAddress2 = null;
        OfferWalletObject[] offerWalletObjectArr = null;
        LoyaltyWalletObject[] loyaltyWalletObjectArr = null;
        zza zzaVar = null;
        zza zzaVar2 = null;
        String str = null;
        String[] strArr = null;
        String str2 = null;
        String str3 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    strArr = com.google.android.gms.common.internal.safeparcel.zzb.zzC(parcel, zzaX);
                    break;
                case 5:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    zzaVar2 = (zza) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zza.CREATOR);
                    break;
                case 7:
                    zzaVar = (zza) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zza.CREATOR);
                    break;
                case 8:
                    loyaltyWalletObjectArr = (LoyaltyWalletObject[]) com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX, LoyaltyWalletObject.CREATOR);
                    break;
                case 9:
                    offerWalletObjectArr = (OfferWalletObject[]) com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX, OfferWalletObject.CREATOR);
                    break;
                case 10:
                    userAddress2 = (UserAddress) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, UserAddress.CREATOR);
                    break;
                case 11:
                    userAddress = (UserAddress) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, UserAddress.CREATOR);
                    break;
                case 12:
                    instrumentInfoArr = (InstrumentInfo[]) com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX, InstrumentInfo.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new MaskedWallet(str3, str2, strArr, str, zzaVar2, zzaVar, loyaltyWalletObjectArr, offerWalletObjectArr, userAddress2, userAddress, instrumentInfoArr);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzoE */
    public MaskedWallet[] newArray(int i) {
        return new MaskedWallet[i];
    }
}
