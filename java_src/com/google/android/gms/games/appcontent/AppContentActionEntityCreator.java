package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class AppContentActionEntityCreator implements Parcelable.Creator<AppContentActionEntity> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(AppContentActionEntity appContentActionEntity, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, appContentActionEntity.zzEi(), false);
        zzc.zza(parcel, 2, appContentActionEntity.zzEj(), false);
        zzc.zza(parcel, 3, appContentActionEntity.getExtras(), false);
        zzc.zza(parcel, 6, appContentActionEntity.getType(), false);
        zzc.zza(parcel, 7, appContentActionEntity.getId(), false);
        zzc.zza(parcel, 8, (Parcelable) appContentActionEntity.zzEh(), i, false);
        zzc.zza(parcel, 9, appContentActionEntity.zzEk(), false);
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfB */
    public AppContentActionEntity createFromParcel(Parcel parcel) {
        String str = null;
        int zzaY = zzb.zzaY(parcel);
        AppContentAnnotationEntity appContentAnnotationEntity = null;
        String str2 = null;
        String str3 = null;
        Bundle bundle = null;
        String str4 = null;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    arrayList = zzb.zzc(parcel, zzaX, AppContentConditionEntity.CREATOR);
                    break;
                case 2:
                    str4 = zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    bundle = zzb.zzs(parcel, zzaX);
                    break;
                case 4:
                case 5:
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
                case 6:
                    str3 = zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    str2 = zzb.zzq(parcel, zzaX);
                    break;
                case 8:
                    appContentAnnotationEntity = (AppContentAnnotationEntity) zzb.zza(parcel, zzaX, AppContentAnnotationEntity.CREATOR);
                    break;
                case 9:
                    str = zzb.zzq(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new AppContentActionEntity(arrayList, str4, bundle, str3, str2, appContentAnnotationEntity, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzip */
    public AppContentActionEntity[] newArray(int i) {
        return new AppContentActionEntity[i];
    }
}
