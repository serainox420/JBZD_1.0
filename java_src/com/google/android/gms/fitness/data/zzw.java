package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
/* loaded from: classes2.dex */
public class zzw implements Parcelable.Creator<RawDataPoint> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(RawDataPoint rawDataPoint, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, rawDataPoint.zzaUb);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, rawDataPoint.zzaUc);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, (Parcelable[]) rawDataPoint.zzaUd, i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, rawDataPoint.zzaUe);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 5, rawDataPoint.zzaUf);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 6, rawDataPoint.zzaUg);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 7, rawDataPoint.zzaUh);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, rawDataPoint.versionCode);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzei */
    public RawDataPoint createFromParcel(Parcel parcel) {
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        long j = 0;
        long j2 = 0;
        Value[] valueArr = null;
        int i2 = 0;
        int i3 = 0;
        long j3 = 0;
        long j4 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    j = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 2:
                    j2 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 3:
                    valueArr = (Value[]) com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX, Value.CREATOR);
                    break;
                case 4:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 5:
                    i3 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 6:
                    j3 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 7:
                    j4 = com.google.android.gms.common.internal.safeparcel.zzb.zzi(parcel, zzaX);
                    break;
                case 1000:
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
        return new RawDataPoint(i, j, j2, valueArr, i2, i3, j3, j4);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgS */
    public RawDataPoint[] newArray(int i) {
        return new RawDataPoint[i];
    }
}
