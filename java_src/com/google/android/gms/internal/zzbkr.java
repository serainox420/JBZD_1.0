package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2.dex */
public class zzbkr implements Parcelable.Creator<zzbkq> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzbkq zzbkqVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzbkqVar.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable[]) zzbkqVar.zzbPH, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) zzbkqVar.zzbPx, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, (Parcelable) zzbkqVar.zzbPy, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzbkqVar.zzbPA, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzbkqVar.zzbPB);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzbkqVar.zzbPr, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, zzbkqVar.zzbPI);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjW */
    public zzbkq createFromParcel(Parcel parcel) {
        boolean z = false;
        String str = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        float f = BitmapDescriptorFactory.HUE_RED;
        String str2 = null;
        zzbkd zzbkdVar = null;
        zzbkd zzbkdVar2 = null;
        zzbkl[] zzbklVarArr = null;
        int i = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    zzbklVarArr = (zzbkl[]) com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX, zzbkl.CREATOR);
                    break;
                case 3:
                    zzbkdVar2 = (zzbkd) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzbkd.CREATOR);
                    break;
                case 4:
                    zzbkdVar = (zzbkd) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzbkd.CREATOR);
                    break;
                case 5:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    f = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 7:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 8:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzbkq(i, zzbklVarArr, zzbkdVar2, zzbkdVar, str2, f, str, z);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzos */
    public zzbkq[] newArray(int i) {
        return new zzbkq[i];
    }
}
