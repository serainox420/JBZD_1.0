package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzc implements Parcelable.Creator<AdBreakStatus> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(AdBreakStatus adBreakStatus, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, adBreakStatus.getCurrentBreakTimeInMs());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, adBreakStatus.getCurrentBreakClipTimeInMs());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, adBreakStatus.getBreakId(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, adBreakStatus.getBreakClipId(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, adBreakStatus.getWhenSkippableInMs());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzap */
    public AdBreakStatus createFromParcel(Parcel parcel) {
        String str = null;
        long j = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        String str2 = null;
        long j2 = 0;
        long j3 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    j3 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 3:
                    j2 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 4:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 6:
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
        return new AdBreakStatus(j3, j2, str2, str, j);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbI */
    public AdBreakStatus[] newArray(int i) {
        return new AdBreakStatus[i];
    }
}
