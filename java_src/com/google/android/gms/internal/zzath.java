package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzath implements Parcelable.Creator<zzatg> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzatg zzatgVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzatgVar.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzatgVar.packageName, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzatgVar.zzbqV, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable) zzatgVar.zzbqW, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzatgVar.zzbqX);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzatgVar.zzbqY);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzatgVar.zzbqZ, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, (Parcelable) zzatgVar.zzbra, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, zzatgVar.zzbrb);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, (Parcelable) zzatgVar.zzbrc, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 11, zzatgVar.zzbrd);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 12, (Parcelable) zzatgVar.zzbre, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhR */
    public zzatg createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        zzauq zzauqVar = null;
        long j = 0;
        boolean z = false;
        String str3 = null;
        zzatq zzatqVar = null;
        long j2 = 0;
        zzatq zzatqVar2 = null;
        long j3 = 0;
        zzatq zzatqVar3 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    zzauqVar = (zzauq) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzauq.CREATOR);
                    break;
                case 5:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 6:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 7:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 8:
                    zzatqVar = (zzatq) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzatq.CREATOR);
                    break;
                case 9:
                    j2 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 10:
                    zzatqVar2 = (zzatq) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzatq.CREATOR);
                    break;
                case 11:
                    j3 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 12:
                    zzatqVar3 = (zzatq) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzatq.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzatg(i, str, str2, zzauqVar, j, z, str3, zzatqVar, j2, zzatqVar2, j3, zzatqVar3);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzlA */
    public zzatg[] newArray(int i) {
        return new zzatg[i];
    }
}
