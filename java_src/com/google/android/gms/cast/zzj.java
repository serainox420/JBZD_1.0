package com.google.android.gms.cast;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzj implements Parcelable.Creator<MediaMetadata> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(MediaMetadata mediaMetadata, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, mediaMetadata.getImages(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, mediaMetadata.zzaot, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, mediaMetadata.getMediaType());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzav */
    public MediaMetadata createFromParcel(Parcel parcel) {
        Bundle bundle = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, WebImage.CREATOR);
                    break;
                case 3:
                    bundle = com.google.android.gms.common.internal.safeparcel.zzb.zzs(parcel, zzaX);
                    break;
                case 4:
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
        return new MediaMetadata(arrayList, bundle, i);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbO */
    public MediaMetadata[] newArray(int i) {
        return new MediaMetadata[i];
    }
}
