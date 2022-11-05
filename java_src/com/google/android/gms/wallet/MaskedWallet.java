package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.identity.intents.model.UserAddress;
/* loaded from: classes.dex */
public final class MaskedWallet extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<MaskedWallet> CREATOR = new zzn();
    String zzbPS;
    String zzbPT;
    String zzbPV;
    zza zzbPW;
    zza zzbPX;
    String[] zzbPY;
    UserAddress zzbPZ;
    LoyaltyWalletObject[] zzbQP;
    OfferWalletObject[] zzbQQ;
    UserAddress zzbQa;
    InstrumentInfo[] zzbQb;

    /* loaded from: classes.dex */
    public final class Builder {
        private Builder() {
        }

        public MaskedWallet build() {
            return MaskedWallet.this;
        }

        public Builder setBuyerBillingAddress(UserAddress userAddress) {
            MaskedWallet.this.zzbPZ = userAddress;
            return this;
        }

        public Builder setBuyerShippingAddress(UserAddress userAddress) {
            MaskedWallet.this.zzbQa = userAddress;
            return this;
        }

        public Builder setEmail(String str) {
            MaskedWallet.this.zzbPV = str;
            return this;
        }

        public Builder setGoogleTransactionId(String str) {
            MaskedWallet.this.zzbPS = str;
            return this;
        }

        public Builder setInstrumentInfos(InstrumentInfo[] instrumentInfoArr) {
            MaskedWallet.this.zzbQb = instrumentInfoArr;
            return this;
        }

        public Builder setMerchantTransactionId(String str) {
            MaskedWallet.this.zzbPT = str;
            return this;
        }

        public Builder setPaymentDescriptions(String[] strArr) {
            MaskedWallet.this.zzbPY = strArr;
            return this;
        }

        @Deprecated
        public Builder zza(LoyaltyWalletObject[] loyaltyWalletObjectArr) {
            MaskedWallet.this.zzbQP = loyaltyWalletObjectArr;
            return this;
        }

        @Deprecated
        public Builder zza(OfferWalletObject[] offerWalletObjectArr) {
            MaskedWallet.this.zzbQQ = offerWalletObjectArr;
            return this;
        }
    }

    private MaskedWallet() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MaskedWallet(String str, String str2, String[] strArr, String str3, zza zzaVar, zza zzaVar2, LoyaltyWalletObject[] loyaltyWalletObjectArr, OfferWalletObject[] offerWalletObjectArr, UserAddress userAddress, UserAddress userAddress2, InstrumentInfo[] instrumentInfoArr) {
        this.zzbPS = str;
        this.zzbPT = str2;
        this.zzbPY = strArr;
        this.zzbPV = str3;
        this.zzbPW = zzaVar;
        this.zzbPX = zzaVar2;
        this.zzbQP = loyaltyWalletObjectArr;
        this.zzbQQ = offerWalletObjectArr;
        this.zzbPZ = userAddress;
        this.zzbQa = userAddress2;
        this.zzbQb = instrumentInfoArr;
    }

    public static Builder newBuilderFrom(MaskedWallet maskedWallet) {
        zzac.zzw(maskedWallet);
        return zzTX().setGoogleTransactionId(maskedWallet.getGoogleTransactionId()).setMerchantTransactionId(maskedWallet.getMerchantTransactionId()).setPaymentDescriptions(maskedWallet.getPaymentDescriptions()).setInstrumentInfos(maskedWallet.getInstrumentInfos()).setEmail(maskedWallet.getEmail()).zza(maskedWallet.zzTY()).zza(maskedWallet.zzTZ()).setBuyerBillingAddress(maskedWallet.getBuyerBillingAddress()).setBuyerShippingAddress(maskedWallet.getBuyerShippingAddress());
    }

    public static Builder zzTX() {
        MaskedWallet maskedWallet = new MaskedWallet();
        maskedWallet.getClass();
        return new Builder();
    }

    public UserAddress getBuyerBillingAddress() {
        return this.zzbPZ;
    }

    public UserAddress getBuyerShippingAddress() {
        return this.zzbQa;
    }

    public String getEmail() {
        return this.zzbPV;
    }

    public String getGoogleTransactionId() {
        return this.zzbPS;
    }

    public InstrumentInfo[] getInstrumentInfos() {
        return this.zzbQb;
    }

    public String getMerchantTransactionId() {
        return this.zzbPT;
    }

    public String[] getPaymentDescriptions() {
        return this.zzbPY;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzn.zza(this, parcel, i);
    }

    @Deprecated
    public LoyaltyWalletObject[] zzTY() {
        return this.zzbQP;
    }

    @Deprecated
    public OfferWalletObject[] zzTZ() {
        return this.zzbQQ;
    }
}
