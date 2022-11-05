package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class Tile extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<Tile> CREATOR = new zzq();
    public final byte[] data;
    public final int height;
    public final int width;

    public Tile(int i, int i2, byte[] bArr) {
        this.width = i;
        this.height = i2;
        this.data = bArr;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzq.zza(this, parcel, i);
    }
}
