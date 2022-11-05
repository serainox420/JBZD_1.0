package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzano extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzano> CREATOR = new zzanp();
    final int mIndex;
    final int zzaQS;
    final int zzaQT;
    final String zzaRt;
    final int zzaRu;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzano(int i, int i2, int i3, int i4, String str, int i5) {
        this.zzaiI = i;
        this.mIndex = i2;
        this.zzaQS = i3;
        this.zzaQT = i4;
        this.zzaRt = str;
        this.zzaRu = i5;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzanp.zza(this, parcel, i);
    }
}
