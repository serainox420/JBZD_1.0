package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.wearable.ConnectionConfiguration;
/* loaded from: classes2.dex */
public class zzbj extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbj> CREATOR = new zzbk();
    public final int statusCode;
    public final ConnectionConfiguration[] zzbUA;

    public zzbj(int i, ConnectionConfiguration[] connectionConfigurationArr) {
        this.statusCode = i;
        this.zzbUA = connectionConfigurationArr;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbk.zza(this, parcel, i);
    }
}
