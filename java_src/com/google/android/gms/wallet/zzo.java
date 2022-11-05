package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public class zzo implements Parcelable.Creator<MaskedWalletRequest> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(MaskedWalletRequest maskedWalletRequest, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, maskedWalletRequest.zzbPT, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, maskedWalletRequest.zzbQS);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, maskedWalletRequest.zzbQT);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, maskedWalletRequest.zzbQU);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, maskedWalletRequest.zzbQV, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, maskedWalletRequest.zzbPM, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, maskedWalletRequest.zzbQW, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, (Parcelable) maskedWalletRequest.zzbQd, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, maskedWalletRequest.zzbQX);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 11, maskedWalletRequest.zzbQY);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 12, (Parcelable[]) maskedWalletRequest.zzbQZ, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 13, maskedWalletRequest.zzbRa);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 14, maskedWalletRequest.zzbRb);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 15, maskedWalletRequest.zzbRc, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 16, (Parcelable) maskedWalletRequest.zzbRd, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 17, (List<Integer>) maskedWalletRequest.zzbRe, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 18, maskedWalletRequest.zzUI, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkj */
    public MaskedWalletRequest createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        Cart cart = null;
        boolean z4 = false;
        boolean z5 = false;
        CountrySpecification[] countrySpecificationArr = null;
        boolean z6 = true;
        boolean z7 = true;
        ArrayList arrayList = null;
        PaymentMethodTokenizationParameters paymentMethodTokenizationParameters = null;
        ArrayList<Integer> arrayList2 = null;
        String str5 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 4:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 5:
                    z3 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 6:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 8:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 9:
                    cart = (Cart) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Cart.CREATOR);
                    break;
                case 10:
                    z4 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 11:
                    z5 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 12:
                    countrySpecificationArr = (CountrySpecification[]) com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX, CountrySpecification.CREATOR);
                    break;
                case 13:
                    z6 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 14:
                    z7 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 15:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, com.google.android.gms.identity.intents.model.CountrySpecification.CREATOR);
                    break;
                case 16:
                    paymentMethodTokenizationParameters = (PaymentMethodTokenizationParameters) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, PaymentMethodTokenizationParameters.CREATOR);
                    break;
                case 17:
                    arrayList2 = com.google.android.gms.common.internal.safeparcel.zzb.zzD(parcel, zzaX);
                    break;
                case 18:
                    str5 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new MaskedWalletRequest(str, z, z2, z3, str2, str3, str4, cart, z4, z5, countrySpecificationArr, z6, z7, arrayList, paymentMethodTokenizationParameters, arrayList2, str5);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzoF */
    public MaskedWalletRequest[] newArray(int i) {
        return new MaskedWalletRequest[i];
    }
}
