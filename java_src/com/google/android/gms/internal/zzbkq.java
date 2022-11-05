package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzbkq extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbkq> CREATOR = new zzbkr();
    public final int versionCode;
    public final String zzbPA;
    public final float zzbPB;
    public final zzbkl[] zzbPH;
    public final boolean zzbPI;
    public final String zzbPr;
    public final zzbkd zzbPx;
    public final zzbkd zzbPy;

    public zzbkq(int i, zzbkl[] zzbklVarArr, zzbkd zzbkdVar, zzbkd zzbkdVar2, String str, float f, String str2, boolean z) {
        this.versionCode = i;
        this.zzbPH = zzbklVarArr;
        this.zzbPx = zzbkdVar;
        this.zzbPy = zzbkdVar2;
        this.zzbPA = str;
        this.zzbPB = f;
        this.zzbPr = str2;
        this.zzbPI = z;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbkr.zza(this, parcel, i);
    }
}
