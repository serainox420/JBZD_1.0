package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzb implements Parcelable.Creator<zza> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zza zzaVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzaVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzaVar.zzaKA);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzaVar.zzaKB);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzaVar.zzaKC);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbM */
    public zza createFromParcel(Parcel parcel) {
        long j = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        long j2 = 0;
        long j3 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    j3 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 3:
                    j2 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 4:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zza(i, j3, j2, j);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzeb */
    public zza[] newArray(int i) {
        return new zza[i];
    }
}
