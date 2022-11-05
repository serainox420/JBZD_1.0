package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzarw;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzg implements Parcelable.Creator<zzf> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzf zzfVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzfVar.zzId(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzfVar.getTag(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, zzfVar.zzIe(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgI */
    public zzf createFromParcel(Parcel parcel) {
        ArrayList arrayList = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str = null;
        ArrayList arrayList2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    arrayList2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, zzd.CREATOR);
                    break;
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, zzarw.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzf(arrayList2, str, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkd */
    public zzf[] newArray(int i) {
        return new zzf[i];
    }
}
