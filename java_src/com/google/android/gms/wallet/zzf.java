package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzf implements Parcelable.Creator<zze> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zze zzeVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzeVar.zzbPP, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) zzeVar.zzbPQ, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable) zzeVar.zzbPR, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzka */
    public zze createFromParcel(Parcel parcel) {
        GiftCardWalletObject giftCardWalletObject;
        OfferWalletObject offerWalletObject;
        LoyaltyWalletObject loyaltyWalletObject;
        GiftCardWalletObject giftCardWalletObject2 = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        OfferWalletObject offerWalletObject2 = null;
        LoyaltyWalletObject loyaltyWalletObject2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    GiftCardWalletObject giftCardWalletObject3 = giftCardWalletObject2;
                    offerWalletObject = offerWalletObject2;
                    loyaltyWalletObject = (LoyaltyWalletObject) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, LoyaltyWalletObject.CREATOR);
                    giftCardWalletObject = giftCardWalletObject3;
                    break;
                case 3:
                    OfferWalletObject offerWalletObject3 = (OfferWalletObject) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, OfferWalletObject.CREATOR);
                    loyaltyWalletObject = loyaltyWalletObject2;
                    giftCardWalletObject = giftCardWalletObject2;
                    offerWalletObject = offerWalletObject3;
                    break;
                case 4:
                    giftCardWalletObject = (GiftCardWalletObject) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, GiftCardWalletObject.CREATOR);
                    offerWalletObject = offerWalletObject2;
                    loyaltyWalletObject = loyaltyWalletObject2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    giftCardWalletObject = giftCardWalletObject2;
                    offerWalletObject = offerWalletObject2;
                    loyaltyWalletObject = loyaltyWalletObject2;
                    break;
            }
            loyaltyWalletObject2 = loyaltyWalletObject;
            offerWalletObject2 = offerWalletObject;
            giftCardWalletObject2 = giftCardWalletObject;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zze(loyaltyWalletObject2, offerWalletObject2, giftCardWalletObject2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzow */
    public zze[] newArray(int i) {
        return new zze[i];
    }
}
