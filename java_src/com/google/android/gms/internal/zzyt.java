package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzyt implements Parcelable.Creator<zzys> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzys zzysVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzysVar.getVolume());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzysVar.zzuK());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, zzysVar.getActiveInputState());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, (Parcelable) zzysVar.getApplicationMetadata(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 6, zzysVar.getStandbyState());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzaG */
    public zzys createFromParcel(Parcel parcel) {
        int i = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        double d = 0.0d;
        ApplicationMetadata applicationMetadata = null;
        int i2 = 0;
        boolean z = false;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    d = com.google.android.gms.common.internal.safeparcel.zzb.zzn(parcel, zzaX);
                    break;
                case 3:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 4:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 5:
                    applicationMetadata = (ApplicationMetadata) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, ApplicationMetadata.CREATOR);
                    break;
                case 6:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzys(d, z, i2, applicationMetadata, i);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzco */
    public zzys[] newArray(int i) {
        return new zzys[i];
    }
}
