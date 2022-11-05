package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzh implements Parcelable.Creator<zzg> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzg zzgVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, zzgVar.zzbSz);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzgVar.zzbSA, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzgVar.zzbSB);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzgVar.zzbQj, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzgVar.zzbSC);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 7, zzgVar.zzbSD);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkE */
    public zzg createFromParcel(Parcel parcel) {
        String str = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        double d = 0.0d;
        long j = 0;
        int i2 = -1;
        String str2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    d = com.google.android.gms.common.internal.safeparcel.zzb.zzn(parcel, zzaX);
                    break;
                case 5:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 7:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzg(i, str2, d, str, j, i2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzpd */
    public zzg[] newArray(int i) {
        return new zzg[i];
    }
}
