package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zze extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zze> CREATOR = new zzf();
    final long zzaKQ;
    final long zzaKR;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zze(int i, long j, long j2) {
        this.zzaiI = i;
        this.zzaKQ = j;
        this.zzaKR = j2;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzf.zza(this, parcel, i);
    }
}
