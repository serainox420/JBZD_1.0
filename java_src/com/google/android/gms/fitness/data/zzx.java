package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzx implements Parcelable.Creator<RawDataSet> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(RawDataSet rawDataSet, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, rawDataSet.zzaUe);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, rawDataSet.zzaUi);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 3, rawDataSet.zzaUj, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, rawDataSet.zzaSx);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, rawDataSet.zzaiI);
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzej */
    public RawDataSet createFromParcel(Parcel parcel) {
        boolean z = false;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        ArrayList arrayList = null;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 2:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 3:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, RawDataPoint.CREATOR);
                    break;
                case 4:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
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
        return new RawDataSet(i3, i2, i, arrayList, z);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgT */
    public RawDataSet[] newArray(int i) {
        return new RawDataSet[i];
    }
}
