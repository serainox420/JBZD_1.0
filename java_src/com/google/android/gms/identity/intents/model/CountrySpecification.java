package com.google.android.gms.identity.intents.model;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
/* loaded from: classes2.dex */
public class CountrySpecification extends com.google.android.gms.common.internal.safeparcel.zza implements ReflectedParcelable {
    public static final Parcelable.Creator<CountrySpecification> CREATOR = new zza();
    String zzUI;

    public CountrySpecification(String str) {
        this.zzUI = str;
    }

    public String getCountryCode() {
        return this.zzUI;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zza.zza(this, parcel, i);
    }
}
