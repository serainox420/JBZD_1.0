package com.google.android.gms.games.internal.game;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
/* loaded from: classes2.dex */
public class GameBadgeEntityCreator implements Parcelable.Creator<GameBadgeEntity> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(GameBadgeEntity gameBadgeEntity, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, gameBadgeEntity.getType());
        zzc.zza(parcel, 2, gameBadgeEntity.getTitle(), false);
        zzc.zza(parcel, 3, gameBadgeEntity.getDescription(), false);
        zzc.zza(parcel, 4, (Parcelable) gameBadgeEntity.getIconImageUri(), i, false);
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfL */
    public GameBadgeEntity createFromParcel(Parcel parcel) {
        Uri uri = null;
        int zzaY = zzb.zzaY(parcel);
        int i = 0;
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    str2 = zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                case 4:
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
        return new GameBadgeEntity(i, str2, str, uri);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zziP */
    public GameBadgeEntity[] newArray(int i) {
        return new GameBadgeEntity[i];
    }
}
