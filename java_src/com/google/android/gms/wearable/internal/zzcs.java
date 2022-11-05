package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;
/* loaded from: classes2.dex */
public class zzcs extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzcs> CREATOR = new zzct();
    public final int statusCode;
    public final long zzbUP;
    public final List<zzcg> zzbUR;

    public zzcs(int i, long j, List<zzcg> list) {
        this.statusCode = i;
        this.zzbUP = j;
        this.zzbUR = list;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzct.zza(this, parcel, i);
    }
}
