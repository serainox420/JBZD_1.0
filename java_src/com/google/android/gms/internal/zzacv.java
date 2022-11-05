package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.internal.zzacs;
import com.google.android.gms.internal.zzacw;
/* loaded from: classes2.dex */
public class zzacv implements Parcelable.Creator<zzacw.zzb> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzacw.zzb zzbVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, zzbVar.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzbVar.zzaB, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) zzbVar.zzaHl, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbf */
    public zzacw.zzb createFromParcel(Parcel parcel) {
        zzacs.zza zzaVar = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        String str = null;
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
                    zzaVar = (zzacs.zza) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, zzacs.zza.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzacw.zzb(i, str, zzaVar);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdj */
    public zzacw.zzb[] newArray(int i) {
        return new zzacw.zzb[i];
    }
}
