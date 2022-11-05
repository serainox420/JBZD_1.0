package com.google.android.gms.wallet.fragment;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.MaskedWalletRequest;
/* loaded from: classes2.dex */
public class zza implements Parcelable.Creator<WalletFragmentInitParams> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(WalletFragmentInitParams walletFragmentInitParams, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, walletFragmentInitParams.getAccountName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) walletFragmentInitParams.getMaskedWalletRequest(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, walletFragmentInitParams.getMaskedWalletRequestCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, (Parcelable) walletFragmentInitParams.getMaskedWallet(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzky */
    public WalletFragmentInitParams createFromParcel(Parcel parcel) {
        MaskedWallet maskedWallet;
        int i;
        MaskedWalletRequest maskedWalletRequest;
        String str;
        MaskedWallet maskedWallet2 = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i2 = -1;
        MaskedWalletRequest maskedWalletRequest2 = null;
        String str2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    MaskedWallet maskedWallet3 = maskedWallet2;
                    i = i2;
                    maskedWalletRequest = maskedWalletRequest2;
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    maskedWallet = maskedWallet3;
                    break;
                case 3:
                    str = str2;
                    int i3 = i2;
                    maskedWalletRequest = (MaskedWalletRequest) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, MaskedWalletRequest.CREATOR);
                    maskedWallet = maskedWallet2;
                    i = i3;
                    break;
                case 4:
                    maskedWalletRequest = maskedWalletRequest2;
                    str = str2;
                    MaskedWallet maskedWallet4 = maskedWallet2;
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    maskedWallet = maskedWallet4;
                    break;
                case 5:
                    maskedWallet = (MaskedWallet) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, MaskedWallet.CREATOR);
                    i = i2;
                    maskedWalletRequest = maskedWalletRequest2;
                    str = str2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    maskedWallet = maskedWallet2;
                    i = i2;
                    maskedWalletRequest = maskedWalletRequest2;
                    str = str2;
                    break;
            }
            str2 = str;
            maskedWalletRequest2 = maskedWalletRequest;
            i2 = i;
            maskedWallet2 = maskedWallet;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new WalletFragmentInitParams(str2, maskedWalletRequest2, i2, maskedWallet2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzoU */
    public WalletFragmentInitParams[] newArray(int i) {
        return new WalletFragmentInitParams[i];
    }
}
