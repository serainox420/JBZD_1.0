package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* loaded from: classes2.dex */
public class zzbl extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbl> CREATOR = new zzbm();
    public final int statusCode;
    public final List<zzcc> zzbUB;

    public zzbl(int i, List<zzcc> list) {
        this.statusCode = i;
        this.zzbUB = list;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbm.zza(this, parcel, i);
    }
}
