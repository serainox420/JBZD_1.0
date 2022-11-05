package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzajr extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzajr> CREATOR = new zzajs();
    final ParcelFileDescriptor zzaOo;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzajr(int i, ParcelFileDescriptor parcelFileDescriptor) {
        this.zzaiI = i;
        this.zzaOo = parcelFileDescriptor;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzajs.zza(this, parcel, i | 1);
    }
}
