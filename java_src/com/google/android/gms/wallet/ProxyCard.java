package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
@Deprecated
/* loaded from: classes.dex */
public final class ProxyCard extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<ProxyCard> CREATOR = new zzt();
    String zzbRm;
    String zzbRn;
    int zzbRo;
    int zzbRp;

    public ProxyCard(String str, String str2, int i, int i2) {
        this.zzbRm = str;
        this.zzbRn = str2;
        this.zzbRo = i;
        this.zzbRp = i2;
    }

    public String getCvn() {
        return this.zzbRn;
    }

    public int getExpirationMonth() {
        return this.zzbRo;
    }

    public int getExpirationYear() {
        return this.zzbRp;
    }

    public String getPan() {
        return this.zzbRm;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzt.zza(this, parcel, i);
    }
}
