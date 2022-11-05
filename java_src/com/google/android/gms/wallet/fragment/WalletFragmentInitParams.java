package com.google.android.gms.wallet.fragment;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.MaskedWalletRequest;
/* loaded from: classes2.dex */
public final class WalletFragmentInitParams extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<WalletFragmentInitParams> CREATOR = new zza();
    private String zzaiu;
    private MaskedWalletRequest zzbRT;
    private MaskedWallet zzbRU;
    private int zzbSh;

    /* loaded from: classes2.dex */
    public final class Builder {
        private Builder() {
        }

        public WalletFragmentInitParams build() {
            boolean z = true;
            zzac.zza((WalletFragmentInitParams.this.zzbRU != null && WalletFragmentInitParams.this.zzbRT == null) || (WalletFragmentInitParams.this.zzbRU == null && WalletFragmentInitParams.this.zzbRT != null), "Exactly one of MaskedWallet or MaskedWalletRequest is required");
            if (WalletFragmentInitParams.this.zzbSh < 0) {
                z = false;
            }
            zzac.zza(z, "masked wallet request code is required and must be non-negative");
            return WalletFragmentInitParams.this;
        }

        public Builder setAccountName(String str) {
            WalletFragmentInitParams.this.zzaiu = str;
            return this;
        }

        public Builder setMaskedWallet(MaskedWallet maskedWallet) {
            WalletFragmentInitParams.this.zzbRU = maskedWallet;
            return this;
        }

        public Builder setMaskedWalletRequest(MaskedWalletRequest maskedWalletRequest) {
            WalletFragmentInitParams.this.zzbRT = maskedWalletRequest;
            return this;
        }

        public Builder setMaskedWalletRequestCode(int i) {
            WalletFragmentInitParams.this.zzbSh = i;
            return this;
        }
    }

    private WalletFragmentInitParams() {
        this.zzbSh = -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WalletFragmentInitParams(String str, MaskedWalletRequest maskedWalletRequest, int i, MaskedWallet maskedWallet) {
        this.zzaiu = str;
        this.zzbRT = maskedWalletRequest;
        this.zzbSh = i;
        this.zzbRU = maskedWallet;
    }

    public static Builder newBuilder() {
        WalletFragmentInitParams walletFragmentInitParams = new WalletFragmentInitParams();
        walletFragmentInitParams.getClass();
        return new Builder();
    }

    public String getAccountName() {
        return this.zzaiu;
    }

    public MaskedWallet getMaskedWallet() {
        return this.zzbRU;
    }

    public MaskedWalletRequest getMaskedWalletRequest() {
        return this.zzbRT;
    }

    public int getMaskedWalletRequestCode() {
        return this.zzbSh;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }
}
