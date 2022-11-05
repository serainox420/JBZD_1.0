package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzazf;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2.dex */
public class zzazm implements Parcelable.Creator<zzazf.zzd> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzazf.zzd zzdVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        Set<Integer> set = zzdVar.zzbCm;
        if (set.contains(1)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzdVar.zzaiI);
        }
        if (set.contains(2)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzdVar.zzajm, true);
        }
        if (set.contains(3)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzdVar.zzbCN, true);
        }
        if (set.contains(4)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzdVar.zzajl, true);
        }
        if (set.contains(5)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzdVar.zzbCO, true);
        }
        if (set.contains(6)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzdVar.zzbCP, true);
        }
        if (set.contains(7)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzdVar.zzbCQ, true);
        }
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjk */
    public zzazf.zzd createFromParcel(Parcel parcel) {
        String str = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        HashSet hashSet = new HashSet();
        int i = 0;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    hashSet.add(1);
                    break;
                case 2:
                    str6 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    hashSet.add(2);
                    break;
                case 3:
                    str5 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    hashSet.add(3);
                    break;
                case 4:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    hashSet.add(4);
                    break;
                case 5:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    hashSet.add(5);
                    break;
                case 6:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    hashSet.add(6);
                    break;
                case 7:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    hashSet.add(7);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzazf.zzd(hashSet, i, str6, str5, str4, str3, str2, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzni */
    public zzazf.zzd[] newArray(int i) {
        return new zzazf.zzd[i];
    }
}
