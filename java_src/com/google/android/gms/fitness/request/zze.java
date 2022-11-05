package com.google.android.gms.fitness.request;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.fitness.data.DataType;
/* loaded from: classes2.dex */
public class zze implements Parcelable.Creator<zzd> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void zza(zzd zzdVar, Parcel parcel, int i) {
        int zzaZ = com.google.android.gms.common.internal.safeparcel.zzc.zzaZ(parcel);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 1, zzdVar.getCallbackBinder(), false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 2, (Parcelable) zzdVar.getDataType(), i, false);
        com.google.android.gms.common.internal.safeparcel.zzc.zza(parcel, 4, zzdVar.zzCN());
        com.google.android.gms.common.internal.safeparcel.zzc.zzc(parcel, 1000, zzdVar.getVersionCode());
        com.google.android.gms.common.internal.safeparcel.zzc.zzJ(parcel, zzaZ);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzet */
    public zzd createFromParcel(Parcel parcel) {
        DataType dataType;
        IBinder iBinder;
        int zzg;
        boolean z;
        DataType dataType2 = null;
        boolean z2 = false;
        int zzaY = com.google.android.gms.common.internal.safeparcel.zzb.zzaY(parcel);
        IBinder iBinder2 = null;
        int i = 0;
        while (parcel.dataPosition() < zzaY) {
            int zzaX = com.google.android.gms.common.internal.safeparcel.zzb.zzaX(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.zzb.zzdc(zzaX)) {
                case 1:
                    zzg = i;
                    DataType dataType3 = dataType2;
                    iBinder = com.google.android.gms.common.internal.safeparcel.zzb.zzr(parcel, zzaX);
                    z = z2;
                    dataType = dataType3;
                    break;
                case 2:
                    iBinder = iBinder2;
                    zzg = i;
                    boolean z3 = z2;
                    dataType = (DataType) com.google.android.gms.common.internal.safeparcel.zzb.zza(parcel, zzaX, DataType.CREATOR);
                    z = z3;
                    break;
                case 4:
                    z = com.google.android.gms.common.internal.safeparcel.zzb.zzc(parcel, zzaX);
                    dataType = dataType2;
                    iBinder = iBinder2;
                    zzg = i;
                    break;
                case 1000:
                    boolean z4 = z2;
                    dataType = dataType2;
                    iBinder = iBinder2;
                    zzg = com.google.android.gms.common.internal.safeparcel.zzb.zzg(parcel, zzaX);
                    z = z4;
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.zzb.zzb(parcel, zzaX);
                    z = z2;
                    dataType = dataType2;
                    iBinder = iBinder2;
                    zzg = i;
                    break;
            }
            i = zzg;
            iBinder2 = iBinder;
            dataType2 = dataType;
            z2 = z;
        }
        if (parcel.dataPosition() != zzaY) {
            throw new zzb.zza(new StringBuilder(37).append("Overread allowed size end=").append(zzaY).toString(), parcel);
        }
        return new zzd(i, iBinder2, dataType2, z2);
    }

    @Override // android.os.Parcelable.Creator
    /* renamed from: zzhg */
    public zzd[] newArray(int i) {
        return new zzd[i];
    }
}
