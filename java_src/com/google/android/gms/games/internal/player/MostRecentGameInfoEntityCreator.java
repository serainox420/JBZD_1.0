package com.google.android.gms.games.internal.player;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
/* loaded from: classes2.dex */
public class MostRecentGameInfoEntityCreator implements Parcelable.Creator<MostRecentGameInfoEntity> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(MostRecentGameInfoEntity mostRecentGameInfoEntity, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, mostRecentGameInfoEntity.zzGc(), false);
        zzc.zza(parcel, 2, mostRecentGameInfoEntity.zzGd(), false);
        zzc.zza(parcel, 3, mostRecentGameInfoEntity.zzGe());
        zzc.zza(parcel, 4, (Parcelable) mostRecentGameInfoEntity.zzGf(), i, false);
        zzc.zza(parcel, 5, (Parcelable) mostRecentGameInfoEntity.zzGg(), i, false);
        zzc.zza(parcel, 6, (Parcelable) mostRecentGameInfoEntity.zzGh(), i, false);
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfO */
    public MostRecentGameInfoEntity createFromParcel(Parcel parcel) {
        Uri uri = null;
        int zzaY = zzb.zzaY(parcel);
        long j = 0;
        Uri uri2 = null;
        Uri uri3 = null;
        String str = null;
        String str2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    str2 = zzb.zzq(parcel, zzaX);
                    break;
                case 2:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    j = zzb.zzi(parcel, zzaX);
                    break;
                case 4:
                    uri3 = (Uri) zzb.zza(parcel, zzaX, Uri.CREATOR);
                    break;
                case 5:
                    uri2 = (Uri) zzb.zza(parcel, zzaX, Uri.CREATOR);
                    break;
                case 6:
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
        return new MostRecentGameInfoEntity(str2, str, j, uri3, uri2, uri);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zziV */
    public MostRecentGameInfoEntity[] newArray(int i) {
        return new MostRecentGameInfoEntity[i];
    }
}
