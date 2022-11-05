package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzafp implements Parcelable.Creator<zzafo> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzafo zzafoVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzafoVar.zzaJT, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzafoVar.packageName, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, zzafoVar.uid);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzafoVar.moduleId, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 6, zzafoVar.zzaJU);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 7, zzafoVar.zzaJV);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, zzafoVar.zzaJW, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, zzafoVar.zzaJX, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 10, zzafoVar.zzaJY);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 11, zzafoVar.pid);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbC */
    public zzafo createFromParcel(Parcel parcel) {
        String str = null;
        int i = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i2 = 0;
        String str2 = null;
        int i3 = 0;
        int i4 = 0;
        String str3 = null;
        int i5 = 0;
        String str4 = null;
        String str5 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    str5 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    i5 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 5:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    i4 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 7:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 8:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 9:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 10:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 11:
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
        return new zzafo(str5, str4, i5, str3, i4, i3, str2, str, i2, i);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdR */
    public zzafo[] newArray(int i) {
        return new zzafo[i];
    }
}
