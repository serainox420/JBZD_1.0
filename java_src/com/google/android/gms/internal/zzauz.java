package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzauz implements Parcelable.Creator<zzauy> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzauy zzauyVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, zzauyVar.getName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzauyVar.getDescription(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzauyVar.getDeviceId(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzauyVar.zzNK());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzauyVar.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhV */
    public zzauy createFromParcel(Parcel parcel) {
        byte b = 0;
        String str = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str2 = null;
        String str3 = null;
        int i = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 2:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    b = com.google.android.gms.common.internal.safeparcel.zzb.zze(parcel, zzaX);
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
        return new zzauy(i, str3, str2, str, b);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzlF */
    public zzauy[] newArray(int i) {
        return new zzauy[i];
    }
}
