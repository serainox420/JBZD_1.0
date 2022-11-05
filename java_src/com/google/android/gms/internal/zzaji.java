package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzaji implements Parcelable.Creator<zzajh> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzajh zzajhVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzajhVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzajhVar.zzaNe, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzajhVar.zzaOc);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzcE */
    public zzajh createFromParcel(Parcel parcel) {
        boolean zzc;
        com.google.android.gms.drive.zzc zzcVar;
        int i;
        boolean z = false;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        com.google.android.gms.drive.zzc zzcVar2 = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    boolean z2 = z;
                    zzcVar = zzcVar2;
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    zzc = z2;
                    break;
                case 2:
                    com.google.android.gms.drive.zzc zzcVar3 = (com.google.android.gms.drive.zzc) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, com.google.android.gms.drive.zzc.CREATOR);
                    i = i2;
                    zzc = z;
                    zzcVar = zzcVar3;
                    break;
                case 3:
                    zzc = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    zzcVar = zzcVar2;
                    i = i2;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    zzc = z;
                    zzcVar = zzcVar2;
                    i = i2;
                    break;
            }
            i2 = i;
            zzcVar2 = zzcVar;
            z = zzc;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzajh(i2, zzcVar2, z);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfe */
    public zzajh[] newArray(int i) {
        return new zzajh[i];
    }
}
