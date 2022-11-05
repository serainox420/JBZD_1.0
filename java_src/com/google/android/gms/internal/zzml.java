package com.google.android.gms.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzml implements Parcelable.Creator<zzmk> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzmk zzmkVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzmkVar.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzmkVar.zzRx, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) zzmkVar.zzRy, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable) zzmkVar.zzvr, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzmkVar.zzvl, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, (Parcelable) zzmkVar.applicationInfo, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, (Parcelable) zzmkVar.zzRz, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, zzmkVar.zzRA, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, zzmkVar.zzRB, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, zzmkVar.zzRC, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 11, (Parcelable) zzmkVar.zzvn, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 12, zzmkVar.zzRD, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 13, zzmkVar.zzRE);
        com.google.android.gms.common.internal.safeparcel.zzc.zzb(parcel, 14, zzmkVar.zzvK, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 15, zzmkVar.zzRF, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 16, zzmkVar.zzRG);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 18, zzmkVar.zzRH);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 19, zzmkVar.zzRI);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 20, zzmkVar.zzxk);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 21, zzmkVar.zzRJ, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 25, zzmkVar.zzRK);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 26, zzmkVar.zzRL, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzb(parcel, 27, zzmkVar.zzRM, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 28, zzmkVar.zzvk, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 29, (Parcelable) zzmkVar.zzvF, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzb(parcel, 30, zzmkVar.zzRN, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 31, zzmkVar.zzRO);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 32, (Parcelable) zzmkVar.zzRP, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 33, zzmkVar.zzRQ, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 34, zzmkVar.zzRR);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 35, zzmkVar.zzRS);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 36, zzmkVar.zzRT);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 37, zzmkVar.zzRU);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 38, zzmkVar.zzRV);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 39, zzmkVar.zzRW, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 40, zzmkVar.zzRX);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 41, zzmkVar.zzRY, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 42, zzmkVar.zzKJ);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 43, zzmkVar.zzRZ);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 44, zzmkVar.zzSa, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 45, zzmkVar.zzSb, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 46, (Parcelable) zzmkVar.zzvH, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 47, zzmkVar.zzSc);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 48, zzmkVar.zzSd, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 49, zzmkVar.zzSe, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 50, zzmkVar.zzSf, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 51, zzmkVar.zzSg, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 52, zzmkVar.zzSh);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzV */
    public zzmk[] newArray(int i) {
        return new zzmk[i];
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzn */
    public zzmk createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        Bundle bundle = null;
        zzec zzecVar = null;
        zzeg zzegVar = null;
        String str = null;
        ApplicationInfo applicationInfo = null;
        PackageInfo packageInfo = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        zzqh zzqhVar = null;
        Bundle bundle2 = null;
        int i2 = 0;
        ArrayList<String> arrayList = null;
        Bundle bundle3 = null;
        boolean z = false;
        int i3 = 0;
        int i4 = 0;
        float f = BitmapDescriptorFactory.HUE_RED;
        String str5 = null;
        long j = 0;
        String str6 = null;
        ArrayList<String> arrayList2 = null;
        String str7 = null;
        zzhc zzhcVar = null;
        ArrayList<String> arrayList3 = null;
        long j2 = 0;
        zzmr zzmrVar = null;
        String str8 = null;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        boolean z2 = false;
        int i5 = 0;
        int i6 = 0;
        boolean z3 = false;
        boolean z4 = false;
        String str9 = null;
        String str10 = null;
        boolean z5 = false;
        int i7 = 0;
        Bundle bundle4 = null;
        String str11 = null;
        zzfc zzfcVar = null;
        boolean z6 = false;
        Bundle bundle5 = null;
        String str12 = null;
        String str13 = null;
        String str14 = null;
        boolean z7 = false;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    bundle = com.google.android.gms.common.internal.safeparcel.zzb.zzs(parcel, zzaX);
                    break;
                case 3:
                    zzecVar = (zzec) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzec.CREATOR);
                    break;
                case 4:
                    zzegVar = (zzeg) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzeg.CREATOR);
                    break;
                case 5:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    applicationInfo = (ApplicationInfo) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, ApplicationInfo.CREATOR);
                    break;
                case 7:
                    packageInfo = (PackageInfo) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, PackageInfo.CREATOR);
                    break;
                case 8:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 9:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 10:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 11:
                    zzqhVar = (zzqh) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzqh.CREATOR);
                    break;
                case 12:
                    bundle2 = com.google.android.gms.common.internal.safeparcel.zzb.zzs(parcel, zzaX);
                    break;
                case 13:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 14:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzE(parcel, zzaX);
                    break;
                case 15:
                    bundle3 = com.google.android.gms.common.internal.safeparcel.zzb.zzs(parcel, zzaX);
                    break;
                case 16:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 17:
                case 22:
                case 23:
                case 24:
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
                case 18:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 19:
                    i4 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 20:
                    f = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 21:
                    str5 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 25:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 26:
                    str6 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 27:
                    arrayList2 = com.google.android.gms.common.internal.safeparcel.zzb.zzE(parcel, zzaX);
                    break;
                case 28:
                    str7 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 29:
                    zzhcVar = (zzhc) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzhc.CREATOR);
                    break;
                case 30:
                    arrayList3 = com.google.android.gms.common.internal.safeparcel.zzb.zzE(parcel, zzaX);
                    break;
                case 31:
                    j2 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 32:
                    zzmrVar = (zzmr) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzmr.CREATOR);
                    break;
                case 33:
                    str8 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 34:
                    f2 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 35:
                    i5 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 36:
                    i6 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 37:
                    z3 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 38:
                    z4 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 39:
                    str9 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 40:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 41:
                    str10 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 42:
                    z5 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 43:
                    i7 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 44:
                    bundle4 = com.google.android.gms.common.internal.safeparcel.zzb.zzs(parcel, zzaX);
                    break;
                case 45:
                    str11 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 46:
                    zzfcVar = (zzfc) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzfc.CREATOR);
                    break;
                case 47:
                    z6 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 48:
                    bundle5 = com.google.android.gms.common.internal.safeparcel.zzb.zzs(parcel, zzaX);
                    break;
                case 49:
                    str12 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 50:
                    str13 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 51:
                    str14 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 52:
                    z7 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzmk(i, bundle, zzecVar, zzegVar, str, applicationInfo, packageInfo, str2, str3, str4, zzqhVar, bundle2, i2, arrayList, bundle3, z, i3, i4, f, str5, j, str6, arrayList2, str7, zzhcVar, arrayList3, j2, zzmrVar, str8, f2, z2, i5, i6, z3, z4, str9, str10, z5, i7, bundle4, str11, zzfcVar, z6, bundle5, str12, str13, str14, z7);
    }
}
