package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzbjt extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbjt> CREATOR = new zzbju();
    public int mode;
    public final int versionCode;
    public int zzbPe;
    public int zzbPf;
    public boolean zzbPg;
    public boolean zzbPh;
    public float zzbPi;

    public zzbjt() {
        this.versionCode = 2;
    }

    public zzbjt(int i, int i2, int i3, int i4, boolean z, boolean z2, float f) {
        this.versionCode = i;
        this.mode = i2;
        this.zzbPe = i3;
        this.zzbPf = i4;
        this.zzbPg = z;
        this.zzbPh = z2;
        this.zzbPi = f;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbju.zza(this, parcel, i);
    }
}
