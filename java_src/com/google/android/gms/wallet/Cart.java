package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2.dex */
public final class Cart extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<Cart> CREATOR = new zzc();
    String zzbPL;
    String zzbPM;
    ArrayList<LineItem> zzbPN;

    /* loaded from: classes2.dex */
    public final class Builder {
        private Builder() {
        }

        public Builder addLineItem(LineItem lineItem) {
            Cart.this.zzbPN.add(lineItem);
            return this;
        }

        public Cart build() {
            return Cart.this;
        }

        public Builder setCurrencyCode(String str) {
            Cart.this.zzbPM = str;
            return this;
        }

        public Builder setLineItems(List<LineItem> list) {
            Cart.this.zzbPN.clear();
            Cart.this.zzbPN.addAll(list);
            return this;
        }

        public Builder setTotalPrice(String str) {
            Cart.this.zzbPL = str;
            return this;
        }
    }

    Cart() {
        this.zzbPN = new ArrayList<>();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Cart(String str, String str2, ArrayList<LineItem> arrayList) {
        this.zzbPL = str;
        this.zzbPM = str2;
        this.zzbPN = arrayList;
    }

    public static Builder newBuilder() {
        Cart cart = new Cart();
        cart.getClass();
        return new Builder();
    }

    public String getCurrencyCode() {
        return this.zzbPM;
    }

    public ArrayList<LineItem> getLineItems() {
        return this.zzbPN;
    }

    public String getTotalPrice() {
        return this.zzbPL;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzc.zza(this, parcel, i);
    }
}
