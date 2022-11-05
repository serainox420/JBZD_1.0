package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzazf;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2.dex */
public class zzazp implements Parcelable.Creator<zzazf.zzh> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzazf.zzh zzhVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        Set<Integer> set = zzhVar.zzbCm;
        if (set.contains(1)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzhVar.zzaiI);
        }
        if (set.contains(3)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, zzhVar.zzPt());
        }
        if (set.contains(4)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzhVar.mValue, true);
        }
        if (set.contains(5)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzhVar.zzadc, true);
        }
        if (set.contains(6)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 6, zzhVar.zzakD);
        }
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjn */
    public zzazf.zzh createFromParcel(Parcel parcel) {
        String str = null;
        int i = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        HashSet hashSet = new HashSet();
        int i2 = 0;
        String str2 = null;
        int i3 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    hashSet.add(1);
                    break;
                case 2:
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
                case 3:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    hashSet.add(3);
                    break;
                case 4:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    hashSet.add(4);
                    break;
                case 5:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    hashSet.add(5);
                    break;
                case 6:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    hashSet.add(6);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzazf.zzh(hashSet, i3, str2, i2, str, i);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zznl */
    public zzazf.zzh[] newArray(int i) {
        return new zzazf.zzh[i];
    }
}
