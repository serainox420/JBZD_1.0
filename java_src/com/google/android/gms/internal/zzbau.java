package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzbau extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzbau> CREATOR = new zzbav();
    final int zzaiI;
    final com.google.android.gms.common.internal.zzad zzbEt;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzbau(int i, com.google.android.gms.common.internal.zzad zzadVar) {
        this.zzaiI = i;
        this.zzbEt = zzadVar;
    }

    public zzbau(com.google.android.gms.common.internal.zzad zzadVar) {
        this(1, zzadVar);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzbav.zza(this, parcel, i);
    }

    public com.google.android.gms.common.internal.zzad zzPT() {
        return this.zzbEt;
    }
}
