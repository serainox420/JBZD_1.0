package com.google.android.gms.internal;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzee implements Parcelable.Creator<zzec> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzec zzecVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzecVar.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzecVar.zzyT);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzecVar.extras, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, zzecVar.zzyU);
        com.google.android.gms.common.internal.safeparcel.zzc.zzb(parcel, 5, zzecVar.zzyV, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzecVar.zzyW);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 7, zzecVar.zzyX);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, zzecVar.zzyY);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, zzecVar.zzyZ, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, (Parcelable) zzecVar.zzza, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 11, (Parcelable) zzecVar.zzzb, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 12, zzecVar.zzzc, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 13, zzecVar.zzzd, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 14, zzecVar.zzze, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzb(parcel, 15, zzecVar.zzzf, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 16, zzecVar.zzzg, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 17, zzecVar.zzzh, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 18, zzecVar.zzzi);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zze */
    public zzec createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        long j = 0;
        Bundle bundle = null;
        int i2 = 0;
        ArrayList<String> arrayList = null;
        boolean z = false;
        int i3 = 0;
        boolean z2 = false;
        String str = null;
        zzfp zzfpVar = null;
        Location location = null;
        String str2 = null;
        Bundle bundle2 = null;
        Bundle bundle3 = null;
        ArrayList<String> arrayList2 = null;
        String str3 = null;
        String str4 = null;
        boolean z3 = false;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 3:
                    bundle = com.google.android.gms.common.internal.safeparcel.zzb.zzs(parcel, zzaX);
                    break;
                case 4:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 5:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzE(parcel, zzaX);
                    break;
                case 6:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 7:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 8:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 9:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 10:
                    zzfpVar = (zzfp) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzfp.CREATOR);
                    break;
                case 11:
                    location = (Location) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Location.CREATOR);
                    break;
                case 12:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 13:
                    bundle2 = com.google.android.gms.common.internal.safeparcel.zzb.zzs(parcel, zzaX);
                    break;
                case 14:
                    bundle3 = com.google.android.gms.common.internal.safeparcel.zzb.zzs(parcel, zzaX);
                    break;
                case 15:
                    arrayList2 = com.google.android.gms.common.internal.safeparcel.zzb.zzE(parcel, zzaX);
                    break;
                case 16:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 17:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 18:
                    z3 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzec(i, j, bundle, i2, arrayList, z, i3, z2, str, zzfpVar, location, str2, bundle2, bundle3, arrayList2, str3, str4, z3);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzv */
    public zzec[] newArray(int i) {
        return new zzec[i];
    }
}
