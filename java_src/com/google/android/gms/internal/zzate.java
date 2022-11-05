package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzate implements Parcelable.Creator<zzatd> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzatd zzatdVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzatdVar.packageName, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzatdVar.zzbqL, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzatdVar.zzbhN, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzatdVar.zzbqM, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzatdVar.zzbqN);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzatdVar.zzbqO);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, zzatdVar.zzbqP, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, zzatdVar.zzbqQ);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, zzatdVar.zzbqR);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 11, zzatdVar.zzbqS);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 12, zzatdVar.zzbqT, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 13, zzatdVar.zzbqU);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhQ */
    public zzatd createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        long j = 0;
        long j2 = 0;
        String str5 = null;
        boolean z = true;
        boolean z2 = false;
        long j3 = -2147483648L;
        String str6 = null;
        long j4 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 7:
                    j2 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 8:
                    str5 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 9:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 10:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 11:
                    j3 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 12:
                    str6 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 13:
                    j4 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzatd(str, str2, str3, str4, j, j2, str5, z, z2, j3, str6, j4);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzlz */
    public zzatd[] newArray(int i) {
        return new zzatd[i];
    }
}
