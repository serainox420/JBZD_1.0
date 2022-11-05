package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzaur implements Parcelable.Creator<zzauq> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzauq zzauqVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzauqVar.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzauqVar.name, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzauqVar.zzbwc);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzauqVar.zzbwd, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzauqVar.zzbwe, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzauqVar.zzaGV, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzauqVar.zzbqV, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, zzauqVar.zzbwf, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhU */
    public zzauq createFromParcel(Parcel parcel) {
        Double d = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        long j = 0;
        String str = null;
        String str2 = null;
        Float f = null;
        Long l = null;
        String str3 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 4:
                    l = com.google.android.gms.common.internal.safeparcel.zzb.zzj(parcel, zzaX);
                    break;
                case 5:
                    f = com.google.android.gms.common.internal.safeparcel.zzb.zzm(parcel, zzaX);
                    break;
                case 6:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 8:
                    d = com.google.android.gms.common.internal.safeparcel.zzb.zzo(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzauq(i, str3, j, l, f, str2, str, d);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzlE */
    public zzauq[] newArray(int i) {
        return new zzauq[i];
    }
}
