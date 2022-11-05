package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzk implements Parcelable.Creator<MediaQueueItem> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(MediaQueueItem mediaQueueItem, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) mediaQueueItem.getMedia(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, mediaQueueItem.getItemId());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, mediaQueueItem.getAutoplay());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, mediaQueueItem.getStartTime());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, mediaQueueItem.getPlaybackDuration());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, mediaQueueItem.getPreloadTime());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, mediaQueueItem.getActiveTrackIds(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, mediaQueueItem.zzamN, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzaw */
    public MediaQueueItem createFromParcel(Parcel parcel) {
        boolean z = false;
        String str = null;
        double d = 0.0d;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        long[] jArr = null;
        double d2 = 0.0d;
        double d3 = 0.0d;
        int i = 0;
        MediaInfo mediaInfo = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    mediaInfo = (MediaInfo) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, MediaInfo.CREATOR);
                    break;
                case 3:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 4:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 5:
                    d3 = com.google.android.gms.common.internal.safeparcel.zzb.zzn(parcel, zzaX);
                    break;
                case 6:
                    d2 = com.google.android.gms.common.internal.safeparcel.zzb.zzn(parcel, zzaX);
                    break;
                case 7:
                    d = com.google.android.gms.common.internal.safeparcel.zzb.zzn(parcel, zzaX);
                    break;
                case 8:
                    jArr = com.google.android.gms.common.internal.safeparcel.zzb.zzx(parcel, zzaX);
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
        return new MediaQueueItem(mediaInfo, i, z, d3, d2, d, jArr, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbQ */
    public MediaQueueItem[] newArray(int i) {
        return new MediaQueueItem[i];
    }
}
