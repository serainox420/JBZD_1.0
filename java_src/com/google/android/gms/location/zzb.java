package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.WorkSource;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzb implements Parcelable.Creator<zza> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zza zzaVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, zzaVar.getIntervalMillis());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzaVar.zzHX());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) zzaVar.zzHY(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzaVar.getTag(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, zzaVar.zzHZ(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, zzaVar.zzIa());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, zzaVar.getAccountName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, zzaVar.zzIb());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgF */
    public zza createFromParcel(Parcel parcel) {
        long j = 0;
        boolean z = false;
        String str = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int[] iArr = null;
        String str2 = null;
        WorkSource workSource = null;
        boolean z2 = false;
        long j2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    j2 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 2:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 3:
                    workSource = (WorkSource) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, WorkSource.CREATOR);
                    break;
                case 4:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    iArr = com.google.android.gms.common.internal.safeparcel.zzb.zzw(parcel, zzaX);
                    break;
                case 6:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 7:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 8:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zza(j2, z2, workSource, str2, iArr, z, str, j);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzka */
    public zza[] newArray(int i) {
        return new zza[i];
    }
}
