package com.google.android.gms.fitness.data;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzi implements Parcelable.Creator<DataSet> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(DataSet dataSet, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) dataSet.getDataSource(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) dataSet.getDataType(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzd(parcel, 3, dataSet.zzCg(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 4, dataSet.zzCh(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 5, dataSet.zzBX());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, dataSet.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzdW */
    public DataSet createFromParcel(Parcel parcel) {
        boolean z = false;
        ArrayList arrayList = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        ArrayList arrayList2 = new ArrayList();
        DataType dataType = null;
        DataSource dataSource = null;
        int i = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    dataSource = (DataSource) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DataSource.CREATOR);
                    break;
                case 2:
                    dataType = (DataType) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DataType.CREATOR);
                    break;
                case 3:
                    com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, arrayList2, getClass().getClassLoader());
                    break;
                case 4:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, DataSource.CREATOR);
                    break;
                case 5:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
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
        return new DataSet(i, dataSource, dataType, arrayList2, arrayList, z);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzgB */
    public DataSet[] newArray(int i) {
        return new DataSet[i];
    }
}
