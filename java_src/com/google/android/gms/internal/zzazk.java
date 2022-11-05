package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzazf;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2.dex */
public class zzazk implements Parcelable.Creator<zzazf.zzb.C0282zzb> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzazf.zzb.C0282zzb c0282zzb, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        Set<Integer> set = c0282zzb.zzbCm;
        if (set.contains(1)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, c0282zzb.zzaiI);
        }
        if (set.contains(2)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, c0282zzb.zzrD);
        }
        if (set.contains(3)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, c0282zzb.zzE, true);
        }
        if (set.contains(4)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, c0282zzb.zzrC);
        }
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzji */
    public zzazf.zzb.C0282zzb createFromParcel(Parcel parcel) {
        int i = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        HashSet hashSet = new HashSet();
        String str = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    hashSet.add(1);
                    break;
                case 2:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    hashSet.add(2);
                    break;
                case 3:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    hashSet.add(3);
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
        return new zzazf.zzb.C0282zzb(hashSet, i3, i2, str, i);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzng */
    public zzazf.zzb.C0282zzb[] newArray(int i) {
        return new zzazf.zzb.C0282zzb[i];
    }
}
