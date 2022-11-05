package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzbnn extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbnn> CREATOR = new zzbno();
    public final int zzaiI;
    private String zzbWN;
    private String zzbZk;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbnn(int i, String str, String str2) {
        this.zzaiI = i;
        this.zzbZk = str;
        this.zzbWN = str2;
    }

    public zzbnn(String str, String str2) {
        this.zzaiI = 1;
        this.zzbZk = str;
        this.zzbWN = str2;
    }

    public String getApiKey() {
        return this.zzbWN;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbno.zza(this, parcel, i);
    }

    public String zzWC() {
        return this.zzbZk;
    }
}
