package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.Field;
import java.util.ArrayList;
/* loaded from: classes2.dex */
public class zzm implements Parcelable.Creator<DataTypeCreateRequest> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(DataTypeCreateRequest dataTypeCreateRequest, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, dataTypeCreateRequest.getName(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 2, dataTypeCreateRequest.getFields(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 3, dataTypeCreateRequest.getCallbackBinder(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, dataTypeCreateRequest.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzez */
    public DataTypeCreateRequest createFromParcel(Parcel parcel) {
        IBinder iBinder = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        ArrayList arrayList = null;
        String str = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    str = com.google.android.gms.common.internal.safeparcel.zzb.zzq(parcel, zzaX);
                    break;
                case 2:
                    arrayList = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX, Field.CREATOR);
                    break;
                case 3:
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
        return new DataTypeCreateRequest(i, str, arrayList, iBinder);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhm */
    public DataTypeCreateRequest[] newArray(int i) {
        return new DataTypeCreateRequest[i];
    }
}
