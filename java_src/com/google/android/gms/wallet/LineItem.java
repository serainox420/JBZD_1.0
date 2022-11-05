package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class LineItem extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<LineItem> CREATOR = new zzl();
    String description;
    String zzbPL;
    String zzbPM;
    String zzbQs;
    String zzbQt;
    int zzbQu;

    /* loaded from: classes2.dex */
    public final class Builder {
        private Builder() {
        }

        public LineItem build() {
            return LineItem.this;
        }

        public Builder setCurrencyCode(String str) {
            LineItem.this.zzbPM = str;
            return this;
        }

        public Builder setDescription(String str) {
            LineItem.this.description = str;
            return this;
        }

        public Builder setQuantity(String str) {
            LineItem.this.zzbQs = str;
            return this;
        }

        public Builder setRole(int i) {
            LineItem.this.zzbQu = i;
            return this;
        }

        public Builder setTotalPrice(String str) {
            LineItem.this.zzbPL = str;
            return this;
        }

        public Builder setUnitPrice(String str) {
            LineItem.this.zzbQt = str;
            return this;
        }
    }

    /* loaded from: classes2.dex */
    public interface Role {
        public static final int REGULAR = 0;
        public static final int SHIPPING = 2;
        public static final int TAX = 1;
    }

    LineItem() {
        this.zzbQu = 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public LineItem(String str, String str2, String str3, String str4, int i, String str5) {
        this.description = str;
        this.zzbQs = str2;
        this.zzbQt = str3;
        this.zzbPL = str4;
        this.zzbQu = i;
        this.zzbPM = str5;
    }

    public static Builder newBuilder() {
        LineItem lineItem = new LineItem();
        lineItem.getClass();
        return new Builder();
    }

    public String getCurrencyCode() {
        return this.zzbPM;
    }

    public String getDescription() {
        return this.description;
    }

    public String getQuantity() {
        return this.zzbQs;
    }

    public int getRole() {
        return this.zzbQu;
    }

    public String getTotalPrice() {
        return this.zzbPL;
    }

    public String getUnitPrice() {
        return this.zzbQt;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzl.zza(this, parcel, i);
    }
}
