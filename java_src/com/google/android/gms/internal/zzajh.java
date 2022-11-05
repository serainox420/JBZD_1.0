package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzajh extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzajh> CREATOR = new zzaji();
    final com.google.android.gms.drive.zzc zzaNe;
    final boolean zzaOc;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzajh(int i, com.google.android.gms.drive.zzc zzcVar, boolean z) {
        this.zzaiI = i;
        this.zzaNe = zzcVar;
        this.zzaOc = z;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzaji.zza(this, parcel, i);
    }

    public com.google.android.gms.drive.zzc zzBd() {
        return this.zzaNe;
    }

    public boolean zzBe() {
        return this.zzaOc;
    }
}
