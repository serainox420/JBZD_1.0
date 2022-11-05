package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzazf;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2.dex */
public class zzazn implements Parcelable.Creator<zzazf.zzf> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzazf.zzf zzfVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        Set<Integer> set = zzfVar.zzbCm;
        if (set.contains(1)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzfVar.zzaiI);
        }
        if (set.contains(2)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzfVar.zzbCR, true);
        }
        if (set.contains(3)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzfVar.zzade, true);
        }
        if (set.contains(4)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzfVar.zzbCS, true);
        }
        if (set.contains(5)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzfVar.zzbCT, true);
        }
        if (set.contains(6)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzfVar.mName, true);
        }
        if (set.contains(7)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzfVar.zzbCU);
        }
        if (set.contains(8)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, zzfVar.zzbCV, true);
        }
        if (set.contains(9)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, zzfVar.zzamJ, true);
        }
        if (set.contains(10)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 10, zzfVar.zzakD);
        }
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjl */
    public zzazf.zzf createFromParcel(Parcel parcel) {
        int i = 0;
        String str = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        HashSet hashSet = new HashSet();
        String str2 = null;
        boolean z = false;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    hashSet.add(1);
                    break;
                case 2:
                    str7 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    hashSet.add(2);
                    break;
                case 3:
                    str6 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    hashSet.add(3);
                    break;
                case 4:
                    str5 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    hashSet.add(4);
                    break;
                case 5:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    hashSet.add(5);
                    break;
                case 6:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    hashSet.add(6);
                    break;
                case 7:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    hashSet.add(7);
                    break;
                case 8:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    hashSet.add(8);
                    break;
                case 9:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    hashSet.add(9);
                    break;
                case 10:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    hashSet.add(10);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzazf.zzf(hashSet, i2, str7, str6, str5, str4, str3, z, str2, str, i);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zznj */
    public zzazf.zzf[] newArray(int i) {
        return new zzazf.zzf[i];
    }
}
