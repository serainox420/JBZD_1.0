package com.google.android.gms.cast.framework.media;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class ImageHints extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<ImageHints> CREATOR = new zzd();
    private final int zzakD;
    private final int zzarQ;
    private final int zzarR;

    public ImageHints(int i, int i2, int i3) {
        this.zzakD = i;
        this.zzarQ = i2;
        this.zzarR = i3;
    }

    public int getHeightInPixels() {
        return this.zzarR;
    }

    public int getType() {
        return this.zzakD;
    }

    public int getWidthInPixels() {
        return this.zzarQ;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzd.zza(this, parcel, i);
    }
}
