package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
/* loaded from: classes2.dex */
public class zzahd extends com.google.android.gms.common.internal.safeparcel.zza {
    public static final Parcelable.Creator<zzahd> CREATOR = new zzahe();
    final com.google.android.gms.drive.zzc zzaMr;
    final int zzaMt;
    final Boolean zzaMv;
    final int zzaiI;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzahd(int i, com.google.android.gms.drive.zzc zzcVar, Boolean bool, int i2) {
        this.zzaiI = i;
        this.zzaMr = zzcVar;
        this.zzaMv = bool;
        this.zzaMt = i2;
    }

    public zzahd(int i, boolean z) {
        this(1, null, Boolean.valueOf(z), i);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        zzahe.zza(this, parcel, i);
    }
}
