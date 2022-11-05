package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzbmo implements Parcelable.Creator<zzbmn> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzbmn zzbmnVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzbmnVar.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzbmnVar.zzWc(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzbmnVar.getAccessToken(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, Long.valueOf(zzbmnVar.zzWd()), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzbmnVar.zzWe(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, Long.valueOf(zzbmnVar.zzWf()), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzlH */
    public zzbmn createFromParcel(Parcel parcel) {
        Long l = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        String str = null;
        Long l2 = null;
        String str2 = null;
        String str3 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    l2 = com.google.android.gms.common.internal.safeparcel.zzb.zzj(parcel, zzaX);
                    break;
                case 5:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    l = com.google.android.gms.common.internal.safeparcel.zzb.zzj(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzbmn(i, str3, str2, l2, str, l);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzqo */
    public zzbmn[] newArray(int i) {
        return new zzbmn[i];
    }
}
