package com.google.android.gms.location.places.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.places.internal.zza;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzb implements Parcelable.Creator<zza> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zza zzaVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, zzaVar.zzbmb, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzaVar.zzblE, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzaVar.zzbkY, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, zzaVar.zzbmc, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 5, zzaVar.zzbmd);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzaVar.zzbme, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 7, zzaVar.zzbmf, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzaVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, zzaVar.zzbmg, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 9, zzaVar.zzbmh, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhi */
    public zza createFromParcel(Parcel parcel) {
        int i = 0;
        ArrayList arrayList = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str = null;
        ArrayList arrayList2 = null;
        String str2 = null;
        ArrayList arrayList3 = null;
        String str3 = null;
        ArrayList<Integer> arrayList4 = null;
        String str4 = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 2:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    arrayList4 = com.google.android.gms.common.internal.safeparcel.zzb.zzD(parcel, zzaX);
                    break;
                case 4:
                    arrayList3 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, zza.C0413zza.CREATOR);
                    break;
                case 5:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 6:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    arrayList2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, zza.C0413zza.CREATOR);
                    break;
                case 8:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 9:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, zza.C0413zza.CREATOR);
                    break;
                case 1000:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zza(i2, str4, arrayList4, i, str3, arrayList3, str2, arrayList2, str, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkO */
    public zza[] newArray(int i) {
        return new zza[i];
    }
}
