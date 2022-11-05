package com.google.android.gms.games.internal.player;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
/* loaded from: classes2.dex */
public class ProfileSettingsEntityCreator implements Parcelable.Creator<ProfileSettingsEntity> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(ProfileSettingsEntity profileSettingsEntity, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zza(parcel, 1, (Parcelable) profileSettingsEntity.getStatus(), i, false);
        zzc.zza(parcel, 2, profileSettingsEntity.zzDQ(), false);
        zzc.zza(parcel, 3, profileSettingsEntity.zzEa());
        zzc.zza(parcel, 4, profileSettingsEntity.zzDT());
        zzc.zza(parcel, 5, profileSettingsEntity.zzDY());
        zzc.zza(parcel, 6, (Parcelable) profileSettingsEntity.zzDZ(), i, false);
        zzc.zza(parcel, 7, profileSettingsEntity.zzEb());
        zzc.zza(parcel, 8, profileSettingsEntity.zzEc());
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfP */
    public ProfileSettingsEntity createFromParcel(Parcel parcel) {
        StockProfileImageEntity stockProfileImageEntity = null;
        boolean z = false;
        int zzaY = zzb.zzaY(parcel);
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        String str = null;
        Status status = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    status = (Status) zzb.zza(parcel, zzaX, Status.CREATOR);
                    break;
                case 2:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    z5 = zzb.zzc(parcel, zzaX);
                    break;
                case 4:
                    z4 = zzb.zzc(parcel, zzaX);
                    break;
                case 5:
                    z3 = zzb.zzc(parcel, zzaX);
                    break;
                case 6:
                    stockProfileImageEntity = (StockProfileImageEntity) zzb.zza(parcel, zzaX, StockProfileImageEntity.CREATOR);
                    break;
                case 7:
                    z2 = zzb.zzc(parcel, zzaX);
                    break;
                case 8:
                    z = zzb.zzc(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new ProfileSettingsEntity(status, str, z5, z4, z3, stockProfileImageEntity, z2, z);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zziW */
    public ProfileSettingsEntity[] newArray(int i) {
        return new ProfileSettingsEntity[i];
    }
}
