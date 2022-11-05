package com.google.android.gms.common.server;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.common.internal.safeparcel.zzc;
/* loaded from: classes2.dex */
public class zza implements Parcelable.Creator<FavaDiagnosticsEntity> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(FavaDiagnosticsEntity favaDiagnosticsEntity, Parcel parcel, int i) {
        int zzaZ = zzc.zzaZ(parcel);
        zzc.zzc(parcel, 1, favaDiagnosticsEntity.zzaiI);
        zzc.zza(parcel, 2, favaDiagnosticsEntity.zzaGP, false);
        zzc.zzc(parcel, 3, favaDiagnosticsEntity.zzaGQ);
        zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzba */
    public FavaDiagnosticsEntity createFromParcel(Parcel parcel) {
        int i = 0;
        int zzaY = zzb.zzaY(parcel);
        String str = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = zzb.zzaX(parcel);
            switch (zzb.zzdc(zzaX)) {
                case 1:
                    i2 = zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    str = zzb.zzq(parcel, zzaX);
                    break;
                case 3:
                    i = zzb.zzg(parcel, zzaX);
                    break;
                default:
                    zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new FavaDiagnosticsEntity(i2, str, i);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzde */
    public FavaDiagnosticsEntity[] newArray(int i) {
        return new FavaDiagnosticsEntity[i];
    }
}
