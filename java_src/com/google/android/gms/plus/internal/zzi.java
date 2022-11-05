package com.google.android.gms.plus.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzi implements Parcelable.Creator<zzh> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzh zzhVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, zzhVar.getAccountName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzhVar.zzPb(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzhVar.zzPc(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzhVar.zzPd(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzhVar.zzPe(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzhVar.zzPf(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzhVar.zzur(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzhVar.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, zzhVar.zzPg(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, (Parcelable) zzhVar.zzPh(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjd */
    public zzh createFromParcel(Parcel parcel) {
        PlusCommonExtras plusCommonExtras = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String[] strArr = null;
        String[] strArr2 = null;
        String[] strArr3 = null;
        String str5 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    str5 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 2:
                    strArr3 = com.google.android.gms.common.internal.safeparcel.zzb.zzC(parcel, zzaX);
                    break;
                case 3:
                    strArr2 = com.google.android.gms.common.internal.safeparcel.zzb.zzC(parcel, zzaX);
                    break;
                case 4:
                    strArr = com.google.android.gms.common.internal.safeparcel.zzb.zzC(parcel, zzaX);
                    break;
                case 5:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 8:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 9:
                    plusCommonExtras = (PlusCommonExtras) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, PlusCommonExtras.CREATOR);
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
        return new zzh(i, str5, strArr3, strArr2, strArr, str4, str3, str2, str, plusCommonExtras);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zznb */
    public zzh[] newArray(int i) {
        return new zzh[i];
    }
}
