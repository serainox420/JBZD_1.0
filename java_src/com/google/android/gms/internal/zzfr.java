package com.google.android.gms.internal;

import android.os.Parcel;
@zzme
/* loaded from: classes.dex */
public class zzfr extends zzeg {
    public zzfr(zzeg zzegVar) {
        super(zzegVar.zzzy, zzegVar.height, zzegVar.heightPixels, zzegVar.zzzz, zzegVar.width, zzegVar.widthPixels, zzegVar.zzzA, zzegVar.zzzB, zzegVar.zzzC, zzegVar.zzzD);
    }

    @Override // com.google.android.gms.internal.zzeg, android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, this.zzzy, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, this.height);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 6, this.width);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }
}
