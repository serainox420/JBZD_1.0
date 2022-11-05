package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class PaymentMethodToken extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<PaymentMethodToken> CREATOR = new zzr();
    int zzbRj;
    String zzbxT;

    private PaymentMethodToken() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public PaymentMethodToken(int i, String str) {
        this.zzbRj = i;
        this.zzbxT = str;
    }

    public int getPaymentMethodTokenizationType() {
        return this.zzbRj;
    }

    public String getToken() {
        return this.zzbxT;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzr.zza(this, parcel, i);
    }
}
