package com.google.android.gms.games.appcontent;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
/* loaded from: classes2.dex */
public class AppContentTupleEntityCreator implements Parcelable.Creator<AppContentTupleEntity> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(AppContentTupleEntity appContentTupleEntity, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, appContentTupleEntity.getName(), false);
        zzc.zza(parcel, 2, appContentTupleEntity.getValue(), false);
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfG */
    public AppContentTupleEntity createFromParcel(Parcel parcel) {
        String str = null;
        int zzaY = zzb.zzaY(parcel);
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
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new AppContentTupleEntity(str2, str);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zziu */
    public AppContentTupleEntity[] newArray(int i) {
        return new AppContentTupleEntity[i];
    }
}
