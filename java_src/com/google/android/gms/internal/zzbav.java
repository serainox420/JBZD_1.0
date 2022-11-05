package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzbav implements Parcelable.Creator<zzbau> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzbau zzbauVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzbauVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzbauVar.zzPT(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjx */
    public zzbau createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        com.google.android.gms.common.internal.zzad zzadVar = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    zzadVar = (com.google.android.gms.common.internal.zzad) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, com.google.android.gms.common.internal.zzad.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzbau(i, zzadVar);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zznx */
    public zzbau[] newArray(int i) {
        return new zzbau[i];
    }
}
