package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.wearable.ConnectionConfiguration;
@Deprecated
/* loaded from: classes.dex */
public class zzbh extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbh> CREATOR = new zzbi();
    public final int statusCode;
    public final ConnectionConfiguration zzbUz;

    public zzbh(int i, ConnectionConfiguration connectionConfiguration) {
        this.statusCode = i;
        this.zzbUz = connectionConfiguration;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbi.zza(this, parcel, i);
    }
}
