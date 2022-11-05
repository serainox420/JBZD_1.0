package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
@Deprecated
/* loaded from: classes.dex */
public class zzan extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzan> CREATOR = new zzao();
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzan(int i) {
        this.zzaiI = i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzao.zza(this, parcel, i);
    }
}
