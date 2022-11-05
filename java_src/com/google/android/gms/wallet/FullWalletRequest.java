package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
/* loaded from: classes2.dex */
public final class FullWalletRequest extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<FullWalletRequest> CREATOR = new zzh();
    String zzbPS;
    String zzbPT;
    Cart zzbQd;

    /* loaded from: classes2.dex */
    public final class Builder {
        private Builder() {
        }

        public FullWalletRequest build() {
            return FullWalletRequest.this;
        }

        public Builder setCart(Cart cart) {
            FullWalletRequest.this.zzbQd = cart;
            return this;
        }

        public Builder setGoogleTransactionId(String str) {
            FullWalletRequest.this.zzbPS = str;
            return this;
        }

        public Builder setMerchantTransactionId(String str) {
            FullWalletRequest.this.zzbPT = str;
            return this;
        }
    }

    FullWalletRequest() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FullWalletRequest(String str, String str2, Cart cart) {
        this.zzbPS = str;
        this.zzbPT = str2;
        this.zzbQd = cart;
    }

    public static Builder newBuilder() {
        FullWalletRequest fullWalletRequest = new FullWalletRequest();
        fullWalletRequest.getClass();
        return new Builder();
    }

    public Cart getCart() {
        return this.zzbQd;
    }

    public String getGoogleTransactionId() {
        return this.zzbPS;
    }

    public String getMerchantTransactionId() {
        return this.zzbPT;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzh.zza(this, parcel, i);
    }
}
