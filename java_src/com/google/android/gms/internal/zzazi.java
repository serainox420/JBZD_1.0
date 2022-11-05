package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzazf;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2.dex */
public class zzazi implements Parcelable.Creator<zzazf.zzb> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzazf.zzb zzbVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        Set<Integer> set = zzbVar.zzbCm;
        if (set.contains(1)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzbVar.zzaiI);
        }
        if (set.contains(2)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzbVar.zzbCI, i, true);
        }
        if (set.contains(3)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) zzbVar.zzbCJ, i, true);
        }
        if (set.contains(4)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, zzbVar.zzbCK);
        }
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjg */
    public zzazf.zzb createFromParcel(Parcel parcel) {
        zzazf.zzb.C0282zzb c0282zzb = null;
        int i = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        HashSet hashSet = new HashSet();
        zzazf.zzb.zza zzaVar = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    hashSet.add(1);
                    break;
                case 2:
                    hashSet.add(2);
                    zzaVar = (zzazf.zzb.zza) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzazf.zzb.zza.CREATOR);
                    break;
                case 3:
                    hashSet.add(3);
                    c0282zzb = (zzazf.zzb.C0282zzb) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzazf.zzb.C0282zzb.CREATOR);
                    break;
                case 4:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    hashSet.add(4);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzazf.zzb(hashSet, i2, zzaVar, c0282zzb, i);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzne */
    public zzazf.zzb[] newArray(int i) {
        return new zzazf.zzb[i];
    }
}
