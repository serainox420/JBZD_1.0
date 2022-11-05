package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzbju implements Parcelable.Creator<zzbjt> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzbjt zzbjtVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzbjtVar.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, zzbjtVar.mode);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, zzbjtVar.zzbPe);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, zzbjtVar.zzbPf);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzbjtVar.zzbPg);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzbjtVar.zzbPh);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzbjtVar.zzbPi);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjO */
    public zzbjt createFromParcel(Parcel parcel) {
        boolean z = false;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        float f = -1.0f;
        boolean z2 = false;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i4 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 4:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 5:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 6:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 7:
                    f = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzbjt(i4, i3, i2, i, z2, z, f);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzoj */
    public zzbjt[] newArray(int i) {
        return new zzbjt[i];
    }
}
