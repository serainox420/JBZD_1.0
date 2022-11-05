package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzajj extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzajj> CREATOR = new zzajk();
    final zzail zzaOd;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzajj(int i, zzail zzailVar) {
        this.zzaiI = i;
        this.zzaOd = zzailVar;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzajk.zza(this, parcel, i);
    }

    public zzail zzBf() {
        return this.zzaOd;
    }
}
