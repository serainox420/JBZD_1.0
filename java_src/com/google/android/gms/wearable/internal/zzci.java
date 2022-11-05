package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzci extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzci> CREATOR = new zzcj();
    public final int statusCode;
    public final zzao zzbUC;

    public zzci(int i, zzao zzaoVar) {
        this.statusCode = i;
        this.zzbUC = zzaoVar;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzcj.zza(this, parcel, i);
    }
}
