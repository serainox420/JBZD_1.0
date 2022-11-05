package com.google.android.gms.wearable.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzi implements Parcelable.Creator<zzh> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzh zzhVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzhVar.zzUk());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzhVar.zzUl());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzhVar.getValue(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkP */
    public zzh createFromParcel(Parcel parcel) {
        byte b = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str = null;
        byte b2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    b2 = com.google.android.gms.common.internal.safeparcel.zzb.zze(parcel, zzaX);
                    break;
                case 3:
                    b = com.google.android.gms.common.internal.safeparcel.zzb.zze(parcel, zzaX);
                    break;
                case 4:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzh(b2, b, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzpo */
    public zzh[] newArray(int i) {
        return new zzh[i];
    }
}
