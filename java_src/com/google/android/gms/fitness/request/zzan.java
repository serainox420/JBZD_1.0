package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.DataType;
/* loaded from: classes2.dex */
public class zzan implements Parcelable.Creator<zzam> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzam zzamVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, (Parcelable) zzamVar.getDataType(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, zzamVar.getCallbackBinder(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzamVar.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzeN */
    public zzam createFromParcel(Parcel parcel) {
        DataType dataType;
        int zzg;
        IBinder iBinder;
        IBinder iBinder2 = null;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        int i = 0;
        DataType dataType2 = null;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    DataType dataType3 = (DataType) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DataType.CREATOR);
                    zzg = i;
                    iBinder = iBinder2;
                    dataType = dataType3;
                    break;
                case 2:
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    dataType = dataType2;
                    zzg = i;
                    break;
                case 1000:
                    IBinder iBinder3 = iBinder2;
                    dataType = dataType2;
                    zzg = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    iBinder = iBinder3;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    iBinder = iBinder2;
                    dataType = dataType2;
                    zzg = i;
                    break;
            }
            i = zzg;
            dataType2 = dataType;
            iBinder2 = iBinder;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzam(i, dataType2, iBinder2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhA */
    public zzam[] newArray(int i) {
        return new zzam[i];
    }
}
