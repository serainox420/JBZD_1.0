package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2.dex */
public class zzbki implements Parcelable.Creator<zzbkh> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzbkh zzbkhVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzbkhVar.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable[]) zzbkhVar.zzbPw, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) zzbkhVar.zzbPx, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable) zzbkhVar.zzbPy, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, (Parcelable) zzbkhVar.zzbPz, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzbkhVar.zzbPA, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzbkhVar.zzbPB);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, zzbkhVar.zzbPr, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 9, zzbkhVar.zzbPC);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, zzbkhVar.zzbPD);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 11, zzbkhVar.zzbPE);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 12, zzbkhVar.zzbPF);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjS */
    public zzbkh createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        zzbkq[] zzbkqVarArr = null;
        zzbkd zzbkdVar = null;
        zzbkd zzbkdVar2 = null;
        zzbkd zzbkdVar3 = null;
        String str = null;
        float f = BitmapDescriptorFactory.HUE_RED;
        String str2 = null;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        int i4 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    zzbkqVarArr = (zzbkq[]) com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX, zzbkq.CREATOR);
                    break;
                case 3:
                    zzbkdVar = (zzbkd) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzbkd.CREATOR);
                    break;
                case 4:
                    zzbkdVar2 = (zzbkd) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzbkd.CREATOR);
                    break;
                case 5:
                    zzbkdVar3 = (zzbkd) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzbkd.CREATOR);
                    break;
                case 6:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    f = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 8:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 9:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 10:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 11:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 12:
                    i4 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzbkh(i, zzbkqVarArr, zzbkdVar, zzbkdVar2, zzbkdVar3, str, f, str2, i2, z, i3, i4);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzoo */
    public zzbkh[] newArray(int i) {
        return new zzbkh[i];
    }
}
