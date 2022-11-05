package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
/* loaded from: classes2.dex */
public class zzbjs implements Parcelable.Creator<zzbjr> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzbjr zzbjrVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzbjrVar.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, zzbjrVar.id);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzbjrVar.centerX);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzbjrVar.centerY);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzbjrVar.width);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzbjrVar.height);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzbjrVar.zzbOY);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, zzbjrVar.zzbOZ);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, (Parcelable[]) zzbjrVar.zzbPa, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, zzbjrVar.zzbPb);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 11, zzbjrVar.zzbPc);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 12, zzbjrVar.zzbPd);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzjN */
    public zzbjr createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        int i2 = 0;
        float f = BitmapDescriptorFactory.HUE_RED;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        float f3 = BitmapDescriptorFactory.HUE_RED;
        float f4 = BitmapDescriptorFactory.HUE_RED;
        float f5 = BitmapDescriptorFactory.HUE_RED;
        float f6 = BitmapDescriptorFactory.HUE_RED;
        zzbjx[] zzbjxVarArr = null;
        float f7 = BitmapDescriptorFactory.HUE_RED;
        float f8 = BitmapDescriptorFactory.HUE_RED;
        float f9 = BitmapDescriptorFactory.HUE_RED;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    f = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 4:
                    f2 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 5:
                    f3 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 6:
                    f4 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 7:
                    f5 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 8:
                    f6 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 9:
                    zzbjxVarArr = (zzbjx[]) com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX, zzbjx.CREATOR);
                    break;
                case 10:
                    f7 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 11:
                    f8 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                case 12:
                    f9 = com.google.android.gms.common.internal.safeparcel.zzb.zzl(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzbjr(i, i2, f, f2, f3, f4, f5, f6, zzbjxVarArr, f7, f8, f9);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzoi */
    public zzbjr[] newArray(int i) {
        return new zzbjr[i];
    }
}
