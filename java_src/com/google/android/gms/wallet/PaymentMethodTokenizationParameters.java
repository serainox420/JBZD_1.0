package com.google.android.gms.wallet;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.zzac;
/* loaded from: classes2.dex */
public final class PaymentMethodTokenizationParameters extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<PaymentMethodTokenizationParameters> CREATOR = new zzs();
    int zzbRj;
    Bundle zzbRk;

    /* loaded from: classes2.dex */
    public final class Builder {
        private Builder() {
        }

        public Builder addParameter(String str, String str2) {
            zzac.zzh(str, "Tokenization parameter name must not be empty");
            zzac.zzh(str2, "Tokenization parameter value must not be empty");
            PaymentMethodTokenizationParameters.this.zzbRk.putString(str, str2);
            return this;
        }

        public PaymentMethodTokenizationParameters build() {
            return PaymentMethodTokenizationParameters.this;
        }

        public Builder setPaymentMethodTokenizationType(int i) {
            PaymentMethodTokenizationParameters.this.zzbRj = i;
            return this;
        }
    }

    private PaymentMethodTokenizationParameters() {
        this.zzbRk = new Bundle();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PaymentMethodTokenizationParameters(int i, Bundle bundle) {
        this.zzbRk = new Bundle();
        this.zzbRj = i;
        this.zzbRk = bundle;
    }

    public static Builder newBuilder() {
        PaymentMethodTokenizationParameters paymentMethodTokenizationParameters = new PaymentMethodTokenizationParameters();
        paymentMethodTokenizationParameters.getClass();
        return new Builder();
    }

    public Bundle getParameters() {
        return new Bundle(this.zzbRk);
    }

    public int getPaymentMethodTokenizationType() {
        return this.zzbRj;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzs.zza(this, parcel, i);
    }
}
