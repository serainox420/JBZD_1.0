package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzb implements Parcelable.Creator<zza> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zza zzaVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzaVar.name, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzaVar.zzbhv, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzaVar.zzbhw, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzaVar.zzbhx, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzaVar.zzUI, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzaVar.zzbPJ, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, zzaVar.zzbPK, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, zzaVar.zzbhC, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, zzaVar.phoneNumber, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 11, zzaVar.zzbhE);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 12, zzaVar.zzbhF, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjX */
    public zza createFromParcel(Parcel parcel) {
        String str = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        boolean z = false;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    str10 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str9 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    str8 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    str7 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    str6 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    str5 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 8:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 9:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 10:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 11:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 12:
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
        return new zza(str10, str9, str8, str7, str6, str5, str4, str3, str2, z, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzot */
    public zza[] newArray(int i) {
        return new zza[i];
    }
}
