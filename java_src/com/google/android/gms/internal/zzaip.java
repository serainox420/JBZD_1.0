package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzaip extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzaip> CREATOR = new zzaiq();
    final String zzaLg;
    final boolean zzaNP;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzaip(int i, String str, boolean z) {
        this.zzaiI = i;
        this.zzaLg = str;
        this.zzaNP = z;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaiq.zza(this, parcel, i);
    }
}
