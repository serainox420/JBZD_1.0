package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzazf;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2.dex */
public class zzazg implements Parcelable.Creator<zzazf> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzazf zzazfVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        Set<Integer> set = zzazfVar.zzbCm;
        if (set.contains(1)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzazfVar.zzaiI);
        }
        if (set.contains(2)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzazfVar.zzbCn, true);
        }
        if (set.contains(3)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) zzazfVar.zzbCo, i, true);
        }
        if (set.contains(4)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzazfVar.zzbCp, true);
        }
        if (set.contains(5)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzazfVar.zzbCq, true);
        }
        if (set.contains(6)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 6, zzazfVar.zzbCr);
        }
        if (set.contains(7)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, (Parcelable) zzazfVar.zzbCs, i, true);
        }
        if (set.contains(8)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, zzazfVar.zzbCt, true);
        }
        if (set.contains(9)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, zzazfVar.zzakb, true);
        }
        if (set.contains(12)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 12, zzazfVar.zzzk);
        }
        if (set.contains(14)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 14, zzazfVar.zzGV, true);
        }
        if (set.contains(15)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 15, (Parcelable) zzazfVar.zzbCu, i, true);
        }
        if (set.contains(16)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 16, zzazfVar.zzbCv);
        }
        if (set.contains(18)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 18, zzazfVar.zzacX, true);
        }
        if (set.contains(19)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 19, (Parcelable) zzazfVar.zzbCw, i, true);
        }
        if (set.contains(20)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 20, zzazfVar.zzbCx, true);
        }
        if (set.contains(21)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 21, zzazfVar.zzbCy);
        }
        if (set.contains(22)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 22, zzazfVar.zzbCz, true);
        }
        if (set.contains(23)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 23, zzazfVar.zzbCA, true);
        }
        if (set.contains(24)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 24, zzazfVar.zzbCB);
        }
        if (set.contains(25)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 25, zzazfVar.zzbCC);
        }
        if (set.contains(26)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 26, zzazfVar.zzbCD, true);
        }
        if (set.contains(27)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 27, zzazfVar.zzE, true);
        }
        if (set.contains(28)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 28, zzazfVar.zzbCE, true);
        }
        if (set.contains(29)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 29, zzazfVar.zzbCF);
        }
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzje */
    public zzazf createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        HashSet hashSet = new HashSet();
        int i = 0;
        String str = null;
        zzazf.zza zzaVar = null;
        String str2 = null;
        String str3 = null;
        int i2 = 0;
        zzazf.zzb zzbVar = null;
        String str4 = null;
        String str5 = null;
        int i3 = 0;
        String str6 = null;
        zzazf.zzc zzcVar = null;
        boolean z = false;
        String str7 = null;
        zzazf.zzd zzdVar = null;
        String str8 = null;
        int i4 = 0;
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        int i5 = 0;
        int i6 = 0;
        String str9 = null;
        String str10 = null;
        ArrayList arrayList3 = null;
        boolean z2 = false;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    hashSet.add(1);
                    break;
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    hashSet.add(2);
                    break;
                case 3:
                    hashSet.add(3);
                    zzaVar = (zzazf.zza) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzazf.zza.CREATOR);
                    break;
                case 4:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    hashSet.add(4);
                    break;
                case 5:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    hashSet.add(5);
                    break;
                case 6:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    hashSet.add(6);
                    break;
                case 7:
                    hashSet.add(7);
                    zzbVar = (zzazf.zzb) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzazf.zzb.CREATOR);
                    break;
                case 8:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    hashSet.add(8);
                    break;
                case 9:
                    str5 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    hashSet.add(9);
                    break;
                case 10:
                case 11:
                case 13:
                case 17:
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
                case 12:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    hashSet.add(12);
                    break;
                case 14:
                    str6 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    hashSet.add(14);
                    break;
                case 15:
                    hashSet.add(15);
                    zzcVar = (zzazf.zzc) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzazf.zzc.CREATOR);
                    break;
                case 16:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    hashSet.add(16);
                    break;
                case 18:
                    str7 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    hashSet.add(18);
                    break;
                case 19:
                    hashSet.add(19);
                    zzdVar = (zzazf.zzd) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzazf.zzd.CREATOR);
                    break;
                case 20:
                    str8 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    hashSet.add(20);
                    break;
                case 21:
                    i4 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    hashSet.add(21);
                    break;
                case 22:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, zzazf.zzf.CREATOR);
                    hashSet.add(22);
                    break;
                case 23:
                    arrayList2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, zzazf.zzg.CREATOR);
                    hashSet.add(23);
                    break;
                case 24:
                    i5 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    hashSet.add(24);
                    break;
                case 25:
                    i6 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    hashSet.add(25);
                    break;
                case 26:
                    str9 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    hashSet.add(26);
                    break;
                case 27:
                    str10 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    hashSet.add(27);
                    break;
                case 28:
                    arrayList3 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, zzazf.zzh.CREATOR);
                    hashSet.add(28);
                    break;
                case 29:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    hashSet.add(29);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzazf(hashSet, i, str, zzaVar, str2, str3, i2, zzbVar, str4, str5, i3, str6, zzcVar, z, str7, zzdVar, str8, i4, arrayList, arrayList2, i5, i6, str9, str10, arrayList3, z2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zznc */
    public zzazf[] newArray(int i) {
        return new zzazf[i];
    }
}
