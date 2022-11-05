package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import java.util.ArrayList;
import java.util.Collection;
/* loaded from: classes.dex */
public final class MaskedWalletRequest extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<MaskedWalletRequest> CREATOR = new zzo();
    String zzUI;
    String zzbPM;
    String zzbPT;
    boolean zzbQS;
    boolean zzbQT;
    boolean zzbQU;
    String zzbQV;
    String zzbQW;
    boolean zzbQX;
    boolean zzbQY;
    CountrySpecification[] zzbQZ;
    Cart zzbQd;
    boolean zzbRa;
    boolean zzbRb;
    ArrayList<com.google.android.gms.identity.intents.model.CountrySpecification> zzbRc;
    PaymentMethodTokenizationParameters zzbRd;
    ArrayList<Integer> zzbRe;

    /* loaded from: classes.dex */
    public final class Builder {
        private Builder() {
        }

        public Builder addAllowedCardNetwork(int i) {
            if (MaskedWalletRequest.this.zzbRe == null) {
                MaskedWalletRequest.this.zzbRe = new ArrayList<>();
            }
            MaskedWalletRequest.this.zzbRe.add(Integer.valueOf(i));
            return this;
        }

        public Builder addAllowedCardNetworks(Collection<Integer> collection) {
            if (collection != null) {
                if (MaskedWalletRequest.this.zzbRe == null) {
                    MaskedWalletRequest.this.zzbRe = new ArrayList<>();
                }
                MaskedWalletRequest.this.zzbRe.addAll(collection);
            }
            return this;
        }

        public Builder addAllowedCountrySpecificationForShipping(com.google.android.gms.identity.intents.model.CountrySpecification countrySpecification) {
            if (MaskedWalletRequest.this.zzbRc == null) {
                MaskedWalletRequest.this.zzbRc = new ArrayList<>();
            }
            MaskedWalletRequest.this.zzbRc.add(countrySpecification);
            return this;
        }

        public Builder addAllowedCountrySpecificationsForShipping(Collection<com.google.android.gms.identity.intents.model.CountrySpecification> collection) {
            if (collection != null) {
                if (MaskedWalletRequest.this.zzbRc == null) {
                    MaskedWalletRequest.this.zzbRc = new ArrayList<>();
                }
                MaskedWalletRequest.this.zzbRc.addAll(collection);
            }
            return this;
        }

        public MaskedWalletRequest build() {
            return MaskedWalletRequest.this;
        }

        public Builder setAllowDebitCard(boolean z) {
            MaskedWalletRequest.this.zzbRb = z;
            return this;
        }

        public Builder setAllowPrepaidCard(boolean z) {
            MaskedWalletRequest.this.zzbRa = z;
            return this;
        }

        public Builder setCart(Cart cart) {
            MaskedWalletRequest.this.zzbQd = cart;
            return this;
        }

        public Builder setCountryCode(String str) {
            MaskedWalletRequest.this.zzUI = str;
            return this;
        }

        public Builder setCurrencyCode(String str) {
            MaskedWalletRequest.this.zzbPM = str;
            return this;
        }

        public Builder setEstimatedTotalPrice(String str) {
            MaskedWalletRequest.this.zzbQV = str;
            return this;
        }

        @Deprecated
        public Builder setIsBillingAgreement(boolean z) {
            MaskedWalletRequest.this.zzbQY = z;
            return this;
        }

        public Builder setMerchantName(String str) {
            MaskedWalletRequest.this.zzbQW = str;
            return this;
        }

        public Builder setMerchantTransactionId(String str) {
            MaskedWalletRequest.this.zzbPT = str;
            return this;
        }

        public Builder setPaymentMethodTokenizationParameters(PaymentMethodTokenizationParameters paymentMethodTokenizationParameters) {
            MaskedWalletRequest.this.zzbRd = paymentMethodTokenizationParameters;
            return this;
        }

        public Builder setPhoneNumberRequired(boolean z) {
            MaskedWalletRequest.this.zzbQS = z;
            return this;
        }

        public Builder setShippingAddressRequired(boolean z) {
            MaskedWalletRequest.this.zzbQT = z;
            return this;
        }

        @Deprecated
        public Builder setUseMinimalBillingAddress(boolean z) {
            MaskedWalletRequest.this.zzbQU = z;
            return this;
        }
    }

    MaskedWalletRequest() {
        this.zzbRa = true;
        this.zzbRb = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MaskedWalletRequest(String str, boolean z, boolean z2, boolean z3, String str2, String str3, String str4, Cart cart, boolean z4, boolean z5, CountrySpecification[] countrySpecificationArr, boolean z6, boolean z7, ArrayList<com.google.android.gms.identity.intents.model.CountrySpecification> arrayList, PaymentMethodTokenizationParameters paymentMethodTokenizationParameters, ArrayList<Integer> arrayList2, String str5) {
        this.zzbPT = str;
        this.zzbQS = z;
        this.zzbQT = z2;
        this.zzbQU = z3;
        this.zzbQV = str2;
        this.zzbPM = str3;
        this.zzbQW = str4;
        this.zzbQd = cart;
        this.zzbQX = z4;
        this.zzbQY = z5;
        this.zzbQZ = countrySpecificationArr;
        this.zzbRa = z6;
        this.zzbRb = z7;
        this.zzbRc = arrayList;
        this.zzbRd = paymentMethodTokenizationParameters;
        this.zzbRe = arrayList2;
        this.zzUI = str5;
    }

    public static Builder newBuilder() {
        MaskedWalletRequest maskedWalletRequest = new MaskedWalletRequest();
        maskedWalletRequest.getClass();
        return new Builder();
    }

    public boolean allowDebitCard() {
        return this.zzbRb;
    }

    public boolean allowPrepaidCard() {
        return this.zzbRa;
    }

    public ArrayList<Integer> getAllowedCardNetworks() {
        return this.zzbRe;
    }

    public ArrayList<com.google.android.gms.identity.intents.model.CountrySpecification> getAllowedCountrySpecificationsForShipping() {
        return this.zzbRc;
    }

    public CountrySpecification[] getAllowedShippingCountrySpecifications() {
        return this.zzbQZ;
    }

    public Cart getCart() {
        return this.zzbQd;
    }

    public String getCountryCode() {
        return this.zzUI;
    }

    public String getCurrencyCode() {
        return this.zzbPM;
    }

    public String getEstimatedTotalPrice() {
        return this.zzbQV;
    }

    public String getMerchantName() {
        return this.zzbQW;
    }

    public String getMerchantTransactionId() {
        return this.zzbPT;
    }

    public PaymentMethodTokenizationParameters getPaymentMethodTokenizationParameters() {
        return this.zzbRd;
    }

    @Deprecated
    public boolean isBillingAgreement() {
        return this.zzbQY;
    }

    public boolean isPhoneNumberRequired() {
        return this.zzbQS;
    }

    public boolean isShippingAddressRequired() {
        return this.zzbQT;
    }

    @Deprecated
    public boolean useMinimalBillingAddress() {
        return this.zzbQU;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzo.zza(this, parcel, i);
    }
}
