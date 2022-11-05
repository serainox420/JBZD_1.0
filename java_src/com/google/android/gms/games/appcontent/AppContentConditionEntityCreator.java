package com.google.android.gms.games.appcontent;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
/* loaded from: classes2.dex */
public class AppContentConditionEntityCreator implements Parcelable.Creator<AppContentConditionEntity> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(AppContentConditionEntity appContentConditionEntity, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, appContentConditionEntity.zzEy(), false);
        zzc.zza(parcel, 2, appContentConditionEntity.zzEz(), false);
        zzc.zza(parcel, 3, appContentConditionEntity.zzEA(), false);
        zzc.zza(parcel, 4, appContentConditionEntity.zzEB(), false);
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfE */
    public AppContentConditionEntity createFromParcel(Parcel parcel) {
        Bundle bundle = null;
        int zzaY = zzb.zzaY(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    str3 = zzb.zzq(parcel, zzaX);
                    break;
                case 2:
                    str2 = zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                case 4:
                    bundle = zzb.zzs(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new AppContentConditionEntity(str3, str2, str, bundle);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzis */
    public AppContentConditionEntity[] newArray(int i) {
        return new AppContentConditionEntity[i];
    }
}
