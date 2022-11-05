package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzbkh extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbkh> CREATOR = new zzbki();
    public final int versionCode;
    public final String zzbPA;
    public final float zzbPB;
    public final int zzbPC;
    public final boolean zzbPD;
    public final int zzbPE;
    public final int zzbPF;
    public final String zzbPr;
    public final zzbkq[] zzbPw;
    public final zzbkd zzbPx;
    public final zzbkd zzbPy;
    public final zzbkd zzbPz;

    public zzbkh(int i, zzbkq[] zzbkqVarArr, zzbkd zzbkdVar, zzbkd zzbkdVar2, zzbkd zzbkdVar3, String str, float f, String str2, int i2, boolean z, int i3, int i4) {
        this.versionCode = i;
        this.zzbPw = zzbkqVarArr;
        this.zzbPx = zzbkdVar;
        this.zzbPy = zzbkdVar2;
        this.zzbPz = zzbkdVar3;
        this.zzbPA = str;
        this.zzbPB = f;
        this.zzbPr = str2;
        this.zzbPC = i2;
        this.zzbPD = z;
        this.zzbPE = i3;
        this.zzbPF = i4;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbki.zza(this, parcel, i);
    }
}
