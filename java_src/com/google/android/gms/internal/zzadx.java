package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzadx implements Parcelable.Creator<zzadw> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzadw zzadwVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, zzadwVar.getStatusCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable) zzadwVar.zzzM(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzadwVar.getThrottleEndTimeMillis());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, (Parcelable) zzadwVar.zzzN(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzbo */
    public zzadw createFromParcel(Parcel parcel) {
        DataHolder dataHolder = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        long j = 0;
        DataHolder dataHolder2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 2:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    dataHolder2 = (DataHolder) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DataHolder.CREATOR);
                    break;
                case 4:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 5:
                    dataHolder = (DataHolder) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DataHolder.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzadw(i, dataHolder2, j, dataHolder);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdA */
    public zzadw[] newArray(int i) {
        return new zzadw[i];
    }
}
