package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzaky extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaky> CREATOR = new zzakz();
    final zzako zzaOr;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaky(int i, zzako zzakoVar) {
        this.zzaiI = i;
        this.zzaOr = zzakoVar;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzakz.zza(this, parcel, i);
    }
}
