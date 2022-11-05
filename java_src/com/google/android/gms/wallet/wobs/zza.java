package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.maps.model.LatLng;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zza implements Parcelable.Creator<CommonWalletObject> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(CommonWalletObject commonWalletObject, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, commonWalletObject.zzkl, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, commonWalletObject.zzbQD, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, commonWalletObject.name, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, commonWalletObject.zzbQx, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, commonWalletObject.zzbQz, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, commonWalletObject.zzbQA, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, commonWalletObject.zzbQB, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, commonWalletObject.zzbQC, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 10, commonWalletObject.state);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 11, commonWalletObject.zzbQE, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 12, (Parcelable) commonWalletObject.zzbQF, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 13, commonWalletObject.zzbQG, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 14, commonWalletObject.zzbQH, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 15, commonWalletObject.zzbQI, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 16, commonWalletObject.zzbQJ, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 17, commonWalletObject.zzbQK);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 18, commonWalletObject.zzbQL, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 19, commonWalletObject.zzbQM, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 20, commonWalletObject.zzbQN, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzkB */
    public CommonWalletObject createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        int i = 0;
        ArrayList zzyY = com.google.android.gms.common.util.zzb.zzyY();
        zzl zzlVar = null;
        ArrayList zzyY2 = com.google.android.gms.common.util.zzb.zzyY();
        String str9 = null;
        String str10 = null;
        ArrayList zzyY3 = com.google.android.gms.common.util.zzb.zzyY();
        boolean z = false;
        ArrayList zzyY4 = com.google.android.gms.common.util.zzb.zzyY();
        ArrayList zzyY5 = com.google.android.gms.common.util.zzb.zzyY();
        ArrayList zzyY6 = com.google.android.gms.common.util.zzb.zzyY();
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
                    str5 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    str6 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 8:
                    str7 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 9:
                    str8 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 10:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 11:
                    zzyY = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, zzp.CREATOR);
                    break;
                case 12:
                    zzlVar = (zzl) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzl.CREATOR);
                    break;
                case 13:
                    zzyY2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, LatLng.CREATOR);
                    break;
                case 14:
                    str9 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 15:
                    str10 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 16:
                    zzyY3 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, zzd.CREATOR);
                    break;
                case 17:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 18:
                    zzyY4 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, zzn.CREATOR);
                    break;
                case 19:
                    zzyY5 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, zzj.CREATOR);
                    break;
                case 20:
                    zzyY6 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, zzn.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new CommonWalletObject(str, str2, str3, str4, str5, str6, str7, str8, i, zzyY, zzlVar, zzyY2, str9, str10, zzyY3, z, zzyY4, zzyY5, zzyY6);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzpa */
    public CommonWalletObject[] newArray(int i) {
        return new CommonWalletObject[i];
    }
}
