package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
/* loaded from: classes2.dex */
public class StockProfileImageEntityCreator implements Parcelable.Creator<StockProfileImageEntity> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(StockProfileImageEntity stockProfileImageEntity, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, stockProfileImageEntity.getImageUrl(), false);
        zzc.zza(parcel, 2, (Parcelable) stockProfileImageEntity.zzEo(), i, false);
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfQ */
    public StockProfileImageEntity createFromParcel(Parcel parcel) {
        Uri uri = null;
        int zzaY = zzb.zzaY(parcel);
        String str = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                case 2:
                    uri = (Uri) zzb.zza(parcel, zzaX, Uri.CREATOR);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new StockProfileImageEntity(str, uri);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zziY */
    public StockProfileImageEntity[] newArray(int i) {
        return new StockProfileImageEntity[i];
    }
}
