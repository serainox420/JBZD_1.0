package com.google.android.gms.games.internal.game;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
/* loaded from: classes2.dex */
public class ScreenshotEntityCreator implements Parcelable.Creator<ScreenshotEntity> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(ScreenshotEntity screenshotEntity, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, (Parcelable) screenshotEntity.getUri(), i, false);
        zzc.zzc(parcel, 2, screenshotEntity.getWidth());
        zzc.zzc(parcel, 3, screenshotEntity.getHeight());
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfM */
    public ScreenshotEntity createFromParcel(Parcel parcel) {
        int zzg;
        int i;
        Uri uri;
        int i2 = 0;
        int zzaY = zzb.zzaY(parcel);
        Uri uri2 = null;
        int i3 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    int i4 = i2;
                    i = i3;
                    uri = (Uri) zzb.zza(parcel, zzaX, Uri.CREATOR);
                    zzg = i4;
                    break;
                case 2:
                    int zzg2 = zzb.zzg(parcel, zzaX);
                    uri = uri2;
                    zzg = i2;
                    i = zzg2;
                    break;
                case 3:
                    zzg = zzb.zzg(parcel, zzaX);
                    i = i3;
                    uri = uri2;
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    zzg = i2;
                    i = i3;
                    uri = uri2;
                    break;
            }
            uri2 = uri;
            i3 = i;
            i2 = zzg;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new ScreenshotEntity(uri2, i3, i2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zziS */
    public ScreenshotEntity[] newArray(int i) {
        return new ScreenshotEntity[i];
    }
}
