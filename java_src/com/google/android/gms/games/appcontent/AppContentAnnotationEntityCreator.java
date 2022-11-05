package com.google.android.gms.games.appcontent;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
/* loaded from: classes2.dex */
public class AppContentAnnotationEntityCreator implements Parcelable.Creator<AppContentAnnotationEntity> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(AppContentAnnotationEntity appContentAnnotationEntity, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, appContentAnnotationEntity.getDescription(), false);
        zzc.zza(parcel, 2, (Parcelable) appContentAnnotationEntity.zzEo(), i, false);
        zzc.zza(parcel, 3, appContentAnnotationEntity.getTitle(), false);
        zzc.zza(parcel, 5, appContentAnnotationEntity.getId(), false);
        zzc.zza(parcel, 6, appContentAnnotationEntity.zzEr(), false);
        zzc.zza(parcel, 7, appContentAnnotationEntity.zzEm(), false);
        zzc.zzc(parcel, 8, appContentAnnotationEntity.zzEn());
        zzc.zzc(parcel, 9, appContentAnnotationEntity.zzEq());
        zzc.zza(parcel, 10, appContentAnnotationEntity.zzEp(), false);
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfC */
    public AppContentAnnotationEntity createFromParcel(Parcel parcel) {
        int i = 0;
        Bundle bundle = null;
        int zzaY = zzb.zzaY(parcel);
        int i2 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        Uri uri = null;
        String str5 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    str5 = zzb.zzq(parcel, zzaX);
                    break;
                case 2:
                    uri = (Uri) zzb.zza(parcel, zzaX, Uri.CREATOR);
                    break;
                case 3:
                    str4 = zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
                case 5:
                    str3 = zzb.zzq(parcel, zzaX);
                    break;
                case 6:
                    str2 = zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                case 8:
                    i2 = zzb.zzg(parcel, zzaX);
                    break;
                case 9:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 10:
                    bundle = zzb.zzs(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new AppContentAnnotationEntity(str5, uri, str4, str3, str2, str, i2, i, bundle);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zziq */
    public AppContentAnnotationEntity[] newArray(int i) {
        return new AppContentAnnotationEntity[i];
    }
}
