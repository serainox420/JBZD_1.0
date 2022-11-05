package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzi implements Parcelable.Creator<MediaInfo> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(MediaInfo mediaInfo, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, mediaInfo.getContentId(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, mediaInfo.getStreamType());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, mediaInfo.getContentType(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, (Parcelable) mediaInfo.getMetadata(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, mediaInfo.getStreamDuration());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 7, mediaInfo.getMediaTracks(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 8, (Parcelable) mediaInfo.getTextTrackStyle(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 9, mediaInfo.zzamN, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 10, mediaInfo.getAdBreaks(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 11, mediaInfo.getAdBreakClips(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzau */
    public MediaInfo createFromParcel(Parcel parcel) {
        ArrayList arrayList = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        long j = 0;
        ArrayList arrayList2 = null;
        String str = null;
        TextTrackStyle textTrackStyle = null;
        ArrayList arrayList3 = null;
        MediaMetadata mediaMetadata = null;
        String str2 = null;
        String str3 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    str3 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 4:
                    str2 = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    mediaMetadata = (MediaMetadata) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, MediaMetadata.CREATOR);
                    break;
                case 6:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 7:
                    arrayList3 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, MediaTrack.CREATOR);
                    break;
                case 8:
                    textTrackStyle = (TextTrackStyle) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, TextTrackStyle.CREATOR);
                    break;
                case 9:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 10:
                    arrayList2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, AdBreakInfo.CREATOR);
                    break;
                case 11:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, AdBreakClipInfo.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new MediaInfo(str3, i, str2, mediaMetadata, j, arrayList3, textTrackStyle, str, arrayList2, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbN */
    public MediaInfo[] newArray(int i) {
        return new MediaInfo[i];
    }
}
