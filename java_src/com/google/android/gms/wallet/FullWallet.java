package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.identity.intents.model.UserAddress;
/* loaded from: classes2.dex */
public final class FullWallet extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<FullWallet> CREATOR = new zzg();
    String zzbPS;
    String zzbPT;
    ProxyCard zzbPU;
    String zzbPV;
    zza zzbPW;
    zza zzbPX;
    String[] zzbPY;
    UserAddress zzbPZ;
    UserAddress zzbQa;
    InstrumentInfo[] zzbQb;
    PaymentMethodToken zzbQc;

    private FullWallet() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FullWallet(String str, String str2, ProxyCard proxyCard, String str3, zza zzaVar, zza zzaVar2, String[] strArr, UserAddress userAddress, UserAddress userAddress2, InstrumentInfo[] instrumentInfoArr, PaymentMethodToken paymentMethodToken) {
        this.zzbPS = str;
        this.zzbPT = str2;
        this.zzbPU = proxyCard;
        this.zzbPV = str3;
        this.zzbPW = zzaVar;
        this.zzbPX = zzaVar2;
        this.zzbPY = strArr;
        this.zzbPZ = userAddress;
        this.zzbQa = userAddress2;
        this.zzbQb = instrumentInfoArr;
        this.zzbQc = paymentMethodToken;
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

    public PaymentMethodToken getPaymentMethodToken() {
        return this.zzbQc;
    }

    public ProxyCard getProxyCard() {
        return this.zzbPU;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzg.zza(this, parcel, i);
    }
}
