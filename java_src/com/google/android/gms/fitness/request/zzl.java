package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.DataType;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzl implements Parcelable.Creator<DataSourcesRequest> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(DataSourcesRequest dataSourcesRequest, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1, dataSourcesRequest.getDataTypes(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, dataSourcesRequest.zzCW(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, dataSourcesRequest.zzCX());
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, dataSourcesRequest.getCallbackBinder(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, dataSourcesRequest.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzey */
    public DataSourcesRequest createFromParcel(Parcel parcel) {
        boolean z = false;
        IBinder iBinder = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        ArrayList<Integer> arrayList = null;
        ArrayList arrayList2 = null;
        int i = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    arrayList2 = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, DataType.CREATOR);
                    break;
                case 2:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzD(parcel, zzaX);
                    break;
                case 3:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    break;
                case 4:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
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
        return new DataSourcesRequest(i, arrayList2, arrayList, z, iBinder);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhl */
    public DataSourcesRequest[] newArray(int i) {
        return new DataSourcesRequest[i];
    }
}
