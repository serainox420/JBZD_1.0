package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzakw extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzakw> CREATOR = new zzakx();
    final zzail zzaOd;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzakw(int i, zzail zzailVar) {
        this.zzaiI = i;
        this.zzaOd = zzailVar;
    }

    public zzakw(zzail zzailVar) {
        this(1, zzailVar);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzakx.zza(this, parcel, i);
    }
}
