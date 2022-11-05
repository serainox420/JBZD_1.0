package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zze extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zze> CREATOR = new zzf();
    LoyaltyWalletObject zzbPP;
    OfferWalletObject zzbPQ;
    GiftCardWalletObject zzbPR;

    zze() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zze(LoyaltyWalletObject loyaltyWalletObject, OfferWalletObject offerWalletObject, GiftCardWalletObject giftCardWalletObject) {
        this.zzbPP = loyaltyWalletObject;
        this.zzbPQ = offerWalletObject;
        this.zzbPR = giftCardWalletObject;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzf.zza(this, parcel, i);
    }
}
