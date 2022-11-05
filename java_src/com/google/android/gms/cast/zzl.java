package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzl implements Parcelable.Creator<MediaStatus> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(MediaStatus mediaStatus, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) mediaStatus.getMediaInfo(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, mediaStatus.zzsy());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, mediaStatus.getCurrentItemId());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, mediaStatus.getPlaybackRate());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 6, mediaStatus.getPlayerState());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 7, mediaStatus.getIdleReason());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, mediaStatus.getStreamPosition());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, mediaStatus.zzaoM);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 10, mediaStatus.getStreamVolume());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 11, mediaStatus.isMute());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 12, mediaStatus.getActiveTrackIds(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 13, mediaStatus.getLoadingItemId());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 14, mediaStatus.getPreloadedItemId());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 15, mediaStatus.zzamN, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 16, mediaStatus.zzaoR);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 17, mediaStatus.zzaoS, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 18, mediaStatus.isPlayingAd());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 19, (Parcelable) mediaStatus.getAdBreakStatus(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 20, (Parcelable) mediaStatus.getVideoInfo(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzax */
    public MediaStatus createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        MediaInfo mediaInfo = null;
        long j = 0;
        int i = 0;
        double d = 0.0d;
        int i2 = 0;
        int i3 = 0;
        long j2 = 0;
        long j3 = 0;
        double d2 = 0.0d;
        boolean z = false;
        long[] jArr = null;
        int i4 = 0;
        int i5 = 0;
        String str = null;
        int i6 = 0;
        ArrayList arrayList = null;
        boolean z2 = false;
        AdBreakStatus adBreakStatus = null;
        VideoInfo videoInfo = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    mediaInfo = (MediaInfo) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, MediaInfo.CREATOR);
                    break;
                case 3:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 4:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 5:
                    d = com.google.android.gms.common.internal.safeparcel.zzb.zzn(parcel, zzaX);
                    break;
                case 6:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 7:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 8:
                    j2 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 9:
                    j3 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 10:
                    d2 = com.google.android.gms.common.internal.safeparcel.zzb.zzn(parcel, zzaX);
                    break;
                case 11:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 12:
                    jArr = com.google.android.gms.common.internal.safeparcel.zzb.zzx(parcel, zzaX);
                    break;
                case 13:
                    i4 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 14:
                    i5 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 15:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 16:
                    i6 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 17:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, MediaQueueItem.CREATOR);
                    break;
                case 18:
                    z2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 19:
                    adBreakStatus = (AdBreakStatus) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, AdBreakStatus.CREATOR);
                    break;
                case 20:
                    videoInfo = (VideoInfo) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, VideoInfo.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new MediaStatus(mediaInfo, j, i, d, i2, i3, j2, j3, d2, z, jArr, i4, i5, str, i6, arrayList, z2, adBreakStatus, videoInfo);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbR */
    public MediaStatus[] newArray(int i) {
        return new MediaStatus[i];
    }
}
