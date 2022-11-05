package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzmo implements Parcelable.Creator<zzmn> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzmn zzmnVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzmnVar.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzmnVar.zzNJ, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzmnVar.body, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzb(parcel, 4, zzmnVar.zzKF, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 5, zzmnVar.errorCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zzb(parcel, 6, zzmnVar.zzKG, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzmnVar.zzSm);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, zzmnVar.zzSn);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, zzmnVar.zzSo);
        com.google.android.gms.common.internal.safeparcel.zzc.zzb(parcel, 10, zzmnVar.zzSp, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 11, zzmnVar.zzKL);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 12, zzmnVar.orientation);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 13, zzmnVar.zzSq, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 14, zzmnVar.zzSr);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 15, zzmnVar.zzSs, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 18, zzmnVar.zzSt);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 19, zzmnVar.zzSu, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 21, zzmnVar.zzSv, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 22, zzmnVar.zzSw);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 23, zzmnVar.zzzB);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 24, zzmnVar.zzRG);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 25, zzmnVar.zzSx);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 26, zzmnVar.zzSy);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 28, (Parcelable) zzmnVar.zzSz, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 29, zzmnVar.zzSA, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 30, zzmnVar.zzSB, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 31, zzmnVar.zzzC);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 32, zzmnVar.zzzD);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 33, (Parcelable) zzmnVar.zzSC, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzb(parcel, 34, zzmnVar.zzSD, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzb(parcel, 35, zzmnVar.zzSE, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 36, zzmnVar.zzSF);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 37, (Parcelable) zzmnVar.zzSG, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 38, zzmnVar.zzRV);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 39, zzmnVar.zzRW, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzb(parcel, 40, zzmnVar.zzKI, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 42, zzmnVar.zzKJ);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 43, zzmnVar.zzSH, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 44, (Parcelable) zzmnVar.zzSI, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 45, zzmnVar.zzSJ, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 46, zzmnVar.zzSK);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 47, zzmnVar.zzSh);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzW */
    public zzmn[] newArray(int i) {
        return new zzmn[i];
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzo */
    public zzmn createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        ArrayList<String> arrayList = null;
        int i2 = 0;
        ArrayList<String> arrayList2 = null;
        long j = 0;
        boolean z = false;
        long j2 = 0;
        ArrayList<String> arrayList3 = null;
        long j3 = 0;
        int i3 = 0;
        String str3 = null;
        long j4 = 0;
        String str4 = null;
        boolean z2 = false;
        String str5 = null;
        String str6 = null;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        boolean z7 = false;
        zzmv zzmvVar = null;
        String str7 = null;
        String str8 = null;
        boolean z8 = false;
        boolean z9 = false;
        zzoo zzooVar = null;
        ArrayList<String> arrayList4 = null;
        ArrayList<String> arrayList5 = null;
        boolean z10 = false;
        zzmp zzmpVar = null;
        boolean z11 = false;
        String str9 = null;
        ArrayList<String> arrayList6 = null;
        boolean z12 = false;
        String str10 = null;
        zzor zzorVar = null;
        String str11 = null;
        boolean z13 = false;
        boolean z14 = false;
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
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzE(parcel, zzaX);
                    break;
                case 5:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 6:
                    arrayList2 = com.google.android.gms.common.internal.safeparcel.zzb.zzE(parcel, zzaX);
                    break;
                case 7:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 8:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 9:
                    j2 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 10:
                    arrayList3 = com.google.android.gms.common.internal.safeparcel.zzb.zzE(parcel, zzaX);
                    break;
                case 11:
                    j3 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 12:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 13:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 14:
                    j4 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 15:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 16:
                case 17:
                case 20:
                case 27:
                case 41:
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
                case 18:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 19:
                    str5 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 21:
                    str6 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 22:
                    z3 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 23:
                    z4 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 24:
                    z5 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 25:
                    z6 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 26:
                    z7 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 28:
                    zzmvVar = (zzmv) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzmv.CREATOR);
                    break;
                case 29:
                    str7 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 30:
                    str8 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 31:
                    z8 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 32:
                    z9 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 33:
                    zzooVar = (zzoo) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzoo.CREATOR);
                    break;
                case 34:
                    arrayList4 = com.google.android.gms.common.internal.safeparcel.zzb.zzE(parcel, zzaX);
                    break;
                case 35:
                    arrayList5 = com.google.android.gms.common.internal.safeparcel.zzb.zzE(parcel, zzaX);
                    break;
                case 36:
                    z10 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 37:
                    zzmpVar = (zzmp) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzmp.CREATOR);
                    break;
                case 38:
                    z11 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 39:
                    str9 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 40:
                    arrayList6 = com.google.android.gms.common.internal.safeparcel.zzb.zzE(parcel, zzaX);
                    break;
                case 42:
                    z12 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 43:
                    str10 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 44:
                    zzorVar = (zzor) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzor.CREATOR);
                    break;
                case 45:
                    str11 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 46:
                    z13 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 47:
                    z14 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzmn(i, str, str2, arrayList, i2, arrayList2, j, z, j2, arrayList3, j3, i3, str3, j4, str4, z2, str5, str6, z3, z4, z5, z6, z7, zzmvVar, str7, str8, z8, z9, zzooVar, arrayList4, arrayList5, z10, zzmpVar, z11, str9, arrayList6, z12, str10, zzorVar, str11, z13, z14);
    }
}
