package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzanm extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzanm> CREATOR = new zzann();
    final int mIndex;
    final int zzaQS;
    final int zzaQT;
    final String zzaRr;
    final int zzaRs;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzanm(int i, int i2, int i3, int i4, String str, int i5) {
        this.zzaiI = i;
        this.mIndex = i2;
        this.zzaQS = i3;
        this.zzaQT = i4;
        this.zzaRr = str;
        this.zzaRs = i5;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzann.zza(this, parcel, i);
    }
}
