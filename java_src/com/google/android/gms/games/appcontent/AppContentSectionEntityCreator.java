package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class AppContentSectionEntityCreator implements Parcelable.Creator<AppContentSectionEntity> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(AppContentSectionEntity appContentSectionEntity, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, appContentSectionEntity.getActions(), false);
        zzc.zzc(parcel, 3, appContentSectionEntity.zzED(), false);
        zzc.zza(parcel, 4, appContentSectionEntity.zzEj(), false);
        zzc.zza(parcel, 5, appContentSectionEntity.getExtras(), false);
        zzc.zza(parcel, 6, appContentSectionEntity.zzEv(), false);
        zzc.zza(parcel, 7, appContentSectionEntity.getTitle(), false);
        zzc.zza(parcel, 8, appContentSectionEntity.getType(), false);
        zzc.zza(parcel, 9, appContentSectionEntity.getId(), false);
        zzc.zza(parcel, 10, appContentSectionEntity.zzEE(), false);
        zzc.zzc(parcel, 14, appContentSectionEntity.zzEt(), false);
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfF */
    public AppContentSectionEntity createFromParcel(Parcel parcel) {
        ArrayList arrayList = null;
        int zzaY = zzb.zzaY(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        Bundle bundle = null;
        String str6 = null;
        ArrayList arrayList2 = null;
        ArrayList arrayList3 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    arrayList3 = zzb.zzc(parcel, zzaX, AppContentActionEntity.CREATOR);
                    break;
                case 2:
                case 11:
                case 12:
                case 13:
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
                case 3:
                    arrayList2 = zzb.zzc(parcel, zzaX, AppContentCardEntity.CREATOR);
                    break;
                case 4:
                    str6 = zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    bundle = zzb.zzs(parcel, zzaX);
                    break;
                case 6:
                    str5 = zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    str4 = zzb.zzq(parcel, zzaX);
                    break;
                case 8:
                    str3 = zzb.zzq(parcel, zzaX);
                    break;
                case 9:
                    str2 = zzb.zzq(parcel, zzaX);
                    break;
                case 10:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                case 14:
                    arrayList = zzb.zzc(parcel, zzaX, AppContentAnnotationEntity.CREATOR);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new AppContentSectionEntity(arrayList3, arrayList2, str6, bundle, str5, str4, str3, str2, str, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzit */
    public AppContentSectionEntity[] newArray(int i) {
        return new AppContentSectionEntity[i];
    }
}
