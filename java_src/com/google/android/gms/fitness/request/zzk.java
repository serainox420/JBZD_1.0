package com.google.android.gms.fitness.request;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.DataSource;
/* loaded from: classes2.dex */
public class zzk implements Parcelable.Creator<zzj> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzj zzjVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) zzjVar.zzaTi, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzjVar.zzait);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, zzjVar.zzaUc);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzjVar.zzaVL);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 5, zzjVar.zzaVF);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 6, zzjVar.zzaVM);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzjVar.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzex */
    public zzj createFromParcel(Parcel parcel) {
        long j = 0;
        int i = 0;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        DataSource dataSource = null;
        int i2 = 0;
        long j2 = 0;
        long j3 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    dataSource = (DataSource) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DataSource.CREATOR);
                    break;
                case 2:
                    j3 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 3:
                    j2 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 4:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 5:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 6:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 1000:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzj(i3, dataSource, j3, j2, j, i2, i);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhk */
    public zzj[] newArray(int i) {
        return new zzj[i];
    }
}
