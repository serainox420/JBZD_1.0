package com.google.android.gms.fitness.result;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.DataSource;
import com.google.android.gms.fitness.data.DataType;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzc implements Parcelable.Creator<DataReadResult> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(DataReadResult dataReadResult, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzd(parcel, 1, dataReadResult.zzDs(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) dataReadResult.getStatus(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzd(parcel, 3, dataReadResult.zzDr(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 5, dataReadResult.zzDq());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 6, dataReadResult.zzCh(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 7, dataReadResult.zzDt(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, dataReadResult.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzfh */
    public DataReadResult createFromParcel(Parcel parcel) {
        int i = 0;
        ArrayList arrayList = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = null;
        Status status = null;
        int i2 = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, arrayList2, getClass().getClassLoader());
                    break;
                case 2:
                    status = (Status) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, Status.CREATOR);
                    break;
                case 3:
                    com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, arrayList3, getClass().getClassLoader());
                    break;
                case 5:
                    i = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                case 6:
                    arrayList4 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, DataSource.CREATOR);
                    break;
                case 7:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, DataType.CREATOR);
                    break;
                case 1000:
                    i2 = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    break;
            }
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new DataReadResult(i2, arrayList2, status, arrayList3, i, arrayList4, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhU */
    public DataReadResult[] newArray(int i) {
        return new DataReadResult[i];
    }
}
