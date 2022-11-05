package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
@Deprecated
/* loaded from: classes.dex */
public class zzaex extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaex> CREATOR = new zzaey();
    public final String zzaB;
    public final boolean zzaJy;

    public zzaex(boolean z, String str) {
        this.zzaJy = z;
        this.zzaB = com.google.android.gms.common.internal.zzac.zzdr(str);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaey.zza(this, parcel, i);
    }
}
