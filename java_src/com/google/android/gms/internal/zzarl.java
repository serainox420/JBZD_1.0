package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public final class zzarl extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzarl> CREATOR = new zzarm();
    private final String[] zzbiT;
    private final String[] zzbiU;
    private final String[] zzbiV;
    private final String[] zzbiW;

    public zzarl(String[] strArr, String[] strArr2, String[] strArr3, String[] strArr4) {
        this.zzbiT = strArr;
        this.zzbiU = strArr2;
        this.zzbiW = strArr3;
        this.zzbiV = strArr4;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzarm.zza(this, parcel, i);
    }

    public String[] zzHK() {
        return this.zzbiT;
    }

    public String[] zzHL() {
        return this.zzbiU;
    }

    public String[] zzHM() {
        return this.zzbiW;
    }

    public String[] zzHN() {
        return this.zzbiV;
    }
}
