package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzm implements Parcelable.Creator<MediaTrack> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(MediaTrack mediaTrack, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, mediaTrack.getId());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, mediaTrack.getType());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, mediaTrack.getContentId(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, mediaTrack.getContentType(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, mediaTrack.getName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, mediaTrack.getLanguage(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 8, mediaTrack.getSubtype());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, mediaTrack.zzamN, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzay */
    public MediaTrack createFromParcel(Parcel parcel) {
        int i = 0;
        String str = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        long j = 0;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 3:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 4:
                    str5 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
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
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 9:
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
        return new MediaTrack(j, i2, str5, str4, str3, str2, i, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbT */
    public MediaTrack[] newArray(int i) {
        return new MediaTrack[i];
    }
}
