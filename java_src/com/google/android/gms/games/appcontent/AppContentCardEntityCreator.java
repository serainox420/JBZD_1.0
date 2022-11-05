package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class AppContentCardEntityCreator implements Parcelable.Creator<AppContentCardEntity> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(AppContentCardEntity appContentCardEntity, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, appContentCardEntity.getActions(), false);
        zzc.zzc(parcel, 2, appContentCardEntity.zzEt(), false);
        zzc.zzc(parcel, 3, appContentCardEntity.zzEi(), false);
        zzc.zza(parcel, 4, appContentCardEntity.zzEj(), false);
        zzc.zzc(parcel, 5, appContentCardEntity.zzEu());
        zzc.zza(parcel, 6, appContentCardEntity.getDescription(), false);
        zzc.zza(parcel, 7, appContentCardEntity.getExtras(), false);
        zzc.zza(parcel, 10, appContentCardEntity.zzEv(), false);
        zzc.zza(parcel, 11, appContentCardEntity.getTitle(), false);
        zzc.zzc(parcel, 12, appContentCardEntity.zzEw());
        zzc.zza(parcel, 13, appContentCardEntity.getType(), false);
        zzc.zza(parcel, 14, appContentCardEntity.getId(), false);
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfD */
    public AppContentCardEntity createFromParcel(Parcel parcel) {
        int zzaY = zzb.zzaY(parcel);
        ArrayList arrayList = null;
        ArrayList arrayList2 = null;
        ArrayList arrayList3 = null;
        String str = null;
        int i = 0;
        String str2 = null;
        Bundle bundle = null;
        String str3 = null;
        String str4 = null;
        int i2 = 0;
        String str5 = null;
        String str6 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    arrayList = zzb.zzc(parcel, zzaX, AppContentActionEntity.CREATOR);
                    break;
                case 2:
                    arrayList2 = zzb.zzc(parcel, zzaX, AppContentAnnotationEntity.CREATOR);
                    break;
                case 3:
                    arrayList3 = zzb.zzc(parcel, zzaX, AppContentConditionEntity.CREATOR);
                    break;
                case 4:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                case 5:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                case 6:
                    str2 = zzb.zzq(parcel, zzaX);
                    break;
                case 7:
                    bundle = zzb.zzs(parcel, zzaX);
                    break;
                case 8:
                case 9:
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
                case 10:
                    str3 = zzb.zzq(parcel, zzaX);
                    break;
                case 11:
                    str4 = zzb.zzq(parcel, zzaX);
                    break;
                case 12:
                    i2 = zzb.zzg(parcel, zzaX);
                    break;
                case 13:
                    str5 = zzb.zzq(parcel, zzaX);
                    break;
                case 14:
                    str6 = zzb.zzq(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new AppContentCardEntity(arrayList, arrayList2, arrayList3, str, i, str2, bundle, str3, str4, i2, str5, str6);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzir */
    public AppContentCardEntity[] newArray(int i) {
        return new AppContentCardEntity[i];
    }
}
