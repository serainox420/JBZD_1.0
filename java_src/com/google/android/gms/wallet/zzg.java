package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.identity.intents.model.UserAddress;
/* loaded from: classes2.dex */
public class zzg implements Parcelable.Creator<FullWallet> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(FullWallet fullWallet, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, fullWallet.zzbPS, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, fullWallet.zzbPT, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable) fullWallet.zzbPU, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, fullWallet.zzbPV, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, (Parcelable) fullWallet.zzbPW, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, (Parcelable) fullWallet.zzbPX, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, fullWallet.zzbPY, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, (Parcelable) fullWallet.zzbPZ, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, (Parcelable) fullWallet.zzbQa, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 11, (Parcelable[]) fullWallet.zzbQb, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 12, (Parcelable) fullWallet.zzbQc, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkb */
    public FullWallet createFromParcel(Parcel parcel) {
        PaymentMethodToken paymentMethodToken = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        InstrumentInfo[] instrumentInfoArr = null;
        UserAddress userAddress = null;
        UserAddress userAddress2 = null;
        String[] strArr = null;
        zza zzaVar = null;
        zza zzaVar2 = null;
        String str = null;
        ProxyCard proxyCard = null;
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
                    proxyCard = (ProxyCard) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, ProxyCard.CREATOR);
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
                    strArr = com.google.android.gms.common.internal.safeparcel.zzb.zzC(parcel, zzaX);
                    break;
                case 9:
                    userAddress2 = (UserAddress) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, UserAddress.CREATOR);
                    break;
                case 10:
                    userAddress = (UserAddress) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, UserAddress.CREATOR);
                    break;
                case 11:
                    instrumentInfoArr = (InstrumentInfo[]) com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX, InstrumentInfo.CREATOR);
                    break;
                case 12:
                    paymentMethodToken = (PaymentMethodToken) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, PaymentMethodToken.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new FullWallet(str3, str2, proxyCard, str, zzaVar2, zzaVar, strArr, userAddress2, userAddress, instrumentInfoArr, paymentMethodToken);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzox */
    public FullWallet[] newArray(int i) {
        return new FullWallet[i];
    }
}
