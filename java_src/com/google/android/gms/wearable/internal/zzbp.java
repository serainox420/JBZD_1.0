package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzbp extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbp> CREATOR = new zzbq();
    public final int statusCode;
    public final ParcelFileDescriptor zzbyd;

    public zzbp(int i, ParcelFileDescriptor parcelFileDescriptor) {
        this.statusCode = i;
        this.zzbyd = parcelFileDescriptor;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbq.zza(this, parcel, i | 1);
    }
}
