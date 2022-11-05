package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzaz extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaz> CREATOR = new zzba();
    public final int statusCode;
    public final ParcelFileDescriptor zzbUv;

    public zzaz(int i, ParcelFileDescriptor parcelFileDescriptor) {
        this.statusCode = i;
        this.zzbUv = parcelFileDescriptor;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzba.zza(this, parcel, i);
    }
}
