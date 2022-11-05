package com.google.android.gms.internal;

import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzbkj extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbkj> CREATOR = new zzbkk();
    final int versionCode;
    public final Rect zzbPG;

    public zzbkj() {
        this.versionCode = 1;
        this.zzbPG = new Rect();
    }

    public zzbkj(int i, Rect rect) {
        this.versionCode = i;
        this.zzbPG = rect;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbkk.zza(this, parcel, i);
    }
}
