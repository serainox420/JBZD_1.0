package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zze implements Parcelable.Creator<zzd> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzd zzdVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzb(parcel, 1, zzdVar.zzblf, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzdVar.zzblg, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, zzdVar.zzblh, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzdVar.zzbli, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzdVar.zzblj);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzdVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzha */
    public zzd createFromParcel(Parcel parcel) {
        boolean z = false;
        String str = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        ArrayList arrayList = null;
        ArrayList<Integer> arrayList2 = null;
        ArrayList<String> arrayList3 = null;
        int i = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    arrayList3 = com.google.android.gms.common.internal.safeparcel.zzb.zzE(parcel, zzaX);
                    break;
                case 2:
                    arrayList2 = com.google.android.gms.common.internal.safeparcel.zzb.zzD(parcel, zzaX);
                    break;
                case 3:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, zzp.CREATOR);
                    break;
                case 4:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 1000:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzd(i, arrayList3, arrayList2, arrayList, str, z);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkF */
    public zzd[] newArray(int i) {
        return new zzd[i];
    }
}
