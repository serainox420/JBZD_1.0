package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class InstrumentInfo extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<InstrumentInfo> CREATOR = new zzj();
    private String zzbQm;
    private String zzbQn;

    public InstrumentInfo(String str, String str2) {
        this.zzbQm = str;
        this.zzbQn = str2;
    }

    public String getInstrumentDetails() {
        return this.zzbQn;
    }

    public String getInstrumentType() {
        return this.zzbQm;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzj.zza(this, parcel, i);
    }
}
