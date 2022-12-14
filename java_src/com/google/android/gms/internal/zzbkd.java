package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzbkd extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbkd> CREATOR = new zzbke();
    public final int height;
    public final int left;
    public final int top;
    public final int versionCode;
    public final int width;
    public final float zzbPv;

    public zzbkd(int i, int i2, int i3, int i4, int i5, float f) {
        this.versionCode = i;
        this.left = i2;
        this.top = i3;
        this.width = i4;
        this.height = i5;
        this.zzbPv = f;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbke.zza(this, parcel, i);
    }
}
