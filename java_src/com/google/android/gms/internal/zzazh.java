package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzazf;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2.dex */
public class zzazh implements Parcelable.Creator<zzazf.zza> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzazf.zza zzaVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        Set<Integer> set = zzaVar.zzbCm;
        if (set.contains(1)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzaVar.zzaiI);
        }
        if (set.contains(2)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, zzaVar.zzbCG);
        }
        if (set.contains(3)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, zzaVar.zzbCH);
        }
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjf */
    public zzazf.zza createFromParcel(Parcel parcel) {
        int i = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        HashSet hashSet = new HashSet();
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
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    hashSet.add(3);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzazf.zza(hashSet, i3, i2, i);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zznd */
    public zzazf.zza[] newArray(int i) {
        return new zzazf.zza[i];
    }
}
