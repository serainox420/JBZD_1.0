package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzaka extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaka> CREATOR = new zzakb();
    final zzako zzaOr;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaka(int i, zzako zzakoVar) {
        this.zzaiI = i;
        this.zzaOr = zzakoVar;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzakb.zza(this, parcel, i);
    }
}
