package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzb implements Parcelable.Creator<AdBreakInfo> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(AdBreakInfo adBreakInfo, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, adBreakInfo.getPlaybackPositionInMs());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, adBreakInfo.getId(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, adBreakInfo.getDurationInMs());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, adBreakInfo.isWatched());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, adBreakInfo.getBreakClipIds(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzao */
    public AdBreakInfo createFromParcel(Parcel parcel) {
        long j = 0;
        String[] strArr = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        boolean z = false;
        String str = null;
        long j2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    j2 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 3:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 5:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 6:
                    strArr = com.google.android.gms.common.internal.safeparcel.zzb.zzC(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new AdBreakInfo(j2, str, j, z, strArr);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbH */
    public AdBreakInfo[] newArray(int i) {
        return new AdBreakInfo[i];
    }
}
