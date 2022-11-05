package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzcg extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzcg> CREATOR = new zzch();
    public final String label;
    public final String packageName;
    public final long zzbUP;

    public zzcg(String str, String str2, long j) {
        this.packageName = str;
        this.label = str2;
        this.zzbUP = j;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzch.zza(this, parcel, i);
    }
}
