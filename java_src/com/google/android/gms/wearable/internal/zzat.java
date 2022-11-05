package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* loaded from: classes2.dex */
public class zzat extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzat> CREATOR = new zzau();
    public final int statusCode;
    public final List<zzo> zzbUt;

    public zzat(int i, List<zzo> list) {
        this.statusCode = i;
        this.zzbUt = list;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzau.zza(this, parcel, i);
    }
}
