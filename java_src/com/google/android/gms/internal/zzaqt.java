package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzaqt extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaqt> CREATOR = new zzaqu();
    private final String zzbiq;
    private final String zzbir;
    private final String zzbis;
    private final String[] zzbit;
    private final int zzbiu;

    public zzaqt(String str, String str2, String str3, String[] strArr, int i) {
        this.zzbiq = str;
        this.zzbir = str2;
        this.zzbis = str3;
        this.zzbit = strArr;
        this.zzbiu = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaqu.zza(this, parcel, i);
    }

    public String zzHu() {
        return this.zzbiq;
    }

    public String zzHv() {
        return this.zzbir;
    }

    public String zzHw() {
        return this.zzbis;
    }

    public String[] zzHx() {
        return this.zzbit;
    }

    public int zzHy() {
        return this.zzbiu;
    }
}
