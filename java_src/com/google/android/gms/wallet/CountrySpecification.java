package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
@Deprecated
/* loaded from: classes.dex */
public class CountrySpecification extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<CountrySpecification> CREATOR = new zzd();
    String zzUI;

    public CountrySpecification(String str) {
        this.zzUI = str;
    }

    public String getCountryCode() {
        return this.zzUI;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzd.zza(this, parcel, i);
    }
}
