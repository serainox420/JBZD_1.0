package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzbn extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbn> CREATOR = new zzbo();
    public final int statusCode;
    public final zzao zzbUC;

    public zzbn(int i, zzao zzaoVar) {
        this.statusCode = i;
        this.zzbUC = zzaoVar;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbo.zza(this, parcel, i);
    }
}
