package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzaya implements Parcelable.Creator<zzaxz> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzaxz zzaxzVar, Parcel parcel, int i) {
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel));
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zziF */
    public zzaxz createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        while (parcel.dataPosition() < zzaY) {
            com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel));
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzaxz();
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzmu */
    public zzaxz[] newArray(int i) {
        return new zzaxz[i];
    }
}
