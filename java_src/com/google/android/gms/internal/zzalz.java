package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzalz extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzalz> CREATOR = new zzama();
    final String mName;
    final boolean zzaQJ;
    final boolean zzaQK;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzalz(int i, boolean z, String str, boolean z2) {
        this.zzaiI = i;
        this.zzaQJ = z;
        this.mName = str;
        this.zzaQK = z2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzama.zza(this, parcel, i);
    }
}
