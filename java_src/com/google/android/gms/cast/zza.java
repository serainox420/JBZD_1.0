package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zza implements Parcelable.Creator<AdBreakClipInfo> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(AdBreakClipInfo adBreakClipInfo, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, adBreakClipInfo.getId(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, adBreakClipInfo.getTitle(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, adBreakClipInfo.getDurationInMs());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, adBreakClipInfo.getContentUrl(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, adBreakClipInfo.getMimeType(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, adBreakClipInfo.getClickThroughUrl(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, adBreakClipInfo.zzsf(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzan */
    public AdBreakClipInfo createFromParcel(Parcel parcel) {
        String str = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        long j = 0;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    str6 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str5 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 5:
                    str4 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 8:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new AdBreakClipInfo(str6, str5, j, str4, str3, str2, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbG */
    public AdBreakClipInfo[] newArray(int i) {
        return new AdBreakClipInfo[i];
    }
}
