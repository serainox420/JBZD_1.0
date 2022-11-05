package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public final class IsReadyToPayRequest extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<IsReadyToPayRequest> CREATOR = new zzk();
    ArrayList<Integer> zzbQo;
    String zzbQp;
    String zzbQq;

    /* loaded from: classes2.dex */
    public final class Builder {
        private Builder() {
        }

        public Builder addAllowedCardNetwork(int i) {
            if (IsReadyToPayRequest.this.zzbQo == null) {
                IsReadyToPayRequest.this.zzbQo = new ArrayList<>();
            }
            IsReadyToPayRequest.this.zzbQo.add(Integer.valueOf(i));
            return this;
        }

        public IsReadyToPayRequest build() {
            return IsReadyToPayRequest.this;
        }
    }

    IsReadyToPayRequest() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public IsReadyToPayRequest(ArrayList<Integer> arrayList, String str, String str2) {
        this.zzbQo = arrayList;
    }

    public static Builder newBuilder() {
        IsReadyToPayRequest isReadyToPayRequest = new IsReadyToPayRequest();
        isReadyToPayRequest.getClass();
        return new Builder();
    }

    public ArrayList<Integer> getAllowedCardNetworks() {
        return this.zzbQo;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzk.zza(this, parcel, i);
    }
}
