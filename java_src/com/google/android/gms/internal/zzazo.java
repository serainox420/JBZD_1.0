package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzazf;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes2.dex */
public class zzazo implements Parcelable.Creator<zzazf.zzg> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzazf.zzg zzgVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        Set<Integer> set = zzgVar.zzbCm;
        if (set.contains(1)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzgVar.zzaiI);
        }
        if (set.contains(2)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzgVar.zzbCU);
        }
        if (set.contains(3)) {
            com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzgVar.mValue, true);
        }
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjm */
    public zzazf.zzg createFromParcel(Parcel parcel) {
        boolean z = false;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        HashSet hashSet = new HashSet();
        String str = null;
        int i = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    hashSet.add(1);
                    break;
                case 2:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    hashSet.add(2);
                    break;
                case 3:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
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
        return new zzazf.zzg(hashSet, i, z, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zznk */
    public zzazf.zzg[] newArray(int i) {
        return new zzazf.zzg[i];
    }
}
