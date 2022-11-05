package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzakh extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzakh> CREATOR = new zzaki();
    final boolean zzaMN;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzakh(int i, boolean z) {
        this.zzaiI = i;
        this.zzaMN = z;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaki.zza(this, parcel, i);
    }
}
